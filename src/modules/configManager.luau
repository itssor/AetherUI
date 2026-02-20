--// Config Manager Module
-- Handles automatic saving and loading of user preferences

local configManager = {
	config = {},
	storagePrefix = "CascadeConfig_",
	autoSave = true,
	saveDebounce = nil,
	saveDebounceTime = 1.0,
}

configManager.init = function(configName)
	configManager.configName = configName or "default"
	configManager.storageKey = configManager.storagePrefix .. configManager.configName
	configManager.load()
	return configManager
end

configManager.load = function()
	local success, result = pcall(function()
		if not isfile then
			return nil
		end
		if not isfile(configManager.storageKey) then
			return nil
		end
		local data = readfile(configManager.storageKey)
		return game:GetService("HttpService"):JSONDecode(data)
	end)
	
	if success and result then
		configManager.config = result
		print("[Cascade] Configuration loaded:", configManager.configName)
	else
		configManager.config = {}
		print("[Cascade] No configuration found, using defaults:", configManager.configName)
	end
	
	return configManager.config
end

configManager.save = function()
	local success, result = pcall(function()
		if not isfile or not writefile then
			return false
		end
		local json = game:GetService("HttpService"):JSONEncode(configManager.config)
		writefile(configManager.storageKey, json)
		return true
	end)
	
	if success then
		print("[Cascade] Configuration saved:", configManager.configName)
	else
		warn("[Cascade] Failed to save configuration:", result)
	end
	
	return success
end

configManager.saveDebounced = function()
	if not configManager.autoSave then
		return
	end
	
	if configManager.saveDebounce then
		task.cancel(configManager.saveDebounce)
	end
	
	configManager.saveDebounce = task.delay(configManager.saveDebounceTime, function()
		configManager.save()
	end)
end

configManager.get = function(key, default)
	return configManager.config[key] ~= nil and configManager.config[key] or default
end

configManager.set = function(key, value, autoSave)
	configManager.config[key] = value
	
	if autoSave ~= false then
		configManager.saveDebounced()
	end
end

configManager.getAll = function()
	return configManager.config
end

configManager.setMultiple = function(values)
	for key, value in pairs(values) do
		configManager.config[key] = value
	end
	configManager.saveDebounced()
end

configManager.delete = function(key)
	configManager.config[key] = nil
	configManager.saveDebounced()
end

configManager.clear = function()
	configManager.config = {}
	configManager.save()
end

configManager.setAutoSave = function(enabled)
	configManager.autoSave = enabled
end

configManager.forceSave = function()
	if configManager.saveDebounce then
		task.cancel(configManager.saveDebounce)
		configManager.saveDebounce = nil
	end
	configManager.save()
end

configManager.watch = function(key, callback)
	local proxy = {}
	
	local mt = {
		__index = function(_, k)
			return configManager.config[key][k]
		end,
		__newindex = function(_, k, v)
			configManager.config[key][k] = v
			callback(configManager.config[key])
			configManager.saveDebounced()
		end
	}
	
	return setmetatable(proxy, mt)
end

configManager.bindValue = function(key, default)
	if configManager.config[key] == nil then
		configManager.config[key] = default
	end
	
	local valueObj = {
		Value = configManager.config[key],
		Connect = function(self, callback)
			self._callback = callback
			return {
				Disconnect = function()
					self._callback = nil
				end
			}
		end,
		_set = function(self, newValue)
			if self.Value ~= newValue then
				self.Value = newValue
				configManager.config[key] = newValue
				
				if self._callback then
					self._callback(newValue)
				end
				
				configManager.saveDebounced()
			end
		end
	}
	
	setmetatable(valueObj, {
		__newindex = function(_, k, v)
			if k == "Value" then
				valueObj:_set(v)
			else
				rawset(valueObj, k, v)
			end
		end,
		__index = function(_, k)
			return rawget(valueObj, k)
		end
	})
	
	return valueObj
end

return configManager
