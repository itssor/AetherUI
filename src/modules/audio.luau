--// Audio Module
-- Provides sound hooks for UI interactions
-- Developers must provide their own SoundIds

local audio = {
	-- Sound registry
	sounds = {
		ButtonClick = nil,
		ButtonHover = nil,
		Notification = nil,
		NotificationDismiss = nil,
		SwitchToggle = nil,
		SliderChange = nil,
	},
	
	-- Sound instances pool for performance
	instancePool = {},
	
	-- Whether audio is enabled
	enabled = true,
}

-- Initialize audio module
audio.init = function()
	-- Pre-create sound instances for common sounds
	local soundService = game:GetService("SoundService")
	
	-- You can customize default sounds here if needed
	-- Leave nil to use developer-provided sounds via audio:Register()
end

-- Register a sound for a specific event
-- @param eventName string - The sound event (ButtonClick, ButtonHover, Notification, etc.)
-- @param soundId string - The Roblox asset ID (e.g., "rbxassetid://123456789")
audio.Register = function(eventName, soundId)
	if audio.sounds[eventName] ~= nil then
		audio.sounds[eventName] = soundId
	end
end

-- Unregister a sound
audio.Unregister = function(eventName)
	if audio.sounds[eventName] ~= nil then
		audio.sounds[eventName] = nil
	end
end

-- Enable or disable audio
audio.SetEnabled = function(enabled)
	audio.enabled = enabled
end

-- Check if audio is enabled
audio.IsEnabled = function()
	return audio.enabled
end

-- Play a registered sound
-- @param eventName string - The sound event to play
-- @param volume number? - Optional volume override (0-1)
audio.Play = function(eventName, volume)
	if not audio.enabled then
		return
	end
	
	local soundId = audio.sounds[eventName]
	if not soundId or soundId == "" then
		return
	end
	
	-- Get SoundService
	local soundService = game:GetService("SoundService")
	
	-- Create or reuse a sound instance
	local sound
	
	-- Try to get from pool first
	if audio.instancePool[eventName] then
		sound = audio.instancePool[eventName]
	else
		sound = Instance.new("Sound")
		sound.Name = "CascadeAudio_" .. eventName
		sound.SoundId = soundId
		sound.Parent = soundService
		audio.instancePool[eventName] = sound
	end
	
	-- Configure and play
	if volume then
		sound.Volume = volume
	else
		sound.Volume = 0.5 -- Default volume
	end
	
	-- Reset and play
	if sound.IsPlaying then
		sound:Stop()
	end
	
	sound.TimePosition = 0
	sound:Play()
end

-- Play a sound by ID directly (one-shot)
-- @param soundId string - The Roblox asset ID
-- @param volume number? - Optional volume (0-1)
audio.PlayOneShot = function(soundId, volume)
	if not audio.enabled or not soundId or soundId == "" then
		return
	end
	
	local soundService = game:GetService("SoundService")
	
	local sound = Instance.new("Sound")
	sound.Name = "CascadeAudio_OneShot"
	sound.SoundId = soundId
	sound.Volume = volume or 0.5
	sound.Parent = soundService
	
	sound.Ended:Once(function()
		task.delay(0.1, function()
			if sound and sound.Parent then
				sound:Destroy()
			end
		end)
	end)
	
	sound:Play()
end

-- Get a registered sound ID
audio.GetSound = function(eventName)
	return audio.sounds[eventName]
end

-- Get all registered sounds
audio.GetAllSounds = function()
	return audio.sounds
end

-- Preload sounds (call this during initialization for faster first-play)
audio.Preload = function()
	local soundService = game:GetService("SoundService")
	
	for eventName, soundId in pairs(audio.sounds) do
		if soundId and soundId ~= "" then
			if not audio.instancePool[eventName] then
				local sound = Instance.new("Sound")
				sound.Name = "CascadeAudio_" .. eventName
				sound.SoundId = soundId
				sound.Parent = soundService
				audio.instancePool[eventName] = sound
			end
			
			-- Preload the sound
			local success, err = pcall(function()
				audio.instancePool[eventName]:Preload()
			end)
		end
	end
end

-- Clean up audio instances
audio.Cleanup = function()
	for _, sound in pairs(audio.instancePool) do
		if sound and sound.Parent then
			sound:Stop()
			sound:Destroy()
		end
	end
	audio.instancePool = {}
end

return audio
