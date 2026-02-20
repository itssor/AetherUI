--// Themes Engine Module
-- Provides structured theme management with easy color palette swapping

local creator = require("@modules/creator")
local value = creator.Value

local themes = {
	-- Currently active theme
	currentTheme = nil,
	
	-- Available built-in themes
	themes = {},
	
	-- Custom theme presets
	presets = {},
}

-- Built-in themes
local builtInThemes = {
	-- Default macOS-style themes
	Light = require("@themes/Light"),
	Dark = require("@themes/Dark"),
	
	-- Custom accent color variants (will be generated)
	LightBlue = nil,
	LightPurple = nil,
	LightPink = nil,
	LightGreen = nil,
	LightOrange = nil,
	
	DarkBlue = nil,
	DarkPurple = nil,
	DarkPink = nil,
	DarkGreen = nil,
	DarkOrange = nil,
}

-- Function to create accent variants
local function createAccentVariant(baseTheme, accentColor, name)
	local variant = {}
	
	-- Deep copy the base theme
	local function deepCopy(original)
		local copy = {}
		for key, value in pairs(original) do
			if typeof(value) == "table" then
				-- Check if it's a reactive value object (has Value field)
				if value.Value ~= nil then
					copy[key] = value
				else
					copy[key] = deepCopy(value)
				end
			else
				copy[key] = value
			end
		end
		return copy
	end
	
	variant = deepCopy(baseTheme)
	
	-- Convert hex to Color3
	local accent3 = Color3.fromHex(accentColor)
	
	-- Override accent colors - must use value() for reactivity
	if variant.Accents and variant.Accents.Red then
		variant.Accents.Red = {
			value(accent3),
			value(1)
		}
	end
	
	-- Update Button fill to use accent
	if variant.Controls and variant.Controls.Button and variant.Controls.Button.FillPrimary then
		variant.Controls.Button.FillPrimary = value(ColorSequence.new({
			ColorSequenceKeypoint.new(0, accent3),
			ColorSequenceKeypoint.new(1, accent3 * Color3.new(0.8, 0.8, 1)),
		}))
	end
	
	-- Update Selection colors
	if variant.Text then
		variant.Text.SelectionPrimary = {
			value(accent3),
			value(1)
		}
		variant.Text.SelectionFocused = {
			value(accent3),
			value(1)
		}
	end
	
	if variant.Controls and variant.Controls.Selection then
		variant.Controls.Selection = {
			value(accent3),
			value(1)
		}
	end
	
	if variant.Controls and variant.Controls.SwitchAccent then
		variant.Controls.SwitchAccent = {
			value(accent3),
			value(1)
		}
	end
	
	return variant
end

-- Generate accent variants for both light and dark
builtInThemes.LightBlue = createAccentVariant(builtInThemes.Light, "007AFF", "LightBlue")
builtInThemes.LightPurple = createAccentVariant(builtInThemes.Light, "AF52DE", "LightPurple")
builtInThemes.LightPink = createAccentVariant(builtInThemes.Light, "FF2D55", "LightPink")
builtInThemes.LightGreen = createAccentVariant(builtInThemes.Light, "34C759", "LightGreen")
builtInThemes.LightOrange = createAccentVariant(builtInThemes.Light, "FF9500", "LightOrange")

builtInThemes.DarkBlue = createAccentVariant(builtInThemes.Dark, "0A84FF", "DarkBlue")
builtInThemes.DarkPurple = createAccentVariant(builtInThemes.Dark, "BF5AF2", "DarkPurple")
builtInThemes.DarkPink = createAccentVariant(builtInThemes.Dark, "FF375F", "DarkPink")
builtInThemes.DarkGreen = createAccentVariant(builtInThemes.Dark, "30D158", "DarkGreen")
builtInThemes.DarkOrange = createAccentVariant(builtInThemes.Dark, "FF9F0A", "DarkOrange")

-- Initialize themes engine
themes.init = function()
	themes.themes = builtInThemes
	return themes
end

-- Get a theme by name
themes.get = function(name)
	return themes.themes[name]
end

-- Get all available theme names
themes.getAllNames = function()
	local names = {}
	for name, _ in pairs(themes.themes) do
		table.insert(names, name)
	end
	return names
end

-- Register a custom theme
themes.register = function(name, theme)
	themes.themes[name] = theme
end

-- Create a custom theme with specific colors
-- @param name string - Theme name
-- @param baseTheme string - Base theme to modify ("Light" or "Dark")
-- @param accentColor string - Hex color (e.g., "FF5733")
themes.createAccentTheme = function(name, baseTheme, accentColor)
	local base = themes.themes[baseTheme]
	if not base then
		warn("[Themes] Base theme not found:", baseTheme)
		return nil
	end
	
	local variant = createAccentVariant(base, accentColor, name)
	themes.themes[name] = variant
	return variant
end

-- Create a completely custom theme
-- @param name string - Theme name
-- @param themeData table - Full theme definition
themes.create = function(name, themeData)
	themes.themes[name] = themeData
end

-- Switch theme (returns new theme object)
themes.switch = function(name)
	local theme = themes.themes[name]
	if theme then
		themes.currentTheme = theme
	end
	return theme
end

-- Get current theme
themes.getCurrent = function()
	return themes.currentTheme
end

-- Interpolate between two colors
-- @param color1 Color3
-- @param color2 Color3
-- @param t number (0-1)
themes.lerpColor = function(color1, color2, t)
	return Color3.new(
		color1.R + (color2.R - color1.R) * t,
		color1.G + (color2.G - color1.G) * t,
		color1.B + (color2.B - color1.B) * t
	)
end

-- Create a theme from an image (extract dominant colors)
-- This would require additional image processing, placeholder for now
themes.createFromImage = function(name, imageAsset)
	warn("[Themes] createFromImage is not yet implemented")
	return nil
end

-- Initialize built-in themes
themes.init()

return themes
