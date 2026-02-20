--// Multi-Instance Manager
-- Handles multiple UI windows without Z-index flickering

local instanceManager = {
	-- All active instances
	instances = {},
	
	-- Base Z-index for Cascade windows
	baseZIndex = 200,
	
	-- Z-index increment
	zIncrement = 1,
	
	-- Currently focused instance
	focusedInstance = nil,
}

-- Register a new instance
-- @param instanceId string - Unique identifier for this instance
-- @param screenGui ScreenGui - The ScreenGui instance
instanceManager.register = function(instanceId, screenGui)
	instanceManager.instances[instanceId] = {
		screenGui = screenGui,
		zIndex = instanceManager.baseZIndex + (#instanceManager.instances * instanceManager.zIncrement),
		visible = true,
		createdAt = os.time(),
	}
	
	-- Update display order to prevent flickering
	screenGui.DisplayOrder = instanceManager.instances[instanceId].zIndex
	
	return instanceManager.instances[instanceId]
end

-- Unregister an instance
instanceManager.unregister = function(instanceId)
	if instanceManager.instances[instanceId] then
		instanceManager.instances[instanceId] = nil
		instanceManager.recalculateZIndexes()
	end
end

-- Recalculate all Z-indexes to ensure proper stacking
instanceManager.recalculateZIndexes = function()
	local sortedInstances = {}
	
	-- Sort by creation time
	for id, data in pairs(instanceManager.instances) do
		table.insert(sortedInstances, { id = id, data = data })
	end
	
	table.sort(sortedInstances, function(a, b)
		return a.data.createdAt < b.data.createdAt
	end)
	
	-- Reassign Z-indexes
	for i, item in ipairs(sortedInstances) do
		local newZIndex = instanceManager.baseZIndex + ((i - 1) * instanceManager.zIncrement)
		instanceManager.instances[item.id].zIndex = newZIndex
		instanceManager.instances[item.id].screenGui.DisplayOrder = newZIndex
	end
end

-- Bring an instance to front
instanceManager.bringToFront = function(instanceId)
	local instance = instanceManager.instances[instanceId]
	if not instance then return end
	
	-- Update creation time to force sort to top
	instance.createdAt = os.time()
	
	instanceManager.recalculateZIndexes()
	instanceManager.focusedInstance = instanceId
end

-- Send an instance to back
instanceManager.sendToBack = function(instanceId)
	local instance = instanceManager.instances[instanceId]
	if not instance then return end
	
	-- Update creation time to force sort to bottom
	instance.createdAt = 0
	
	instanceManager.recalculateZIndexes()
end

-- Show an instance
instanceManager.show = function(instanceId)
	local instance = instanceManager.instances[instanceId]
	if not instance then return end
	
	instance.visible = true
	instance.screenGui.Enabled = true
end

-- Hide an instance
instanceManager.hide = function(instanceId)
	local instance = instanceManager.instances[instanceId]
	if not instance then return end
	
	instance.visible = false
	instance.screenGui.Enabled = false
end

-- Toggle visibility
instanceManager.toggle = function(instanceId)
	local instance = instanceManager.instances[instanceId]
	if not instance then return end
	
	if instance.visible then
		instanceManager.hide(instanceId)
	else
		instanceManager.show(instanceId)
	end
end

-- Get instance info
instanceManager.get = function(instanceId)
	return instanceManager.instances[instanceId]
end

-- Get all instances
instanceManager.getAll = function()
	return instanceManager.instances
end

-- Get visible instances only
instanceManager.getVisible = function()
	local visible = {}
	for id, data in pairs(instanceManager.instances) do
		if data.visible then
			visible[id] = data
		end
	end
	return visible
end

-- Get count of instances
instanceManager.count = function()
	local count = 0
	for _ in pairs(instanceManager.instances) do
		count = count + 1
	end
	return count
end

-- Set base Z-index (for overriding default)
instanceManager.setBaseZIndex = function(zIndex)
	instanceManager.baseZIndex = zIndex
	instanceManager.recalculateZIndexes()
end

-- Focus management - bring to front and track focus
instanceManager.focus = function(instanceId)
	instanceManager.bringToFront(instanceId)
	instanceManager.focusedInstance = instanceId
end

-- Get currently focused instance
instanceManager.getFocused = function()
	return instanceManager.focusedInstance
end

-- Clear focus from all instances
instanceManager.clearFocus = function()
	instanceManager.focusedInstance = nil
end

-- Cycle through instances (bring next to front)
instanceManager.cycleNext = function()
	local sortedInstances = {}
	
	for id, data in pairs(instanceManager.instances) do
		table.insert(sortedInstances, id)
	end
	
	if #sortedInstances <= 1 then return end
	
	table.sort(sortedInstances)
	
	local currentIndex = instanceManager.focusedInstance and table.find(sortedInstances, instanceManager.focusedInstance) or 0
	local nextIndex = (currentIndex % #sortedInstances) + 1
	
	instanceManager.focus(sortedInstances[nextIndex])
end

-- Cycle through instances (bring previous to front)
instanceManager.cyclePrevious = function()
	local sortedInstances = {}
	
	for id, data in pairs(instanceManager.instances) do
		table.insert(sortedInstances, id)
	end
	
	if #sortedInstances <= 1 then return end
	
	table.sort(sortedInstances)
	
	local currentIndex = instanceManager.focusedInstance and table.find(sortedInstances, instanceManager.focusedInstance) or 1
	local prevIndex = currentIndex - 1
	if prevIndex < 1 then prevIndex = #sortedInstances end
	
	instanceManager.focus(sortedInstances[prevIndex])
end

-- Cleanup - destroy all instances
instanceManager.destroyAll = function()
	for id, data in pairs(instanceManager.instances) do
		if data.screenGui and data.screenGui.Parent then
			data.screenGui:Destroy()
		end
	end
	instanceManager.instances = {}
	instanceManager.focusedInstance = nil
end

-- Cleanup single instance
instanceManager.destroy = function(instanceId)
	local instance = instanceManager.instances[instanceId]
	if instance and instance.screenGui and instance.screenGui.Parent then
		instance.screenGui:Destroy()
	end
	instanceManager.unregister(instanceId)
end

return instanceManager
