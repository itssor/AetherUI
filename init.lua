--[[
    AetherUI - Advanced Roblox UI Library
    macOS Sequoia Glassmorphism Style
    Version 1.0.0
    
    Usage:
        local AetherUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/itssor/AetherUI/main/init.lua"))()
        
        -- Create main window
        local Window = AetherUI:CreateWindow({
            Title = "AetherUI Executor",
            Theme = "SequoiaDark",
            Size = UDim2.new(0, 800, 0, 600),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        })
        
        -- Create tabs
        local ScriptsTab = Window:AddTab("Scripts")
        local SettingsTab = Window:AddTab("Settings")
        
        -- Add components
        ScriptsTab:AddButton({
            Text = "Execute Script",
            Callback = function()
                print("Executing!")
            end
        })
]]

-- Services (lazy loaded)
local Players
local TweenService
local RunService
local TextService
local HttpService
local LocalPlayer
local PlayerGui

-- Initialize services when needed
local function InitServices()
    if not Players then
        Players = game:GetService("Players")
        TweenService = game:GetService("TweenService")
        RunService = game:GetService("RunService")
        TextService = game:GetService("TextService")
        HttpService = game:GetService("HttpService")
        
        -- Wait for local player
        LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
        PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
    end
end

-- AetherUI Main Table
local AetherUI = {
    Version = "1.0.0",
    Theme = {},
    Components = {},
    Signals = {},
    StoredScripts = {},
    Settings = {}
}

-- Default Settings
AetherUI.Settings = {
    Theme = "SequoiaDark",
    Scale = 1,
    ShowTimestamps = true,
    AutoExecute = false,
    Notifications = true,
    SoundEffects = true
}

-- Theme Presets
AetherUI.Themes = {
    SequoiaDark = {
        Name = "Sequoia Dark",
        Background = Color3.fromRGB(28, 28, 30),
        Surface = Color3.fromRGB(44, 44, 46),
        SurfaceGlass = Color3.fromRGB(60, 60, 62),
        Primary = Color3.fromRGB(10, 132, 255),
        Secondary = Color3.fromRGB(48, 209, 88),
        Accent = Color3.fromRGB(255, 159, 10),
        Danger = Color3.fromRGB(255, 55, 95),
        Text = Color3.fromRGB(255, 255, 255),
        TextSecondary = Color3.fromRGB(142, 142, 147),
        TextMuted = Color3.fromRGB(99, 99, 102),
        Border = Color3.fromRGB(72, 72, 74),
        Success = Color3.fromRGB(48, 209, 88),
        Warning = Color3.fromRGB(255, 159, 10),
        Error = Color3.fromRGB(255, 55, 95),
        Info = Color3.fromRGB(10, 132, 255),
        GlassOpacity = 0.15,
        GlassBlur = 0.3,
        CornerRadius = 14,
        Font = "Gotham"
    },
    SequoiaLight = {
        Name = "Sequoia Light",
        Background = Color3.fromRGB(245, 245, 247),
        Surface = Color3.fromRGB(255, 255, 255),
        SurfaceGlass = Color3.fromRGB(255, 255, 255),
        Primary = Color3.fromRGB(0, 122, 255),
        Secondary = Color3.fromRGB(52, 199, 89),
        Accent = Color3.fromRGB(255, 149, 0),
        Danger = Color3.fromRGB(255, 59, 48),
        Text = Color3.fromRGB(0, 0, 0),
        TextSecondary = Color3.fromRGB(115, 115, 115),
        TextMuted = Color3.fromRGB(142, 142, 142),
        Border = Color3.fromRGB(225, 225, 227),
        Success = Color3.fromRGB(52, 199, 89),
        Warning = Color3.fromRGB(255, 149, 0),
        Error = Color3.fromRGB(255, 59, 48),
        Info = Color3.fromRGB(0, 122, 255),
        GlassOpacity = 0.25,
        GlassBlur = 0.4,
        CornerRadius = 14,
        Font = "Gotham"
    },
    Midnight = {
        Name = "Midnight",
        Background = Color3.fromRGB(10, 10, 15),
        Surface = Color3.fromRGB(20, 20, 30),
        SurfaceGlass = Color3.fromRGB(30, 30, 45),
        Primary = Color3.fromRGB(88, 86, 214),
        Secondary = Color3.fromRGB(94, 92, 230),
        Accent = Color3.fromRGB(255, 45, 85),
        Danger = Color3.fromRGB(255, 69, 58),
        Text = Color3.fromRGB(255, 255, 255),
        TextSecondary = Color3.fromRGB(174, 174, 178),
        TextMuted = Color3.fromRGB(124, 124, 128),
        Border = Color3.fromRGB(50, 50, 70),
        Success = Color3.fromRGB(48, 209, 88),
        Warning = Color3.fromRGB(255, 159, 10),
        Error = Color3.fromRGB(255, 69, 58),
        Info = Color3.fromRGB(10, 132, 255),
        GlassOpacity = 0.2,
        GlassBlur = 0.35,
        CornerRadius = 16,
        Font = "Gotham"
    },
    Ocean = {
        Name = "Ocean",
        Background = Color3.fromRGB(0, 20, 40),
        Surface = Color3.fromRGB(0, 40, 70),
        SurfaceGlass = Color3.fromRGB(0, 60, 100),
        Primary = Color3.fromRGB(0, 200, 255),
        Secondary = Color3.fromRGB(0, 150, 220),
        Accent = Color3.fromRGB(255, 200, 0),
        Danger = Color3.fromRGB(255, 80, 80),
        Text = Color3.fromRGB(255, 255, 255),
        TextSecondary = Color3.fromRGB(150, 200, 230),
        TextMuted = Color3.fromRGB(100, 150, 180),
        Border = Color3.fromRGB(0, 100, 150),
        Success = Color3.fromRGB(0, 255, 150),
        Warning = Color3.fromRGB(255, 200, 0),
        Error = Color3.fromRGB(255, 80, 80),
        Info = Color3.fromRGB(0, 200, 255),
        GlassOpacity = 0.25,
        GlassBlur = 0.4,
        CornerRadius = 12,
        Font = "Gotham"
    }
}

-- Current Theme
AetherUI.Theme = AetherUI.Themes.SequoiaDark

-- Signal Class (Event System)
local Signal = {}
Signal.__index = Signal

function Signal.new()
    local self = setmetatable({}, Signal)
    self.Connections = {}
    self.Yielded = false
    return self
end

function Signal:Connect(callback)
    local connection = {
        Callback = callback,
        Connected = true
    }
    table.insert(self.Connections, connection)
    return connection
end

function Signal:Fire(...)
    for _, conn in ipairs(self.Connections) do
        if conn.Connected then
            task.spawn(conn.Callback, ...)
        end
    end
end

function Signal:Disconnect()
    for _, conn in ipairs(self.Connections) do
        conn.Connected = false
    end
    self.Connections = {}
end

AetherUI.Signal = Signal

-- Logger
local Logger = {
    Logs = {},
    MaxLogs = 500
}

function Logger:Log(message, type)
    local log = {
        Message = message,
        Type = type or "Info",
        Timestamp = os.date("%H:%M:%S")
    }
    table.insert(self.Logs, log)
    if #self.Logs > self.MaxLogs then
        table.remove(self.Logs, 1)
    end
    return log
end

function Logger:Clear()
    self.Logs = {}
end

AetherUI.Logger = Logger

-- Utility Functions
local function CreateInstance(className, properties)
    local instance = Instance.new(className)
    for property, value in pairs(properties) do
        if property ~= "Parent" then
            instance[property] = value
        end
    end
    if properties.Parent then
        instance.Parent = properties.Parent
    end
    return instance
end

local function DeepCopy(original)
    local copy = {}
    for key, value in pairs(original) do
        if type(value) == "table" then
            copy[key] = DeepCopy(value)
        else
            copy[key] = value
        end
    end
    return copy
end

local function LerpColor(color1, color2, alpha)
    return Color3.new(
        color1.R + (color2.R - color1.R) * alpha,
        color1.G + (color2.G - color1.G) * alpha,
        color1.B + (color2.B - color1.B) * alpha
    )
end

AetherUI.CreateInstance = CreateInstance
AetherUI.DeepCopy = DeepCopy
AetherUI.LerpColor = LerpColor

-- Tween Functions
local function Tween(object, properties, duration, easingStyle, easingDirection)
    local tweenInfo = TweenInfo.new(
        duration or 0.3,
        easingStyle or Enum.EasingStyle.Quad,
        easingDirection or Enum.EasingDirection.Out
    )
    local tween = TweenService:Create(object, tweenInfo, properties)
    tween:Play()
    return tween
end

AetherUI.Tween = Tween

-- Spring Animation
local function Spring(object, property, target, speed, damping)
    local current = object[property]
    local velocity = 0
    
    task.spawn(function()
        while true do
            local displacement = target - current
            velocity = velocity + displacement * speed
            velocity = velocity * (1 - damping)
            current = current + velocity
            object[property] = current
            task.wait()
        end
    end)
end

AetherUI.Spring = Spring

-- ScreenGui Creation
local function CreateScreenGui(name)
    local screenGui = PlayerGui:FindFirstChild(name)
    if screenGui then
        screenGui:Destroy()
    end
    
    screenGui = CreateInstance("ScreenGui", {
        Name = name,
        DisplayOrder = 999999,
        IgnoreGuiInset = true,
        ResetOnSpawn = false,
        Parent = PlayerGui
    })
    
    return screenGui
end

AetherUI.CreateScreenGui = CreateScreenGui

-- Apply Theme
function AetherUI:SetTheme(themeName)
    if self.Themes[themeName] then
        self.Theme = self.Themes[themeName]
        self.Settings.Theme = themeName
    end
end

-- Add Custom Theme
function AetherUI:AddTheme(name, themeData)
    self.Themes[name] = themeData
end

-- Load saved settings
function AetherUI:LoadSettings()
    -- Load from datastore if available
end

-- Save settings
function AetherUI:SaveSettings()
    -- Save to datastore
end

-- Create Main Window
function AetherUI:CreateWindow(options)
    -- Initialize services first
    InitServices()
    
    options = options or {}
    local Window = {
        Tabs = {},
        Components = {},
        IsOpen = true,
        Dragging = false
    }
    
    -- Default options
    options.Title = options.Title or "AetherUI"
    options.Size = options.Size or UDim2.new(0, 800, 0, 600)
    options.Position = options.Position or UDim2.new(0.5, 0, 0.5, 0)
    options.Resizable = options.Resizable ~= false
    options.MinSize = options.MinSize or UDim2.new(0, 400, 0, 300)
    options.Theme = options.Theme or self.Settings.Theme
    
    -- Apply theme
    if options.Theme then
        self:SetTheme(options.Theme)
    end
    
    local theme = self.Theme
    
    -- Create ScreenGui
    local screenGui = CreateScreenGui("AetherUI")
    Window.Gui = screenGui
    
    -- Main Container
    local mainFrame = CreateInstance("Frame", {
        Name = "MainWindow",
        Size = options.Size,
        Position = options.Position,
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = screenGui
    })
    
    -- Corner radius
    local mainCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = mainFrame
    })
    
    -- Glass effect overlay
    local glassOverlay = CreateInstance("Frame", {
        Name = "GlassOverlay",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundColor3 = theme.SurfaceGlass,
        BackgroundTransparency = 1 - theme.GlassOpacity,
        BorderSizePixel = 0,
        Parent = mainFrame
    })
    
    local glassCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = glassOverlay
    })
    
    -- Title Bar
    local titleBar = CreateInstance("Frame", {
        Name = "TitleBar",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = mainFrame
    })
    
    local titleBarCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = titleBar
    })
    
    -- Title Text
    local titleText = CreateInstance("TextLabel", {
        Name = "TitleText",
        Size = UDim2.new(1, -20, 1, 0),
        Position = UDim2.new(0, 15, 0, 0),
        BackgroundTransparency = 1,
        Text = options.Title,
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        Parent = titleBar
    })
    
    -- Close Button
    local closeBtn = CreateInstance("ImageButton", {
        Name = "CloseButton",
        Size = UDim2.new(0, 12, 0, 12),
        Position = UDim2.new(1, -25, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Image = "rbxassetid://11708027294",
        BackgroundColor3 = theme.Danger,
        Parent = titleBar
    })
    
    local closeBtnCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(1, 0),
        Parent = closeBtn
    })
    
    closeBtn.MouseButton1Click:Connect(function()
        Window:Hide()
    end)
    
    -- Tab Container (Left sidebar style)
    local tabContainer = CreateInstance("Frame", {
        Name = "TabContainer",
        Size = UDim2.new(0, 180, 1, -40),
        Position = UDim2.new(0, 0, 0, 40),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.7,
        BorderSizePixel = 0,
        Parent = mainFrame
    })
    
    local tabList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 4),
        Parent = tabContainer
    })
    
    local tabPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = tabContainer
    })
    
    -- Content Container
    local contentContainer = CreateInstance("Frame", {
        Name = "ContentContainer",
        Size = UDim2.new(1, -190, 1, -50),
        Position = UDim2.new(0, 190, 0, 45),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.85,
        BorderSizePixel = 0,
        Parent = mainFrame
    })
    
    local contentCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = contentContainer
    })
    
    -- Store references
    Window.Frame = mainFrame
    Window.TabContainer = tabContainer
    Window.ContentContainer = contentContainer
    Window.GlassOverlay = glassOverlay
    Window.TitleBar = titleBar
    
    -- Make draggable
    local dragInput
    local dragStart
    local startPos
    
    mainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragStart = input.Position
            Window.Dragging = true
        end
    end)
    
    mainFrame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Window.Dragging = false
        end
    end)
    
    mainFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement and Window.Dragging then
            local delta = input.Position - dragStart
            mainFrame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)
    
    -- Initialize position
    startPos = mainFrame.Position
    
    -- Tab creation
    function Window:AddTab(name, icon)
        local tab = {
            Name = name,
            Components = {},
            IsSelected = false
        }
        
        local tabButton = CreateInstance("TextButton", {
            Name = name .. "Tab",
            Size = UDim2.new(1, 0, 0, 36),
            BackgroundColor3 = theme.Surface,
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Text = name,
            TextColor3 = theme.TextSecondary,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Center,
            Font = Enum.Font.GothamMedium,
            TextSize = 13,
            Parent = tabContainer
        })
        
        local tabPadding2 = CreateInstance("UIPadding", {
            PaddingLeft = UDim.new(0, 12),
            Parent = tabButton
        })
        
        tab.Button = tabButton
        tab.Content = nil
        
        tabButton.MouseButton1Click:Connect(function()
            Window:SelectTab(name)
        end)
        
        table.insert(self.Tabs, tab)
        
        if #self.Tabs == 1 then
            Window:SelectTab(name)
        end
        
        return tab
    end
    
    -- Tab selection
    function Window:SelectTab(tabName)
        for _, tab in ipairs(self.Tabs) do
            if tab.Name == tabName then
                tab.IsSelected = true
                Tween(tab.Button, {
                    BackgroundTransparency = 0.3,
                    TextColor3 = theme.Text
                }, 0.2)
                
                -- Show content
                if not tab.Content then
                    tab.Content = CreateInstance("ScrollingFrame", {
                        Name = tab.Name .. "Content",
                        Size = UDim2.new(1, 0, 1, 0),
                        BackgroundTransparency = 1,
                        BorderSizePixel = 0,
                        ScrollBarThickness = 3,
                        ScrollBarImageColor3 = theme.Primary,
                        Parent = contentContainer
                    })
                    
                    local contentList = CreateInstance("UIListLayout", {
                        Padding = UDim.new(0, 8),
                        Parent = tab.Content
                    })
                    
                    local contentPadding = CreateInstance("UIPadding", {
                        PaddingAll = UDim.new(0, 12),
                        Parent = tab.Content
                    })
                    
                    tab.ListLayout = contentList
                end
                
                tab.Content.Visible = true
            else
                tab.IsSelected = false
                Tween(tab.Button, {
                    BackgroundTransparency = 1,
                    TextColor3 = theme.TextSecondary
                }, 0.2)
                
                if tab.Content then
                    tab.Content.Visible = false
                end
            end
        end
    end
    
    -- Add component to current tab
    function Window:AddComponent(componentType, options)
        options = options or {}
        
        -- Find selected tab
        local currentTab
        for _, tab in ipairs(self.Tabs) do
            if tab.IsSelected then
                currentTab = tab
                break
            end
        end
        
        if not currentTab then
            return nil
        end
        
        -- Delegate to tab's Add method
        return currentTab:Add(componentType, options)
    end
    
    -- Add component to specific tab
    function Window:AddToTab(tabName, componentType, options)
        for _, tab in ipairs(self.Tabs) do
            if tab.Name == tabName then
                return tab:Add(componentType, options)
            end
        end
    end
    
    -- Show/Hide
    function Window:Show()
        self.IsOpen = true
        mainFrame.Visible = true
    end
    
    function Window:Hide()
        self.IsOpen = false
        mainFrame.Visible = false
    end
    
    function Window:Toggle()
        if self.IsOpen then
            self:Hide()
        else
            self:Show()
        end
    end
    
    -- Get Theme
    function Window:GetTheme()
        return AetherUI.Theme
    end
    
    -- Add methods to tab
    for _, tab in ipairs({}) do -- Will be populated when tabs are created
    end
    
    return Window
end

-- Add Component Factory
function AetherUI:CreateComponent(componentType, options, parent)
    local theme = self.Theme
    
    local component = {
        Type = componentType,
        Options = options,
        Parent = parent
    }
    
    -- Component creation based on type
    if componentType == "Button" then
        component = self:CreateButton(options, parent)
    elseif componentType == "Toggle" then
        component = self:CreateToggle(options, parent)
    elseif componentType == "Slider" then
        component = self:CreateSlider(options, parent)
    elseif componentType == "TextField" then
        component = self:CreateTextField(options, parent)
    elseif componentType == "Label" then
        component = self:CreateLabel(options, parent)
    elseif componentType == "Dropdown" then
        component = self:CreateDropdown(options, parent)
    elseif componentType == "Card" then
        component = self:CreateCard(options, parent)
    elseif componentType == "Separator" then
        component = self:CreateSeparator(options, parent)
    elseif componentType == "Input" then
        component = self:CreateInput(options, parent)
    elseif componentType == "ColorPicker" then
        component = self:CreateColorPicker(options, parent)
    elseif componentType == "Keybind" then
        component = self:CreateKeybind(options, parent)
    elseif componentType == "Badge" then
        component = self:CreateBadge(options, parent)
    elseif componentType == "Avatar" then
        component = self:CreateAvatar(options, parent)
    elseif componentType == "Progress" then
        component = self:CreateProgress(options, parent)
    elseif componentType == "Spinner" then
        component = self:CreateSpinner(options, parent)
    elseif componentType == "Tooltip" then
        component = self:CreateTooltip(options, parent)
    elseif componentType == "Notification" then
        component = self:CreateNotification(options, parent)
    elseif componentType == "Modal" then
        component = self:CreateModal(options, parent)
    elseif componentType == "Drawer" then
        component = self:CreateDrawer(options, parent)
    elseif componentType == "Accordion" then
        component = self:CreateAccordion(options, parent)
    elseif componentType == "Tabs" then
        component = self:CreateTabs(options, parent)
    elseif componentType == "TreeView" then
        component = self:CreateTreeView(options, parent)
    elseif componentType == "List" then
        component = self:CreateList(options, parent)
    elseif componentType == "Grid" then
        component = self:CreateGrid(options, parent)
    elseif componentType == "CodeBlock" then
        component = self:CreateCodeBlock(options, parent)
    elseif componentType == "Chart" then
        component = self:CreateChart(options, parent)
    elseif componentType == "Calendar" then
        component = self:CreateCalendar(options, parent)
    elseif componentType == "Image" then
        component = self:CreateImage(options, parent)
    elseif componentType == "Video" then
        component = self:CreateVideo(options, parent)
    elseif componentType == "WebView" then
        component = self:CreateWebView(options, parent)
    elseif componentType == "Console" then
        component = self:CreateConsole(options, parent)
    elseif componentType == "ScriptEditor" then
        component = self:CreateScriptEditor(options, parent)
    elseif componentType == "ScriptLibrary" then
        component = self:CreateScriptLibrary(options, parent)
    elseif componentType == "SettingsPanel" then
        component = self:CreateSettingsPanel(options, parent)
    elseif componentType == "VariableExplorer" then
        component = self:CreateVariableExplorer(options, parent)
    elseif componentType == "NetworkInspector" then
        component = self:CreateNetworkInspector(options, parent)
    elseif componentType == "GameExplorer" then
        component = self:CreateGameExplorer(options, parent)
    elseif componentType == "HTTPRequest" then
        component = self:CreateHTTPRequest(options, parent)
    elseif componentType == "JSONFormatter" then
        component = self:CreateJSONFormatter(options, parent)
    elseif componentType == "ThemeCustomizer" then
        component = self:CreateThemeCustomizer(options, parent)
    elseif componentType == "KeybindEditor" then
        component = self:CreateKeybindEditor(options, parent)
    elseif componentType == "GlowEffect" then
        component = self:CreateGlowEffect(options, parent)
    elseif componentType == "ParticleBackground" then
        component = self:CreateParticleBackground(options, parent)
    elseif componentType == "RippleEffect" then
        component = self:CreateRippleEffect(options, parent)
    elseif componentType == "BlurOverlay" then
        component = self:CreateBlurOverlay(options, parent)
    elseif componentType == "GradientBorder" then
        component = self:CreateGradientBorder(options, parent)
    elseif componentType == "NoiseOverlay" then
        component = self:CreateNoiseOverlay(options, parent)
    elseif componentType == "AnimatedContainer" then
        component = self:CreateAnimatedContainer(options, parent)
    elseif componentType == "Skeleton" then
        component = self:CreateSkeleton(options, parent)
    elseif componentType == "RichText" then
        component = self:CreateRichText(options, parent)
    elseif componentType == "Markdown" then
        component = self:CreateMarkdown(options, parent)
    elseif componentType == "Breadcrumb" then
        component = self:CreateBreadcrumb(options, parent)
    elseif componentType == "Pagination" then
        component = self:CreatePagination(options, parent)
    elseif componentType == "Stepper" then
        component = self:CreateStepper(options, parent)
    elseif componentType == "Timeline" then
        component = self:CreateTimeline(options, parent)
    elseif componentType == "StatCard" then
        component = self:CreateStatCard(options, parent)
    elseif componentType == "Table" then
        component = self:CreateTable(options, parent)
    elseif componentType == "Form" then
        component = self:CreateForm(options, parent)
    elseif componentType == "DatePicker" then
        component = self:CreateDatePicker(options, parent)
    elseif componentType == "TimePicker" then
        component = self:CreateTimePicker(options, parent)
    elseif componentType == "DateRangePicker" then
        component = self:CreateDateRangePicker(options, parent)
    elseif componentType == "ColorWheel" then
        component = self:CreateColorWheel(options, parent)
    elseif componentType == "FilePicker" then
        component = self:CreateFilePicker(options, parent)
    elseif componentType == "ChipInput" then
        component = self:CreateChipInput(options, parent)
    elseif componentType == "SegmentedControl" then
        component = self:CreateSegmentedControl(options, parent)
    elseif componentType == "Popover" then
        component = self:CreatePopover(options, parent)
    elseif componentType == "Menu" then
        component = self:CreateMenu(options, parent)
    elseif componentType == "ContextMenu" then
        component = self:CreateContextMenu(options, parent)
    elseif componentType == "Carousel" then
        component = self:CreateCarousel(options, parent)
    elseif componentType == "DrawerSide" then
        component = self:CreateDrawerSide(options, parent)
    elseif componentType == "Window" then
        component = self:CreateWindow(options)
    elseif componentType == "Frame" then
        component = self:CreateFrame(options, parent)
    else
        warn("Unknown component type: " .. tostring(componentType))
        return nil
    end
    
    return component
end

-- ============================================
-- BASIC COMPONENTS
-- ============================================

-- Button Component
function AetherUI:CreateButton(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local button = CreateInstance("TextButton", {
        Name = options.Name or "Button",
        Size = options.Size or UDim2.new(0, 120, 0, 36),
        BackgroundColor3 = options.Variant == "Primary" and theme.Primary or 
                          options.Variant == "Danger" and theme.Danger or
                          options.Variant == "Success" and theme.Success or
                          options.Variant == "Warning" and theme.Warning or
                          theme.Surface,
        BorderSizePixel = 0,
        Text = options.Text or "Button",
        TextColor3 = options.Variant == "Primary" or options.Variant == "Danger" or 
                    options.Variant == "Success" or options.Variant == "Warning" 
                    and Color3.new(1,1,1) or theme.Text,
        Font = Enum.Font.GothamMedium,
        TextSize = 13,
        AutoButtonColor = false,
        Parent = parent
    })
    
    local corner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = button
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 12),
        Parent = button
    })
    
    -- Hover effects
    local originalColor = button.BackgroundColor3
    
    button.MouseEnter:Connect(function()
        Tween(button, {
            BackgroundColor3 = originalColor:Lerp(Color3.new(1,1,1), 0.1)
        }, 0.15)
    end)
    
    button.MouseLeave:Connect(function()
        Tween(button, {
            BackgroundColor3 = originalColor
        }, 0.15)
    end)
    
    local component = {
        Frame = button,
        OnClick = button.MouseButton1Click,
        SetText = function(text)
            button.Text = text
        end,
        SetEnabled = function(enabled)
            button.AutoButtonColor = enabled
            button.Active = enabled
            button.BackgroundTransparency = enabled and 0 or 0.5
        end
    }
    
    return component
end

-- Toggle Component
function AetherUI:CreateToggle(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Toggle",
        Size = options.Size or UDim2.new(0, 44, 0, 24),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local toggleBg = CreateInstance("Frame", {
        Name = "ToggleBackground",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local toggleCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = toggleBg
    })
    
    local toggleKnob = CreateInstance("Frame", {
        Name = "ToggleKnob",
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(0, 2, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = theme.TextSecondary,
        BorderSizePixel = 0,
        Parent = toggleBg
    })
    
    local knobCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = toggleKnob
    })
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Size = UDim2.new(1, 54, 1, 0),
        Position = UDim2.new(0, 50, 0, 0),
        BackgroundTransparency = 1,
        Text = options.Text or "",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 13,
        Parent = container
    })
    
    local isOn = options.Value or false
    
    local function updateToggle()
        if isOn then
            Tween(toggleKnob, {
                Position = UDim2.new(1, -22, 0.5, 0),
                BackgroundColor3 = theme.Primary
            }, 0.2)
            Tween(toggleBg, {
                BackgroundColor3 = theme.Primary
            }, 0.2)
        else
            Tween(toggleKnob, {
                Position = UDim2.new(0, 2, 0.5, 0),
                BackgroundColor3 = theme.TextSecondary
            }, 0.2)
            Tween(toggleBg, {
                BackgroundColor3 = theme.Surface
            }, 0.2)
        end
    end
    
    local btn = CreateInstance("TextButton", {
        Name = "ToggleButton",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = "",
        Parent = container
    })
    
    btn.MouseButton1Click:Connect(function()
        isOn = not isOn
        updateToggle()
        if options.Callback then
            options.Callback(isOn)
        end
    end)
    
    updateToggle()
    
    local component = {
        Frame = container,
        IsOn = function() return isOn end,
        SetValue = function(value)
            isOn = value
            updateToggle()
        end,
        OnToggle = function(callback)
            options.Callback = callback
        end
    }
    
    return component
end

-- Slider Component
function AetherUI:CreateSlider(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Slider",
        Size = options.Size or UDim2.new(0, 200, 0, 40),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Size = UDim2.new(1, 0, 0, 16),
        BackgroundTransparency = 1,
        Text = options.Text or "",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        Parent = container
    })
    
    local valueLabel = CreateInstance("TextLabel", {
        Name = "ValueLabel",
        Size = UDim2.new(0, 50, 0, 16),
        Position = UDim2.new(1, -50, 0, 0),
        BackgroundTransparency = 1,
        Text = tostring(options.Value or 50),
        TextColor3 = theme.TextSecondary,
        TextXAlignment = Enum.TextXAlignment.Right,
        Font = Enum.Font.GothamMedium,
        TextSize = 12,
        Parent = container
    })
    
    local track = CreateInstance("Frame", {
        Name = "Track",
        Size = UDim2.new(1, 0, 0, 6),
        Position = UDim2.new(0, 0, 0, 20),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local trackCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = track
    })
    
    local fill = CreateInstance("Frame", {
        Name = "Fill",
        Size = UDim2.new(0.5, 0, 1, 0),
        BackgroundColor3 = theme.Primary,
        BorderSizePixel = 0,
        Parent = track
    })
    
    local fillCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = fill
    })
    
    local thumb = CreateInstance("Frame", {
        Name = "Thumb",
        Size = UDim2.new(0, 16, 0, 16),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = theme.Text,
        BorderSizePixel = 0,
        Parent = track
    })
    
    local thumbCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = thumb
    })
    
    local min = options.Min or 0
    local max = options.Max or 100
    local value = options.Value or 50
    local step = options.Step or 1
    
    local function updateSlider(percent)
        percent = math.clamp(percent, 0, 1)
        value = math.floor((min + (max - min) * percent) / step) * step
        valueLabel.Text = tostring(value)
        fill.Size = UDim2.new(percent, 0, 1, 0)
        thumb.Position = UDim2.new(percent, 0, 0.5, 0)
        
        if options.Callback then
            options.Callback(value)
        end
    end
    
    local dragging = false
    
    local btn = CreateInstance("TextButton", {
        Name = "SliderButton",
        Size = UDim2.new(1, 0, 1, -4),
        Position = UDim2.new(0, 0, 0, 2),
        BackgroundTransparency = 1,
        Text = "",
        Parent = container
    })
    
    btn.MouseButton1Down:Connect(function()
        dragging = true
    end)
    
    btn.MouseButton1Up:Connect(function()
        dragging = false
    end)
    
    btn.MouseMoved:Connect(function(_, y)
        if dragging then
            local abs = track.AbsoluteSize
            local pos = btn.AbsolutePosition
            local percent = (y - pos.Y) / abs.Y
            updateSlider(percent)
        end
    end)
    
    -- Initialize
    updateSlider((value - min) / (max - min))
    
    local component = {
        Frame = container,
        GetValue = function() return value end,
        SetValue = function(v)
            value = v
            updateSlider((value - min) / (max - min))
        end,
        OnChange = function(callback)
            options.Callback = callback
        end
    }
    
    return component
end

-- TextField Component
function AetherUI:CreateTextField(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "TextField",
        Size = options.Size or UDim2.new(0, 200, 0, 36),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local inputBg = CreateInstance("Frame", {
        Name = "InputBackground",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local inputCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = inputBg
    })
    
    local input = CreateInstance("TextBox", {
        Name = "Input",
        Size = UDim2.new(1, -24, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = "",
        PlaceholderText = options.Placeholder or "Enter text...",
        PlaceholderColor3 = theme.TextMuted,
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 13,
        ClearTextOnFocus = false,
        Parent = inputBg
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingLeft = UDim.new(0, 12),
        PaddingRight = UDim.new(0, 12),
        Parent = input
    })
    
    if options.MultiLine then
        input.TextWrapped = true
        input.MultiLine = true
    end
    
    local component = {
        Frame = container,
        GetValue = function() return input.Text end,
        SetValue = function(text) input.Text = text end,
        SetPlaceholder = function(placeholder) 
            input.PlaceholderText = placeholder 
        end,
        OnChange = function(callback)
            input.FocusLost:Connect(function()
                callback(input.Text)
            end)
        end,
        OnTextChange = function(callback)
            input.Changed:Connect(function()
                callback(input.Text)
            end)
        end
    }
    
    return component
end

-- Label Component
function AetherUI:CreateLabel(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local label = CreateInstance("TextLabel", {
        Name = options.Name or "Label",
        Size = options.Size or UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Text = options.Text or "Label",
        TextColor3 = options.Color or theme.Text,
        TextXAlignment = options.Alignment or Enum.TextXAlignment.Left,
        Font = options.Bold and Enum.Font.GothamBold or Enum.Font.Gotham,
        TextSize = options.Size or 13,
        Parent = parent
    })
    
    local component = {
        Frame = label,
        SetText = function(text) label.Text = text end,
        GetText = function() return label.Text end,
        SetColor = function(color) label.TextColor3 = color end
    }
    
    return component
end

-- Separator Component
function AetherUI:CreateSeparator(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local separator = CreateInstance("Frame", {
        Name = options.Name or "Separator",
        Size = options.Size or UDim2.new(1, 0, 0, 1),
        BackgroundColor3 = theme.Border,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local component = {
        Frame = separator
    }
    
    return component
end

-- Input Component (Enhanced TextField)
function AetherUI:CreateInput(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Input",
        Size = options.Size or UDim2.new(0, 200, 0, 44),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    if options.Label then
        local label = CreateInstance("TextLabel", {
            Name = "Label",
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 1,
            Text = options.Label,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = container
        })
    end
    
    local inputBg = CreateInstance("Frame", {
        Name = "InputBackground",
        Size = UDim2.new(1, 0, 0, 32),
        Position = options.Label and UDim2.new(0, 0, 0, 18) or UDim2.new(0, 0, 0, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local inputCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = inputBg
    })
    
    local input = CreateInstance("TextBox", {
        Name = "Input",
        Size = UDim2.new(1, -24, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = "",
        PlaceholderText = options.Placeholder or "",
        PlaceholderColor3 = theme.TextMuted,
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 13,
        ClearTextOnFocus = false,
        Parent = inputBg
    })
    
    -- Icon
    if options.Icon then
        local icon = CreateInstance("ImageLabel", {
            Name = "Icon",
            Size = UDim2.new(0, 16, 0, 16),
            Position = UDim2.new(1, -36, 0.5, 0),
            AnchorPoint = Vector2.new(0.5, 0.5),
            Image = options.Icon,
            ImageColor3 = theme.TextSecondary,
            BackgroundTransparency = 1,
            Parent = inputBg
        })
    end
    
    local component = {
        Frame = container,
        Input = input,
        GetValue = function() return input.Text end,
        SetValue = function(text) input.Text = text end,
        SetPlaceholder = function(placeholder) 
            input.PlaceholderText = placeholder 
        end,
        OnChange = function(callback)
            input.FocusLost:Connect(function()
                callback(input.Text)
            end)
        end
    }
    
    return component
end

-- Card Component
function AetherUI:CreateCard(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local card = CreateInstance("Frame", {
        Name = options.Name or "Card",
        Size = options.Size or UDim2.new(1, 0, 0, 100),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local cardCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = card
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 16),
        Parent = card
    })
    
    -- Header
    if options.Title then
        local title = CreateInstance("TextLabel", {
            Name = "Title",
            Size = UDim2.new(1, 0, 0, 20),
            BackgroundTransparency = 1,
            Text = options.Title,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamBold,
            TextSize = 14,
            Parent = card
        })
    end
    
    local component = {
        Frame = card,
        AddChild = function(child)
            child.Parent = card
        end
    }
    
    return component
end

-- ============================================
-- CONTAINER COMPONENTS
-- ============================================

-- Frame Component
function AetherUI:CreateFrame(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local frame = CreateInstance("Frame", {
        Name = options.Name or "Frame",
        Size = options.Size or UDim2.new(1, 0, 0, 100),
        BackgroundColor3 = options.Transparent and Color3.new() or theme.Surface,
        BackgroundTransparency = options.Transparent and 1 or 0,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    if theme.CornerRadius and options.CornerRadius ~= false then
        local corner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius),
            Parent = frame
        })
    end
    
    local component = {
        Frame = frame,
        SetSize = function(size) frame.Size = size end,
        SetPosition = function(pos) frame.Position = pos end,
        SetBackground = function(color, transparency)
            frame.BackgroundColor3 = color
            frame.BackgroundTransparency = transparency or 0
        end
    }
    
    return component
end

-- Modal Component
function AetherUI:CreateModal(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local modal = {
        IsOpen = false
    }
    
    local overlay = CreateInstance("Frame", {
        Name = "ModalOverlay",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundColor3 = Color3.new(),
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Visible = false,
        Parent = parent
    })
    
    local modalBg = CreateInstance("Frame", {
        Name = "ModalBackground",
        Size = options.Size or UDim2.new(0, 400, 0, 300),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Visible = false,
        Parent = parent
    })
    
    local modalCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = modalBg
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 20),
        Parent = modalBg
    })
    
    -- Title
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, 0, 0, 30),
        BackgroundTransparency = 1,
        Text = options.Title or "Modal",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        Parent = modalBg
    })
    
    -- Close button
    local closeBtn = CreateInstance("TextButton", {
        Name = "CloseButton",
        Size = UDim2.new(0, 24, 0, 24),
        Position = UDim2.new(1, -24, 0, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Text = "×",
        TextColor3 = theme.TextSecondary,
        Font = Enum.Font.GothamBold,
        TextSize = 18,
        Parent = modalBg
    })
    
    local closeCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 4),
        Parent = closeBtn
    })
    
    -- Content container
    local content = CreateInstance("Frame", {
        Name = "Content",
        Size = UDim2.new(1, 0, 1, -40),
        Position = UDim2.new(0, 0, 0, 40),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Parent = modalBg
    })
    
    -- Actions
    local actions = CreateInstance("Frame", {
        Name = "Actions",
        Size = UDim2.new(1, 0, 0, 40),
        Position = UDim2.new(0, 0, 1, -40),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Parent = modalBg
    })
    
    local actionsList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 8),
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        Parent = actions
    })
    
    local actionsPadding = CreateInstance("UIPadding", {
        PaddingRight = UDim.new(0, 8),
        Parent = actions
    })
    
    -- Events
    closeBtn.MouseButton1Click:Connect(function()
        modal:Hide()
    end)
    
    overlay.MouseButton1Click:Connect(function()
        modal:Hide()
    end)
    
    function modal:Show()
        self.IsOpen = true
        overlay.Visible = true
        modalBg.Visible = true
        if options.OnOpen then options.OnOpen() end
    end
    
    function modal:Hide()
        self.IsOpen = false
        overlay.Visible = false
        modalBg.Visible = false
        if options.OnClose then options.OnClose() end
    end
    
    function modal:AddButton(options)
        return AetherUI:CreateButton(options, actions)
    end
    
    modal.Frame = modalBg
    modal.Content = content
    
    return modal
end

-- Accordion Component
function AetherUI:CreateAccordion(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local accordion = {
        IsExpanded = options.Expanded or false
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Accordion",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.7,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("TextButton", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundTransparency = 1,
        Text = "",
        Parent = container
    })
    
    local titleLabel = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, -40, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = options.Title or "Accordion",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamMedium,
        TextSize = 13,
        Parent = header
    })
    
    local arrow = CreateInstance("ImageLabel", {
        Name = "Arrow",
        Size = UDim2.new(0, 16, 0, 16),
        Position = UDim2.new(1, -28, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Image = "rbxassetid://11708027294",
        Rotation = accordion.IsExpanded and 90 or 0,
        ImageColor3 = theme.TextSecondary,
        BackgroundTransparency = 1,
        Parent = header
    })
    
    -- Content
    local content = CreateInstance("Frame", {
        Name = "Content",
        Size = UDim2.new(1, 0, 0, 0),
        Position = UDim2.new(0, 0, 0, 40),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Visible = accordion.IsExpanded,
        Parent = container
    })
    
    local contentList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 4),
        Parent = content
    })
    
    local contentPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 12),
        Parent = content
    })
    
    local function updateHeight()
        local height = contentList.AbsoluteContentSize.Y
        if accordion.IsExpanded then
            Tween(container, { Size = UDim2.new(1, 0, 0, 40 + height + 8) }, 0.2)
            content.Visible = true
            content.Size = UDim2.new(1, 0, 0, height)
        else
            Tween(container, { Size = UDim2.new(1, 0, 0, 40) }, 0.2)
            content.Size = UDim2.new(1, 0, 0, 0)
            task.wait(0.2)
            content.Visible = false
        end
    end
    
    header.MouseButton1Click:Connect(function()
        accordion.IsExpanded = not accordion.IsExpanded
        Tween(arrow, { Rotation = accordion.IsExpanded and 90 or 0 }, 0.2)
        updateHeight()
    end)
    
    contentList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateHeight)
    
    accordion.Frame = container
    accordion.Content = content
    accordion.IsExpanded = function() return accordion.IsExpanded end
    accordion.Toggle = function()
        header.MouseButton1Click:Fire()
    end
    
    return accordion
end

-- Tabs Component
function AetherUI:CreateTabs(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local tabs = {
        Selected = nil,
        TabButtons = {},
        TabContents = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Tabs",
        Size = options.Size or UDim2.new(1, 0, 0, 200),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    -- Tab buttons
    local buttonContainer = CreateInstance("Frame", {
        Name = "TabButtons",
        Size = UDim2.new(1, 0, 0, 36),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.7,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local buttonCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = buttonContainer
    })
    
    local buttonList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 2),
        FillDirection = Enum.FillDirection.Horizontal,
        Parent = buttonContainer
    })
    
    local buttonPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 4),
        Parent = buttonContainer
    })
    
    -- Content container
    local contentContainer = CreateInstance("Frame", {
        Name = "TabContent",
        Size = UDim2.new(1, 0, 1, -44),
        Position = UDim2.new(0, 0, 0, 40),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local contentCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = contentContainer
    })
    
    local contentPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 12),
        Parent = contentContainer
    })
    
    function tabs:AddTab(name)
        local tab = {
            Name = name,
            IsSelected = false
        }
        
        local btn = CreateInstance("TextButton", {
            Name = name .. "Tab",
            Size = UDim2.new(0, 80, 1, -4),
            BackgroundColor3 = theme.Surface,
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Text = name,
            TextColor3 = theme.TextSecondary,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = buttonContainer
        })
        
        local btnCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 4),
            Parent = btn
        })
        
        local content = CreateInstance("Frame", {
            Name = name .. "Content",
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Visible = false,
            Parent = contentContainer
        })
        
        local contentList = CreateInstance("UIListLayout", {
            Padding = UDim.new(0, 8),
            Parent = content
        })
        
        local contentPadding2 = CreateInstance("UIPadding", {
            PaddingTop = UDim.new(0, 4),
            Parent = content
        })
        
        btn.MouseButton1Click:Connect(function()
            tabs:SelectTab(name)
        end)
        
        tab.Button = btn
        tab.Content = content
        
        table.insert(tabs.TabButtons, tab)
        
        if not tabs.Selected then
            tabs:SelectTab(name)
        end
        
        return tab
    end
    
    function tabs:SelectTab(name)
        for _, tab in ipairs(tabs.TabButtons) do
            if tab.Name == name then
                tab.IsSelected = true
                tabs.Selected = name
                Tween(tab.Button, {
                    BackgroundTransparency = 0.3,
                    TextColor3 = theme.Text
                }, 0.15)
                tab.Content.Visible = true
            else
                tab.IsSelected = false
                Tween(tab.Button, {
                    BackgroundTransparency = 1,
                    TextColor3 = theme.TextSecondary
                }, 0.15)
                tab.Content.Visible = false
            end
        end
    end
    
    tabs.Frame = container
    
    return tabs
end

-- Sidebar Component
function AetherUI:CreateSidebar(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local sidebar = {
        Items = {},
        Expanded = true
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Sidebar",
        Size = options.Size or UDim2.new(0, 200, 1, 0),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.7,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    local scroll = CreateInstance("ScrollingFrame", {
        Name = "Scroll",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = container
    })
    
    local itemList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 2),
        Parent = scroll
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = scroll
    end)
    
    function sidebar:AddItem(options)
        options = options or {}
        
        local item = {
            Name = options.Name,
            Icon = options.Icon,
            Action = options.Action
        }
        
        local btn = CreateInstance("TextButton", {
            Name = options.Name,
            Size = UDim2.new(1, 0, 0, 36),
            BackgroundColor3 = theme.Surface,
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Text = options.Name,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 13,
            Parent = scroll
        })
        
        local btnPadding = CreateInstance("UIPadding", {
            PaddingLeft = UDim.new(0, 12),
            Parent = btn
        })
        
        if options.Icon then
            local icon = CreateInstance("ImageLabel", {
                Name = "Icon",
                Size = UDim2.new(0, 16, 0, 16),
                Position = UDim2.new(0, 0, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5),
                Image = options.Icon,
                ImageColor3 = theme.TextSecondary,
                BackgroundTransparency = 1,
                Parent = btn
            })
            
            local iconPadding = CreateInstance("UIPadding", {
                PaddingLeft = UDim.new(0, 28),
                Parent = btn
            })
        end
        
        btn.MouseButton1Click:Connect(function()
            if options.Action then
                options.Action()
            end
        end)
        
        item.Button = btn
        table.insert(sidebar.Items, item)
        
        return item
    end
    
    function sidebar:AddSection(name)
        local section = {
            Name = name,
            Items = {}
        }
        
        local sectionLabel = CreateInstance("TextLabel", {
            Name = name .. "Section",
            Size = UDim2.new(1, 0, 0, 24),
            BackgroundTransparency = 1,
            Text = name:upper(),
            TextColor3 = theme.TextMuted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamBold,
            TextSize = 10,
            Parent = scroll
        })
        
        local sectionPadding = CreateInstance("UIPadding", {
            PaddingTop = UDim.new(0, 12),
            PaddingLeft = UDim.new(0, 12),
            Parent = sectionLabel
        })
        
        section.Label = sectionLabel
        return section
    end
    
    sidebar.Frame = container
    
    return sidebar
end

-- ============================================
-- INPUT COMPONENTS
-- ============================================

-- ColorPicker Component
function AetherUI:CreateColorPicker(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local picker = {
        Value = options.Value or Color3.new(1, 0, 0)
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "ColorPicker",
        Size = options.Size or UDim2.new(0, 200, 0, 100),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    -- Color preview
    local preview = CreateInstance("Frame", {
        Name = "Preview",
        Size = UDim2.new(0, 60, 0, 60),
        BackgroundColor3 = picker.Value,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local previewCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = preview
    })
    
    -- RGB Sliders
    local rSlider = AetherUI:CreateSlider({
        Name = "Red",
        Text = "R",
        Min = 0,
        Max = 255,
        Value = math.floor(picker.Value.R * 255),
        Callback = function(val)
            picker.Value = Color3.new(val/255, picker.Value.G, picker.Value.B)
            preview.BackgroundColor3 = picker.Value
        end
    }, container)
    
    rSlider.Frame.Position = UDim2.new(0, 70, 0, 0)
    
    local gSlider = AetherUI:CreateSlider({
        Name = "Green",
        Text = "G",
        Min = 0,
        Max = 255,
        Value = math.floor(picker.Value.G * 255),
        Callback = function(val)
            picker.Value = Color3.new(picker.Value.R, val/255, picker.Value.B)
            preview.BackgroundColor3 = picker.Value
        end
    }, container)
    
    gSlider.Frame.Position = UDim2.new(0, 70, 0, 30)
    
    local bSlider = AetherUI:CreateSlider({
        Name = "Blue",
        Text = "B",
        Min = 0,
        Max = 255,
        Value = math.floor(picker.Value.B * 255),
        Callback = function(val)
            picker.Value = Color3.new(picker.Value.R, picker.Value.G, val/255)
            preview.BackgroundColor3 = picker.Value
        end
    }, container)
    
    bSlider.Frame.Position = UDim2.new(0, 70, 0, 60)
    
    function picker:SetValue(color)
        picker.Value = color
        preview.BackgroundColor3 = color
        rSlider.SetValue(math.floor(color.R * 255))
        gSlider.SetValue(math.floor(color.G * 255))
        bSlider.SetValue(math.floor(color.B * 255))
    end
    
    picker.Frame = container
    
    return picker
end

-- Keybind Component
function AetherUI:CreateKeybind(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local keybind = {
        Value = options.Value or "None",
        IsListening = false
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Keybind",
        Size = options.Size or UDim2.new(0, 150, 0, 32),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Size = UDim2.new(0, 80, 1, 0),
        BackgroundTransparency = 1,
        Text = options.Text or "Keybind",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 13,
        Parent = container
    })
    
    local keyBg = CreateInstance("Frame", {
        Name = "KeyBackground",
        Size = UDim2.new(0, 60, 1, 0),
        Position = UDim2.new(1, -60, 0, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local keyCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 4),
        Parent = keyBg
    })
    
    local keyLabel = CreateInstance("TextLabel", {
        Name = "KeyLabel",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = keybind.Value,
        TextColor3 = theme.TextSecondary,
        Font = Enum.Font.GothamMedium,
        TextSize = 11,
        Parent = keyBg
    })
    
    local btn = CreateInstance("TextButton", {
        Name = "KeybindButton",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = "",
        Parent = container
    })
    
    local userInput = game:GetService("UserInputService")
    
    btn.MouseButton1Click:Connect(function()
        keybind.IsListening = true
        keyLabel.Text = "Press..."
        keyLabel.TextColor3 = theme.Warning
        
        local connection
        connection = userInput.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed then
                local key = input.KeyCode.Name
                keybind.Value = key
                keyLabel.Text = key
                keyLabel.TextColor3 = theme.TextSecondary
                keybind.IsListening = false
                connection:Disconnect()
                if options.Callback then
                    options.Callback(key)
                end
            end
        end)
    end)
    
    keybind.Frame = container
    keybind.SetValue = function(value)
        keybind.Value = value
        keyLabel.Text = value
    end
    
    return keybind
end

-- Dropdown Component
function AetherUI:CreateDropdown(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local dropdown = {
        IsOpen = false,
        Options = options.Options or {},
        Selected = nil
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Dropdown",
        Size = options.Size or UDim2.new(0, 200, 0, 36),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    if options.Label then
        local label = CreateInstance("TextLabel", {
            Name = "Label",
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 1,
            Text = options.Label,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = container
        })
    end
    
    local button = CreateInstance("TextButton", {
        Name = "DropdownButton",
        Size = UDim2.new(1, 0, 0, 32),
        Position = options.Label and UDim2.new(0, 0, 0, 18) or UDim2.new(0, 0, 0, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Text = options.Placeholder or "Select...",
        TextColor3 = theme.TextMuted,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 13,
        Parent = container
    })
    
    local buttonCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = button
    })
    
    local buttonPadding = CreateInstance("UIPadding", {
        PaddingLeft = UDim.new(0, 12),
        Parent = button
    })
    
    local arrow = CreateInstance("ImageLabel", {
        Name = "Arrow",
        Size = UDim2.new(0, 12, 0, 12),
        Position = UDim2.new(1, -16, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Image = "rbxassetid://11708027294",
        Rotation = 0,
        ImageColor3 = theme.TextSecondary,
        BackgroundTransparency = 1,
        Parent = button
    })
    
    -- Dropdown menu
    local menu = CreateInstance("Frame", {
        Name = "Menu",
        Size = UDim2.new(1, 0, 0, 0),
        Position = UDim2.new(0, 0, 0, 38),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 100,
        Parent = container
    })
    
    local menuCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = menu
    })
    
    local menuList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 2),
        Parent = menu
    })
    
    local menuPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 4),
        Parent = menu
    })
    
    -- Add options
    local optionButtons = {}
    
    local function updateMenu()
        -- Clear existing
        for _, btn in ipairs(optionButtons) do
            btn:Destroy()
        end
        optionButtons = {}
        
        local height = 0
        for _, opt in ipairs(dropdown.Options) do
            local optBtn = CreateInstance("TextButton", {
                Name = opt,
                Size = UDim2.new(1, 0, 0, 32),
                BackgroundColor3 = theme.Surface,
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Text = opt,
                TextColor3 = theme.Text,
                TextXAlignment = Enum.TextXAlignment.Left,
                Font = Enum.Font.Gotham,
                TextSize = 13,
                ZIndex = 100,
                Parent = menu
            })
            
            local optPadding = CreateInstance("UIPadding", {
                PaddingLeft = UDim.new(0, 12),
                Parent = optBtn
            end)
            
            optBtn.MouseButton1Click:Connect(function()
                dropdown.Selected = opt
                button.Text = opt
                dropdown.IsOpen = false
                menu.Visible = false
                Tween(arrow, { Rotation = 0 }, 0.15)
                if options.Callback then
                    options.Callback(opt)
                end
            end)
            
            optBtn.MouseEnter:Connect(function()
                Tween(optBtn, { BackgroundTransparency = 0.7 }, 0.1)
            end)
            
            optBtn.MouseLeave:Connect(function()
                Tween(optBtn, { BackgroundTransparency = 1 }, 0.1)
            end)
            
            table.insert(optionButtons, optBtn)
            height = height + 32 + 2
        end
        
        menu.Size = UDim2.new(1, 0, 0, height)
    end
    
    button.MouseButton1Click:Connect(function()
        dropdown.IsOpen = not dropdown.IsOpen
        menu.Visible = dropdown.IsOpen
        Tween(arrow, { Rotation = dropdown.IsOpen and 180 or 0 }, 0.15)
        
        if dropdown.IsOpen then
            updateMenu()
        end
    end)
    
    -- Close when clicking outside
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and dropdown.IsOpen then
            dropdown.IsOpen = false
            menu.Visible = false
            Tween(arrow, { Rotation = 0 }, 0.15)
        end
    end)
    
    function dropdown:SetOptions(options)
        dropdown.Options = options
        updateMenu()
    end
    
    function dropdown:AddOption(option)
        table.insert(dropdown.Options, option)
        updateMenu()
    end
    
    dropdown.Frame = container
    
    return dropdown
end

-- ============================================
-- DISPLAY COMPONENTS
-- ============================================

-- Badge Component
function AetherUI:CreateBadge(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local badge = CreateInstance("Frame", {
        Name = options.Name or "Badge",
        Size = UDim2.new(0, 20, 0, 20),
        BackgroundColor3 = options.Color or theme.Primary,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local badgeCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = badge
    })
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = options.Text or "1",
        TextColor3 = Color3.new(1, 1, 1),
        Font = Enum.Font.GothamBold,
        TextSize = 10,
        Parent = badge
    })
    
    local component = {
        Frame = badge,
        SetText = function(text)
            label.Text = tostring(text)
            badge.Visible = text ~= nil and text ~= 0
        end,
        SetColor = function(color)
            badge.BackgroundColor3 = color
        end
    }
    
    return component
end

-- Avatar Component
function AetherUI:CreateAvatar(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local avatar = CreateInstance("Frame", {
        Name = options.Name or "Avatar",
        Size = options.Size or UDim2.new(0, 40, 0, 40),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local avatarCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = avatar
    })
    
    local image = CreateInstance("ImageLabel", {
        Name = "Image",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Image = options.Image or "",
        ImageColor3 = theme.Text,
        Parent = avatar
    })
    
    local initials = CreateInstance("TextLabel", {
        Name = "Initials",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = options.Initials or "",
        TextColor3 = theme.Text,
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        Visible = not options.Image,
        Parent = avatar
    })
    
    local component = {
        Frame = avatar,
        SetImage = function(url)
            image.Image = url
            image.Visible = true
            initials.Visible = false
        end,
        SetInitials = function(text)
            initials.Text = text
            initials.Visible = true
            image.Visible = false
        end
    }
    
    return component
end

-- Progress Component
function AetherUI:CreateProgress(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local progress = {
        Value = options.Value or 0
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Progress",
        Size = options.Size or UDim2.new(1, 0, 0, 8),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = container
    })
    
    local fill = CreateInstance("Frame", {
        Name = "Fill",
        Size = UDim2.new(0.5, 0, 1, 0),
        BackgroundColor3 = options.Color or theme.Primary,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local fillCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = fill
    })
    
    function progress:SetValue(value)
        progress.Value = math.clamp(value, 0, 100)
        fill.Size = UDim2.new(progress.Value / 100, 0, 1, 0)
    end
    
    function progress:SetIndeterminate(indeterminate)
        if indeterminate then
            -- Animation would go here
        end
    end
    
    progress:SetValue(progress.Value)
    
    progress.Frame = container
    
    return progress
end

-- Spinner Component
function AetherUI:CreateSpinner(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local spinner = {
        IsSpinning = true
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Spinner",
        Size = options.Size or UDim2.new(0, 24, 0, 24),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local image = CreateInstance("ImageLabel", {
        Name = "SpinnerImage",
        Size = UDim2.new(1, 0, 1, 0),
        Image = "rbxassetid://11708027294",
        ImageColor3 = options.Color or theme.Primary,
        BackgroundTransparency = 1,
        Parent = container
    })
    
    -- Spin animation
    task.spawn(function()
        while spinner.IsSpinning do
            image.Rotation = image.Rotation + 10
            task.wait(0.016)
        end
    end)
    
    function spinner:Stop()
        spinner.IsSpinning = false
    end
    
    function spinner:Start()
        if not spinner.IsSpinning then
            spinner.IsSpinning = true
            task.spawn(function()
                while spinner.IsSpinning do
                    image.Rotation = image.Rotation + 10
                    task.wait(0.016)
                end
            end)
        end
    end
    
    spinner.Frame = container
    
    return spinner
end

-- Skeleton Component
function AetherUI:CreateSkeleton(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local skeleton = CreateInstance("Frame", {
        Name = options.Name or "Skeleton",
        Size = options.Size or UDim2.new(1, 0, 0, 20),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local skeletonCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 4),
        Parent = skeleton
    })
    
    -- Wave animation would go here (simplified)
    local gradient = CreateInstance("UIGradient", {
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, theme.Surface),
            ColorSequenceKeypoint.new(0.5, theme.SurfaceGlass),
            ColorSequenceKeypoint.new(1, theme.Surface)
        },
        Rotation = 45,
        Parent = skeleton
    })
    
    return {
        Frame = skeleton
    }
end

-- ============================================
-- NAVIGATION COMPONENTS
-- ============================================

-- Breadcrumb Component
function AetherUI:CreateBreadcrumb(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local breadcrumb = {
        Items = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Breadcrumb",
        Size = options.Size or UDim2.new(1, 0, 0, 24),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 4),
        FillDirection = Enum.FillDirection.Horizontal,
        Parent = container
    })
    
    function breadcrumb:AddItem(name, action)
        local item = {
            Name = name,
            Action = action
        }
        
        local btn = CreateInstance("TextButton", {
            Name = name,
            Size = UDim2.new(0, 0, 1, 0),
            AutoButtonColor = false,
            BackgroundTransparency = 1,
            Text = name,
            TextColor3 = theme.TextSecondary,
            Font = Enum.Font.Gotham,
            TextSize = 12,
            Parent = container
        })
        
        btn.MouseButton1Click:Connect(function()
            if action then action() end
        end)
        
        btn.MouseEnter:Connect(function()
            btn.TextColor3 = theme.Text
        end)
        
        btn.MouseLeave:Connect(function()
            btn.TextColor3 = theme.TextSecondary
        end)
        
        -- Add separator if not last
        if #breadcrumb.Items > 0 then
            local sep = CreateInstance("TextLabel", {
                Name = "Separator",
                Size = UDim2.new(0, 12, 1, 0),
                BackgroundTransparency = 1,
                Text = "/",
                TextColor3 = theme.TextMuted,
                Font = Enum.Font.Gotham,
                TextSize = 12,
                Parent = container
            })
        end
        
        table.insert(breadcrumb.Items, item)
        
        return item
    end
    
    breadcrumb.Frame = container
    
    return breadcrumb
end

-- Pagination Component
function AetherUI:CreatePagination(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local pagination = {
        Page = 1,
        TotalPages = 10
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Pagination",
        Size = options.Size or UDim2.new(1, 0, 0, 36),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 4),
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        Parent = container
    })
    
    -- Prev button
    local prevBtn = CreateInstance("TextButton", {
        Name = "PrevButton",
        Size = UDim2.new(0, 32, 1, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Text = "<",
        TextColor3 = theme.Text,
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        Parent = container
    })
    
    local prevCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 4),
        Parent = prevBtn
    })
    
    -- Page display
    local pageLabel = CreateInstance("TextLabel", {
        Name = "PageLabel",
        Size = UDim2.new(0, 60, 1, 0),
        BackgroundTransparency = 1,
        Text = "1 / 10",
        TextColor3 = theme.Text,
        Font = Enum.Font.GothamMedium,
        TextSize = 12,
        Parent = container
    })
    
    -- Next button
    local nextBtn = CreateInstance("TextButton", {
        Name = "NextButton",
        Size = UDim2.new(0, 32, 1, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Text = ">",
        TextColor3 = theme.Text,
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        Parent = container
    })
    
    local nextCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 4),
        Parent = nextBtn
    })
    
    local function updatePage()
        pageLabel.Text = string.format("%d / %d", pagination.Page, pagination.TotalPages)
        prevBtn.Active = pagination.Page > 1
        nextBtn.Active = pagination.Page < pagination.TotalPages
    end
    
    prevBtn.MouseButton1Click:Connect(function()
        if pagination.Page > 1 then
            pagination.Page = pagination.Page - 1
            updatePage()
            if options.OnPageChange then
                options.OnPageChange(pagination.Page)
            end
        end
    end)
    
    nextBtn.MouseButton1Click:Connect(function()
        if pagination.Page < pagination.TotalPages then
            pagination.Page = pagination.Page + 1
            updatePage()
            if options.OnPageChange then
                options.OnPageChange(pagination.Page)
            end
        end
    end)
    
    function pagination:SetTotalPages(total)
        pagination.TotalPages = total
        updatePage()
    end
    
    function pagination:SetPage(page)
        pagination.Page = math.clamp(page, 1, pagination.TotalPages)
        updatePage()
    end
    
    pagination.Frame = container
    
    return pagination
end

-- TreeView Component
function AetherUI:CreateTreeView(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local treeView = {
        Nodes = {}
    }
    
    local container = CreateInstance("ScrollingFrame", {
        Name = options.Name or "TreeView",
        Size = options.Size or UDim2.new(1, 0, 0, 200),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 2),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingLeft = UDim.new(0, 8),
        Parent = container
    end)
    
    function treeView:AddNode(options)
        options = options or {}
        
        local node = {
            Name = options.Name,
            Children = {},
            Expanded = false,
            Level = options.Level or 0
        }
        
        local nodeFrame = CreateInstance("Frame", {
            Name = options.Name,
            Size = UDim2.new(1, 0, 0, 28),
            BackgroundTransparency = 1,
            Parent = container
        })
        
        local paddingLeft = CreateInstance("UIPadding", {
            PaddingLeft = UDim.new(0, options.Level * 16),
            Parent = nodeFrame
        })
        
        -- Expand button
        local expandBtn = CreateInstance("TextButton", {
            Name = "ExpandButton",
            Size = UDim2.new(0, 16, 0, 16),
            Position = UDim2.new(0, 0, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 1,
            Text = options.Children and "+" or "",
            TextColor3 = theme.TextSecondary,
            Font = Enum.Font.GothamBold,
            TextSize = 12,
            Parent = nodeFrame
        })
        
        -- Label
        local label = CreateInstance("TextButton", {
            Name = "Label",
            Size = UDim2.new(1, -20, 1, 0),
            Position = UDim2.new(0, 20, 0, 0),
            BackgroundTransparency = 1,
            Text = options.Name,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 13,
            AutoButtonColor = false,
            Parent = nodeFrame
        })
        
        if options.Icon then
            local icon = CreateInstance("ImageLabel", {
                Name = "Icon",
                Size = UDim2.new(0, 14, 0, 14),
                Position = UDim2.new(0, 22, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5),
                Image = options.Icon,
                ImageColor3 = theme.TextSecondary,
                BackgroundTransparency = 1,
                Parent = nodeFrame
            })
        end
        
        local childrenContainer = CreateInstance("Frame", {
            Name = "Children",
            Size = UDim2.new(1, 0, 0, 0),
            Visible = false,
            BackgroundTransparency = 1,
            Parent = container
        })
        
        local childrenList = CreateInstance("UIListLayout", {
            Padding = UDim.new(0, 2),
            Parent = childrenContainer
        })
        
        expandBtn.MouseButton1Click:Connect(function()
            node.Expanded = not node.Expanded
            expandBtn.Text = node.Expanded and "-" or "+"
            childrenContainer.Visible = node.Expanded
        end)
        
        label.MouseButton1Click:Connect(function()
            if options.OnClick then
                options.OnClick(node)
            end
        end)
        
        node.Frame = nodeFrame
        node.ChildrenContainer = childrenContainer
        
        table.insert(treeView.Nodes, node)
        
        return node
    end
    
    treeView.Frame = container
    
    return treeView
end

-- List Component
function AetherUI:CreateList(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local listView = {
        Items = {},
        SelectedItem = nil
    }
    
    local container = CreateInstance("ScrollingFrame", {
        Name = options.Name or "List",
        Size = options.Size or UDim2.new(1, 0, 0, 200),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, options.Spacing or 2),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 4),
        Parent = container
    })
    
    function listView:AddItem(options)
        options = options or {}
        
        local item = {
            Data = options.Data,
            Index = #listView.Items + 1
        }
        
        local itemFrame = CreateInstance("TextButton", {
            Name = "ListItem",
            Size = UDim2.new(1, 0, 0, options.Height or 40),
            BackgroundColor3 = theme.Surface,
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Text = "",
            Parent = container
        })
        
        local itemCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 4),
            Parent = itemFrame
        })
        
        local content = CreateInstance("TextLabel", {
            Name = "Content",
            Size = UDim2.new(1, -12, 1, 0),
            Position = UDim2.new(0, 12, 0, 0),
            BackgroundTransparency = 1,
            Text = options.Text or "",
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 13,
            Parent = itemFrame
        })
        
        itemFrame.MouseButton1Click:Connect(function()
            listView:SelectItem(item)
            if options.OnClick then
                options.OnClick(item)
            end
        end)
        
        itemFrame.MouseEnter:Connect(function()
            Tween(itemFrame, { BackgroundTransparency = 0.7 }, 0.1)
        end)
        
        itemFrame.MouseLeave:Connect(function()
            if listView.SelectedItem ~= item then
                Tween(itemFrame, { BackgroundTransparency = 1 }, 0.1)
            end
        end)
        
        item.Frame = itemFrame
        table.insert(listView.Items, item)
        
        return item
    end
    
    function listView:SelectItem(item)
        -- Deselect previous
        if listView.SelectedItem then
            Tween(listView.SelectedItem.Frame, { BackgroundTransparency = 1 }, 0.1)
        end
        
        listView.SelectedItem = item
        
        if item then
            Tween(item.Frame, { BackgroundTransparency = 0.5 }, 0.1)
        end
    end
    
    function listView:Clear()
        for _, item in ipairs(listView.Items) do
            item.Frame:Destroy()
        end
        listView.Items = {}
        listView.SelectedItem = nil
    end
    
    listView.Frame = container
    
    return listView
end

-- ============================================
-- EXECUTOR SPECIFIC COMPONENTS
-- ============================================

-- Console Component
function AetherUI:CreateConsole(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local console = {
        Logs = {},
        Filter = "All"
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Console",
        Size = options.Size or UDim2.new(1, 0, 0, 200),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local headerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = header
    })
    
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(0, 100, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = "Console",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        Parent = header
    })
    
    -- Clear button
    local clearBtn = CreateInstance("TextButton", {
        Name = "ClearButton",
        Size = UDim2.new(0, 50, 0, 24),
        Position = UDim2.new(1, -62, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Text = "Clear",
        TextColor3 = theme.TextSecondary,
        Font = Enum.Font.Gotham,
        TextSize = 11,
        Parent = header
    })
    
    local clearCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 4),
        Parent = clearBtn
    })
    
    -- Log container
    local logContainer = CreateInstance("ScrollingFrame", {
        Name = "LogContainer",
        Size = UDim2.new(1, 0, 1, -32),
        Position = UDim2.new(0, 0, 0, 32),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = container
    })
    
    local logList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 2),
        Parent = logContainer
    })
    
    local logPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = logContainer
    })
    
    -- Functions
    local function addLog(message, logType)
        local timestamp = os.date("%H:%M:%S")
        local color = theme.Text
        
        if logType == "Error" then
            color = theme.Error
        elseif logType == "Warning" then
            color = theme.Warning
        elseif logType == "Success" then
            color = theme.Success
        elseif logType == "Info" then
            color = theme.Info
        end
        
        local logFrame = CreateInstance("Frame", {
            Name = "Log",
            Size = UDim2.new(1, 0, 0, 24),
            BackgroundTransparency = 1,
            Parent = logContainer
        })
        
        local typeLabel = CreateInstance("TextLabel", {
            Name = "Type",
            Size = UDim2.new(0, 60, 1, 0),
            BackgroundTransparency = 1,
            Text = string.format("[%s]", logType or "Info"),
            TextColor3 = color,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamBold,
            TextSize = 10,
            Parent = logFrame
        })
        
        local timeLabel = CreateInstance("TextLabel", {
            Name = "Time",
            Size = UDim2.new(0, 60, 1, 0),
            Position = UDim2.new(0, 60, 0, 0),
            BackgroundTransparency = 1,
            Text = timestamp,
            TextColor3 = theme.TextMuted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 10,
            Parent = logFrame
        })
        
        local messageLabel = CreateInstance("TextLabel", {
            Name = "Message",
            Size = UDim2.new(1, -130, 1, 0),
            Position = UDim2.new(0, 125, 0, 0),
            BackgroundTransparency = 1,
            Text = tostring(message),
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 11,
            TextWrapped = true,
            Parent = logFrame
        })
        
        table.insert(console.Logs, logFrame)
        
        -- Auto scroll
        logContainer.CanvasPosition = Vector2.new(0, logContainer.CanvasSize.Y)
    end
    
    clearBtn.MouseButton1Click:Connect(function()
        for _, log in ipairs(console.Logs) do
            log:Destroy()
        end
        console.Logs = {}
    end)
    
    -- Default methods
    function console:Log(message)
        addLog(message, "Log")
    end
    
    function console:Error(message)
        addLog(message, "Error")
    end
    
    function console:Warning(message)
        addLog(message, "Warning")
    end
    
    function console:Success(message)
        addLog(message, "Success")
    end
    
    function console:Info(message)
        addLog(message, "Info")
    end
    
    console.Frame = container
    
    return console
end

-- ScriptEditor Component
function AetherUI:CreateScriptEditor(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local editor = {
        Content = "",
        LineNumbers = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "ScriptEditor",
        Size = options.Size or UDim2.new(1, 0, 0, 300),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local headerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = header
    })
    
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(0, 100, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = "Script Editor",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        Parent = header
    })
    
    -- Line numbers
    local lineNumbers = CreateInstance("ScrollingFrame", {
        Name = "LineNumbers",
        Size = UDim2.new(0, 40, 1, -32),
        Position = UDim2.new(0, 0, 0, 32),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        ScrollBarThickness = 0,
        Parent = container
    })
    
    local lineList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 0),
        Parent = lineNumbers
    })
    
    -- Generate line numbers
    for i = 1, 50 do
        local lineNum = CreateInstance("TextLabel", {
            Name = "Line" .. i,
            Size = UDim2.new(1, 0, 0, 18),
            BackgroundTransparency = 1,
            Text = tostring(i),
            TextColor3 = theme.TextMuted,
            TextXAlignment = Enum.TextXAlignment.Right,
            Font = Enum.Font.Code,
            TextSize = 12,
            Parent = lineNumbers
        })
        
        local linePadding = CreateInstance("UIPadding", {
            PaddingRight = UDim.new(0, 8),
            Parent = lineNum
        })
        
        table.insert(editor.LineNumbers, lineNum)
    end
    
    -- Editor input
    local editorInput = CreateInstance("TextBox", {
        Name = "EditorInput",
        Size = UDim2.new(1, -48, 1, -40),
        Position = UDim2.new(0, 44, 0, 36),
        BackgroundTransparency = 1,
        Text = "",
        PlaceholderText = "-- Write your Lua script here...",
        PlaceholderColor3 = theme.TextMuted,
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        Font = Enum.Font.Code,
        TextSize = 12,
        TextWrapped = true,
        MultiLine = true,
        Parent = container
    })
    
    local editorPadding = CreateInstance("UIPadding", {
        PaddingLeft = UDim.new(0, 8),
        PaddingTop = UDim.new(0, 4),
        Parent = editorInput
    })
    
    -- Sync scroll
    editorInput.Changed:Connect(function(prop)
        if prop == "CanvasPosition" then
            lineNumbers.CanvasPosition = editorInput.CanvasPosition
        end
    end)
    
    -- Update line numbers based on content
    editorInput.Changed:Connect(function(prop)
        if prop == "Text" then
            local lines = #editorInput:split("\n")
            
            -- Adjust line number count
            while #editor.LineNumbers < lines do
                local i = #editor.LineNumbers + 1
                local lineNum = CreateInstance("TextLabel", {
                    Name = "Line" .. i,
                    Size = UDim2.new(1, 0, 0, 18),
                    BackgroundTransparency = 1,
                    Text = tostring(i),
                    TextColor3 = theme.TextMuted,
                    TextXAlignment = Enum.TextXAlignment.Right,
                    Font = Enum.Font.Code,
                    TextSize = 12,
                    Parent = lineNumbers
                })
                
                local linePadding = CreateInstance("UIPadding", {
                    PaddingRight = UDim.new(0, 8),
                    Parent = lineNum
                })
                
                table.insert(editor.LineNumbers, lineNum)
            end
            
            -- Hide extra line numbers
            for i, lineNum in ipairs(editor.LineNumbers) do
                lineNum.Visible = i <= lines
            end
        end
    end)
    
    function editor:GetText()
        return editorInput.Text
    end
    
    function editor:SetText(text)
        editorInput.Text = text
    end
    
    function editor:Clear()
        editorInput.Text = ""
    end
    
    function editor:Execute()
        if editorInput.Text and #editorInput.Text > 0 then
            local success, err = pcall(loadstring, editorInput.Text)
            if success then
                Logger:Log("Script executed successfully", "Success")
            else
                Logger:Log("Script error: " .. tostring(err), "Error")
            end
        end
    end
    
    editor.Frame = container
    
    return editor
end

-- ScriptLibrary Component
function AetherUI:CreateScriptLibrary(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local library = {
        Scripts = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "ScriptLibrary",
        Size = options.Size or UDim2.new(1, 0, 0, 250),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 36),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local headerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = header
    })
    
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, -80, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = "Script Library",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 13,
        Parent = header
    })
    
    -- Add button
    local addBtn = CreateInstance("TextButton", {
        Name = "AddButton",
        Size = UDim2.new(0, 24, 0, 24),
        Position = UDim2.new(1, -60, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = theme.Primary,
        BorderSizePixel = 0,
        Text = "+",
        TextColor3 = Color3.new(1, 1, 1),
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        Parent = header
    })
    
    local addCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 4),
        Parent = addBtn
    })
    
    -- Script list
    local scriptList = CreateInstance("ScrollingFrame", {
        Name = "ScriptList",
        Size = UDim2.new(1, 0, 1, -36),
        Position = UDim2.new(0, 0, 0, 36),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = container
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 4),
        Parent = scriptList
    })
    
    local listPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = scriptList
    end)
    
    function library:AddScript(name, code, category)
        category = category or "Uncategorized"
        
        local scriptFrame = CreateInstance("Frame", {
            Name = name,
            Size = UDim2.new(1, 0, 0, 50),
            BackgroundColor3 = theme.Background,
            BackgroundTransparency = 0.8,
            BorderSizePixel = 0,
            Parent = scriptList
        })
        
        local scriptCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 2),
            Parent = scriptFrame
        })
        
        local scriptName = CreateInstance("TextLabel", {
            Name = "Name",
            Size = UDim2.new(1, -60, 0, 25),
            BackgroundTransparency = 1,
            Text = name,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = scriptFrame
        })
        
        local scriptCategory = CreateInstance("TextLabel", {
            Name = "Category",
            Size = UDim2.new(1, -60, 0, 20),
            Position = UDim2.new(0, 0, 0, 25),
            BackgroundTransparency = 1,
            Text = category,
            TextColor3 = theme.TextMuted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 10,
            Parent = scriptFrame
        })
        
        -- Load button
        local loadBtn = CreateInstance("TextButton", {
            Name = "LoadButton",
            Size = UDim2.new(0, 50, 0, 24),
            Position = UDim2.new(1, -55, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundColor3 = theme.Primary,
            BorderSizePixel = 0,
            Text = "Load",
            TextColor3 = Color3.new(1, 1, 1),
            Font = Enum.Font.GothamMedium,
            TextSize = 11,
            Parent = scriptFrame
        })
        
        local loadCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 4),
            Parent = loadBtn
        })
        
        loadBtn.MouseButton1Click:Connect(function()
            if options.OnLoad then
                options.OnLoad(name, code)
            end
        end)
        
        table.insert(library.Scripts, {
            Name = name,
            Code = code,
            Category = category,
            Frame = scriptFrame
        })
    end
    
    -- Add sample scripts
    library:AddScript("Infinite Jump", "-- Infinite Jump\nlocal Player = game:GetService(\"Players\").LocalPlayer\nlocal UIS = game:GetService(\"UserInputService\")\n\nlocal function jump()\n    local char = Player.Character\n    if char and char:FindFirstChild(\"Humanoid\") then\n        char.Humanoid.Jump = true\n    end\nend\n\nUIS.InputBegan:Connect(function(input)\n    if input.KeyCode == Enum.KeyCode.Space then\n        jump()\n    end\nend)", "Fun")
    
    library:AddScript("Speed Hack", "-- Speed Hack\nlocal Player = game:GetService(\"Players\").LocalPlayer\nlocal function setSpeed(speed)\n    local char = Player.Character\n    if char and char:FindFirstChild(\"Humanoid\") then\n        char.Humanoid.WalkSpeed = speed\n    end\nend\nsetSpeed(32)", "Scripts")
    
    library:AddScript("ESP", "-- ESP (Simple)\nlocal Players = game:GetService(\"Players\")\n\nfor _, v in pairs(Players:GetPlayers()) do\n    if v ~= Players.LocalPlayer then\n        -- Add ESP highlights here\n    end\nend", "Visual")
    
    library.Frame = container
    
    return library
end

-- SettingsPanel Component
function AetherUI:CreateSettingsPanel(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local settings = {}
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "SettingsPanel",
        Size = options.Size or UDim2.new(1, 0, 0, 400),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 8),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingTop = UDim.new(0, 4),
        Parent = container
    end)
    
    -- Title
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundTransparency = 1,
        Text = "Settings",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        Parent = container
    })
    
    -- Theme setting
    local themeLabel = CreateInstance("TextLabel", {
        Name = "ThemeLabel",
        Size = UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Text = "Theme",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamMedium,
        TextSize = 13,
        Parent = container
    })
    
    local themeDropdown = AetherUI:CreateDropdown({
        Name = "ThemeDropdown",
        Placeholder = "Select Theme",
        Options = {"SequoiaDark", "SequoiaLight", "Midnight", "Ocean"},
        Callback = function(value)
            AetherUI:SetTheme(value)
            if options.OnThemeChange then
                options.OnThemeChange(value)
            end
        end
    }, container)
    
    -- Scale setting
    local scaleLabel = CreateInstance("TextLabel", {
        Name = "ScaleLabel",
        Size = UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Text = "UI Scale",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamMedium,
        TextSize = 13,
        Parent = container
    })
    
    local scaleSlider = AetherUI:CreateSlider({
        Name = "ScaleSlider",
        Text = "",
        Min = 50,
        Max = 150,
        Value = 100,
        Callback = function(value)
            AetherUI.Settings.Scale = value / 100
            if options.OnScaleChange then
                options.OnScaleChange(value / 100)
            end
        end
    }, container)
    
    -- Timestamps toggle
    local timestampsToggle = AetherUI:CreateToggle({
        Name = "TimestampsToggle",
        Text = "Show Timestamps",
        Value = AetherUI.Settings.ShowTimestamps,
        Callback = function(value)
            AetherUI.Settings.ShowTimestamps = value
        end
    }, container)
    
    -- Auto execute toggle
    local autoExecToggle = AetherUI:CreateToggle({
        Name = "AutoExecuteToggle",
        Text = "Auto Execute Scripts",
        Value = AetherUI.Settings.AutoExecute,
        Callback = function(value)
            AetherUI.Settings.AutoExecute = value
        end
    }, container)
    
    -- Notifications toggle
    local notifToggle = AetherUI:CreateToggle({
        Name = "NotificationsToggle",
        Text = "Notifications",
        Value = AetherUI.Settings.Notifications,
        Callback = function(value)
            AetherUI.Settings.Notifications = value
        end
    }, container)
    
    -- Sound effects toggle
    local soundToggle = AetherUI:CreateToggle({
        Name = "SoundToggle",
        Text = "Sound Effects",
        Value = AetherUI.Settings.SoundEffects,
        Callback = function(value)
            AetherUI.Settings.SoundEffects = value
        end
    }, container)
    
    -- Version info
    local versionLabel = CreateInstance("TextLabel", {
        Name = "Version",
        Size = UDim2.new(1, 0, 0, 20),
        Position = UDim2.new(0, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = "AetherUI v" .. AetherUI.Version,
        TextColor3 = theme.TextMuted,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 10,
        Parent = container
    })
    
    settings.Frame = container
    
    return settings
end

-- ============================================
-- EFFECT COMPONENTS
-- ============================================

-- GlowEffect Component
function AetherUI:CreateGlowEffect(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local glow = CreateInstance("Frame", {
        Name = options.Name or "GlowEffect",
        Size = options.Size or UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    -- Create glow layers
    for i = 1, 3 do
        local glowLayer = CreateInstance("Frame", {
            Name = "GlowLayer" .. i,
            Size = UDim2.new(1, i * 8, 1, i * 8),
            Position = UDim2.new(0, -i * 4, 0, -i * 4),
            BackgroundColor3 = options.Color or theme.Primary,
            BackgroundTransparency = 1 - (i * 0.25),
            BorderSizePixel = 0,
            Parent = glow
        })
        
        local corner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius + i * 4),
            Parent = glowLayer
        })
    end
    
    return {
        Frame = glow
    }
end

-- ParticleBackground Component
function AetherUI:CreateParticleBackground(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "ParticleBackground",
        Size = options.Size or UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local particles = {}
    local particleCount = options.ParticleCount or 20
    
    for i = 1, particleCount do
        local particle = CreateInstance("Frame", {
            Name = "Particle" .. i,
            Size = UDim2.new(0, math.random(4, 12), 0, math.random(4, 12)),
            Position = UDim2.new(math.random(), 0, math.random(), 0),
            BackgroundColor3 = options.Color or theme.Primary,
            BackgroundTransparency = math.random(5, 9) / 10,
            BorderSizePixel = 0,
            Parent = container
        })
        
        local corner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0.5, 0),
            Parent = particle
        })
        
        table.insert(particles, {
            Frame = particle,
            SpeedX = math.random(-2, 2) / 10,
            SpeedY = math.random(-2, 2) / 10
        })
    end
    
    -- Animate particles
    task.spawn(function()
        while true do
            for _, particle in ipairs(particles) do
                local pos = particle.Frame.Position
                local newX = pos.X.Scale + particle.SpeedX
                local newY = pos.Y.Scale + particle.SpeedY
                
                if newX < 0 or newX > 1 then
                    particle.SpeedX = -particle.SpeedX
                end
                if newY < 0 or newY > 1 then
                    particle.SpeedY = -particle.SpeedY
                end
                
                particle.Frame.Position = UDim2.new(
                    math.clamp(newX, 0, 1),
                    0,
                    math.clamp(newY, 0, 1),
                    0
                )
            end
            task.wait(0.05)
        end
    end)
    
    return {
        Frame = container,
        Particles = particles
    }
end

-- BlurOverlay Component
function AetherUI:CreateBlurOverlay(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local blur = CreateInstance("Frame", {
        Name = options.Name or "BlurOverlay",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundColor3 = theme.Background,
        BackgroundTransparency = 0.7,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    -- Note: Actual blur requires special handling in Roblox
    -- This is a simulated effect
    
    return {
        Frame = blur,
        SetVisible = function(visible)
            blur.Visible = visible
        end
    }
end

-- GradientBorder Component
function AetherUI:CreateGradientBorder(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "GradientBorder",
        Size = options.Size or UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local gradient = CreateInstance("UIGradient", {
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, theme.Primary),
            ColorSequenceKeypoint.new(0.5, theme.Secondary),
            ColorSequenceKeypoint.new(1, theme.Accent)
        },
        Rotation = options.Rotation or 45,
        Parent = container
    })
    
    local innerBg = CreateInstance("Frame", {
        Name = "InnerBackground",
        Size = UDim2.new(1, -4, 1, -4),
        Position = UDim2.new(0, 2, 0, 2),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local innerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = innerBg
    })
    
    return {
        Frame = container,
        InnerFrame = innerBg
    }
end

-- AnimatedContainer Component
function AetherUI:CreateAnimatedContainer(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "AnimatedContainer",
        Size = options.Size or UDim2.new(1, 0, 0, 100),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Visible = false,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    local content = CreateInstance("Frame", {
        Name = "Content",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 12),
        Parent = content
    })

    
    local function show()
        container.Visible = true
        container.Size = UDim2.new(1, 0, 0, 0)
        
        local targetHeight = options.TargetHeight or 100
        
        Tween(container, {
            Size = UDim2.new(1, 0, 0, targetHeight)
        }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    end
    
    local function hide()
        Tween(container, {
            Size = UDim2.new(1, 0, 0, 0)
        }, 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
        
        task.wait(0.2)
        container.Visible = false
    end
    
    return {
        Frame = container,
        Content = content,
        Show = show,
        Hide = hide,
        Toggle = function()
            if container.Visible then
                hide()
            else
                show()
            end
        end
    }
end

-- ============================================
-- ADDITIONAL DISPLAY COMPONENTS
-- ============================================

-- RichText Component
function AetherUI:CreateRichText(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local richText = CreateInstance("TextLabel", {
        Name = options.Name or "RichText",
        Size = options.Size or UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Text = options.Text or "",
        TextColor3 = theme.Text,
        TextXAlignment = options.Alignment or Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 13,
        RichText = true,
        Parent = parent
    })
    
    return {
        Frame = richText,
        SetText = function(text)
            richText.Text = text
        end
    }
end

-- CodeBlock Component
function AetherUI:CreateCodeBlock(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local codeBlock = CreateInstance("Frame", {
        Name = options.Name or "CodeBlock",
        Size = options.Size or UDim2.new(1, 0, 0, 100),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local codeCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = codeBlock
    })
    
    local codeLabel = CreateInstance("TextLabel", {
        Name = "Code",
        Size = UDim2.new(1, -16, 1, -16),
        Position = UDim2.new(0, 8, 0, 8),
        BackgroundTransparency = 1,
        Text = options.Code or "",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        Font = Enum.Font.Code,
        TextSize = 11,
        TextWrapped = true,
        Parent = codeBlock
    })
    
    return {
        Frame = codeBlock,
        SetCode = function(code)
            codeLabel.Text = code
        end
    }
end

-- Chart Component (Simple bar chart)
function AetherUI:CreateChart(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local chart = {
        Data = options.Data or {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Chart",
        Size = options.Size or UDim2.new(1, 0, 0, 150),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local chartBg = CreateInstance("Frame", {
        Name = "ChartBackground",
        Size = UDim2.new(1, 0, 1, -20),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local bgCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = chartBg
    })
    
    -- Title
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, 0, 0, 16),
        BackgroundTransparency = 1,
        Text = options.Title or "Chart",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamMedium,
        TextSize = 12,
        Parent = container
    })
    
    -- Bars container
    local barsContainer = CreateInstance("Frame", {
        Name = "Bars",
        Size = UDim2.new(1, -16, 1, -32),
        Position = UDim2.new(0, 8, 0, 24),
        BackgroundTransparency = 1,
        Parent = chartBg
    })
    
    local barsList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 4),
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.SpaceEvenly,
        Parent = barsContainer
    })
    
    function chart:SetData(data)
        chart.Data = data
        
        -- Clear existing bars
        for _, child in ipairs(barsContainer:GetChildren()) do
            if child:IsA("Frame") then
                child:Destroy()
            end
        end
        
        -- Create new bars
        for _, item in ipairs(data) do
            local barContainer = CreateInstance("Frame", {
                Name = item.Label or "Bar",
                Size = UDim2.new(0, 30, 1, 0),
                BackgroundTransparency = 1,
                Parent = barsContainer
            })
            
            local bar = CreateInstance("Frame", {
                Name = "Bar",
                Size = UDim2.new(1, 0, item.Value / 100, 0),
                Position = UDim2.new(0, 0, 1, 0),
                AnchorPoint = Vector2.new(0, 1),
                BackgroundColor3 = item.Color or theme.Primary,
                BorderSizePixel = 0,
                Parent = barContainer
            })
            
            local barCorner = CreateInstance("UICorner", {
                CornerRadius = UDim.new(0, 4),
                Parent = bar
            })
            
            local label = CreateInstance("TextLabel", {
                Name = "Label",
                Size = UDim2.new(1, 0, 0, 16),
                Position = UDim2.new(0, 0, 1, 0),
                BackgroundTransparency = 1,
                Text = item.Label or "",
                TextColor3 = theme.TextSecondary,
                TextXAlignment = Enum.TextXAlignment.Center,
                Font = Enum.Font.Gotham,
                TextSize = 9,
                Parent = barContainer
            })
        end
    end
    
    chart:SetData(chart.Data)
    
    chart.Frame = container
    
    return chart
end

-- Calendar Component
function AetherUI:CreateCalendar(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local calendar = {
        SelectedDate = os.date("%Y-%m-%d")
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Calendar",
        Size = options.Size or UDim2.new(0, 250, 0, 280),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundColor3 = theme.Primary,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local headerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = header
    })
    
    -- Hide corners effect
    local hideCorner = CreateInstance("Frame", {
        Name = "HideCorner",
        Size = UDim2.new(1, 0, 0, 10),
        Position = UDim2.new(0, 0, 1, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local monthLabel = CreateInstance("TextLabel", {
        Name = "MonthLabel",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = os.date("%B %Y"),
        TextColor3 = Color3.new(1, 1, 1),
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        Parent = header
    })
    
    -- Day names
    local daysFrame = CreateInstance("Frame", {
        Name = "DaysFrame",
        Size = UDim2.new(1, -16, 0, 24),
        Position = UDim2.new(0, 8, 0, 48),
        BackgroundTransparency = 1,
        Parent = container
    })
    
    local days = {"Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"}
    local dayWidth = 1 / 7
    
    for i, day in ipairs(days) do
        local dayLabel = CreateInstance("TextLabel", {
            Name = day,
            Size = UDim2.new(dayWidth, 0, 1, 0),
            Position = UDim2.new(dayWidth * (i - 1), 0, 0, 0),
            BackgroundTransparency = 1,
            Text = day,
            TextColor3 = theme.TextMuted,
            TextXAlignment = Enum.TextXAlignment.Center,
            Font = Enum.Font.GothamMedium,
            TextSize = 10,
            Parent = daysFrame
        })
    end
    
    -- Calendar grid (simplified - shows current month)
    local gridFrame = CreateInstance("Frame", {
        Name = "GridFrame",
        Size = UDim2.new(1, -16, 1, -80),
        Position = UDim2.new(0, 8, 0, 76),
        BackgroundTransparency = 1,
        Parent = container
    })
    
    calendar.Frame = container
    
    return calendar
end

-- StatCard Component
function AetherUI:CreateStatCard(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local statCard = CreateInstance("Frame", {
        Name = options.Name or "StatCard",
        Size = options.Size or UDim2.new(0, 150, 0, 80),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local cardCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = statCard
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 16),
        Parent = statCard
    })
    
    local valueLabel = CreateInstance("TextLabel", {
        Name = "Value",
        Size = UDim2.new(1, 0, 0, 30),
        BackgroundTransparency = 1,
        Text = options.Value or "0",
        TextColor3 = options.Color or theme.Primary,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 24,
        Parent = statCard
    })
    
    local label = CreateInstance("TextLabel", {
        Name = "Label",
        Size = UDim2.new(1, 0, 0, 20),
        Position = UDim2.new(0, 0, 0, 35),
        BackgroundTransparency = 1,
        Text = options.Label or "Stat",
        TextColor3 = theme.TextSecondary,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        Parent = statCard
    })
    
    local component = {
        Frame = statCard,
        SetValue = function(value)
            valueLabel.Text = tostring(value)
        end,
        SetLabel = function(text)
            label.Text = text
        end
    }
    
    return component
end

-- Table Component
function AetherUI:CreateTable(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local tableView = {
        Columns = options.Columns or {},
        Rows = {}
    }
    
    local container = CreateInstance("ScrollingFrame", {
        Name = options.Name or "Table",
        Size = options.Size or UDim2.new(1, 0, 0, 200),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = parent
    })
    
    local containerList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 1),
        Parent = container
    })
    
    -- Header row
    local headerRow = CreateInstance("Frame", {
        Name = "HeaderRow",
        Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local headerList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 0),
        FillDirection = Enum.FillDirection.Horizontal,
        Parent = headerRow
    })
    
    for _, col in ipairs(tableView.Columns) do
        local colHeader = CreateInstance("TextLabel", {
            Name = col,
            Size = UDim2.new(1 / #tableView.Columns, 0, 1, 0),
            BackgroundTransparency = 1,
            Text = col,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Center,
            Font = Enum.Font.GothamBold,
            TextSize = 11,
            Parent = headerRow
        })
    end
    
    function tableView:AddRow(data)
        local row = CreateInstance("Frame", {
            Name = "Row",
            Size = UDim2.new(1, 0, 0, 32),
            BackgroundColor3 = theme.Background,
            BackgroundTransparency = 0.9,
            BorderSizePixel = 0,
            Parent = container
        })
        
        local rowList = CreateInstance("UIListLayout", {
            Padding = UDim.new(0, 0),
            FillDirection = Enum.FillDirection.Horizontal,
            Parent = row
        })
        
        for i, col in ipairs(tableView.Columns) do
            local cell = CreateInstance("TextLabel", {
                Name = col,
                Size = UDim2.new(1 / #tableView.Columns, 0, 1, 0),
                BackgroundTransparency = 1,
                Text = tostring(data[col] or ""),
                TextColor3 = theme.TextSecondary,
                TextXAlignment = Enum.TextXAlignment.Center,
                Font = Enum.Font.Gotham,
                TextSize = 11,
                Parent = row
            })
        end
        
        table.insert(tableView.Rows, row)
    end
    
    tableView.Frame = container
    
    return tableView
end

-- ============================================
-- TOOL COMPONENTS
-- ============================================

-- HTTPRequest Component
function AetherUI:CreateHTTPRequest(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local http = {}
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "HTTPRequest",
        Size = options.Size or UDim2.new(1, 0, 0, 200),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 12),
        Parent = container
    })
    
    -- Title
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundTransparency = 1,
        Text = "HTTP Request",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 13,
        Parent = container
    })
    
    -- URL input
    local urlInput = AetherUI:CreateInput({
        Name = "URLInput",
        Label = "URL",
        Placeholder = "https://api.example.com/data"
    }, container)
    
    urlInput.Frame.Size = UDim2.new(1, 0, 0, 56)
    
    -- Method dropdown
    local methodDropdown = AetherUI:CreateDropdown({
        Name = "MethodDropdown",
        Options = {"GET", "POST", "PUT", "DELETE"},
        Callback = function(method)
            http.Method = method
        end
    }, container)
    
    methodDropdown.Frame.Size = UDim2.new(0, 80, 0, 36)
    methodDropdown.Frame.Position = UDim2.new(0, 0, 0, 60)
    
    -- Send button
    local sendBtn = AetherUI:CreateButton({
        Name = "SendButton",
        Text = "Send",
        Variant = "Primary"
    }, container)
    
    sendBtn.Frame.Size = UDim2.new(0, 80, 0, 32)
    sendBtn.Frame.Position = UDim2.new(1, -80, 0, 60)
    
    -- Response area
    local responseLabel = CreateInstance("TextLabel", {
        Name = "ResponseLabel",
        Size = UDim2.new(1, 0, 0, 60),
        Position = UDim2.new(0, 0, 0, 100),
        BackgroundColor3 = theme.Background,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Text = "Response will appear here...",
        TextColor3 = theme.TextMuted,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        Font = Enum.Font.Code,
        TextSize = 10,
        TextWrapped = true,
        Parent = container
    })
    
    local responseCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = responseLabel
    })
    
    sendBtn.OnClick:Connect(function()
        local url = urlInput.GetValue()
        if url and #url > 0 then
            responseLabel.Text = "Loading..."
            local success, response = pcall(function()
                return game:HttpGet(url)
            end)
            
            if success then
                responseLabel.Text = response
                responseLabel.TextColor3 = theme.Success
            else
                responseLabel.Text = "Error: " .. tostring(response)
                responseLabel.TextColor3 = theme.Error
            end
        end
    end)
    
    http.Frame = container
    
    return http
end

-- JSONFormatter Component
function AetherUI:CreateJSONFormatter(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local formatter = {}
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "JSONFormatter",
        Size = options.Size or UDim2.new(1, 0, 0, 250),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 12),
        Parent = container
    })
    
    -- Title
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundTransparency = 1,
        Text = "JSON Formatter",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 13,
        Parent = container
    })
    
    -- Input
    local inputLabel = CreateInstance("TextLabel", {
        Name = "InputLabel",
        Size = UDim2.new(1, 0, 0, 16),
        Position = UDim2.new(0, 0, 0, 28),
        BackgroundTransparency = 1,
        Text = "Input:",
        TextColor3 = theme.TextSecondary,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamMedium,
        TextSize = 11,
        Parent = container
    })
    
    local inputBg = CreateInstance("Frame", {
        Name = "InputBackground",
        Size = UDim2.new(1, 0, 0, 60),
        Position = UDim2.new(0, 0, 0, 46),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local inputCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = inputBg
    })
    
    local inputText = CreateInstance("TextBox", {
        Name = "Input",
        Size = UDim2.new(1, -16, 1, -8),
        Position = UDim2.new(0, 8, 0, 4),
        BackgroundTransparency = 1,
        Text = "",
        PlaceholderText = '{"key": "value"}',
        PlaceholderColor3 = theme.TextMuted,
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        Font = Enum.Font.Code,
        TextSize = 10,
        TextWrapped = true,
        Parent = inputBg
    })
    
    -- Buttons
    local buttonFrame = CreateInstance("Frame", {
        Name = "Buttons",
        Size = UDim2.new(1, 0, 0, 32),
        Position = UDim2.new(0, 0, 0, 110),
        BackgroundTransparency = 1,
        Parent = container
    })
    
    local buttonList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 8),
        FillDirection = Enum.FillDirection.Horizontal,
        Parent = buttonFrame
    })
    
    local formatBtn = AetherUI:CreateButton({
        Name = "FormatButton",
        Text = "Format",
        Variant = "Primary"
    }, buttonFrame)
    
    local encodeBtn = AetherUI:CreateButton({
        Name = "EncodeButton",
        Text = "Encode"
    }, buttonFrame)
    
    local decodeBtn = AetherUI:CreateButton({
        Name = "DecodeButton",
        Text = "Decode"
    }, buttonFrame)
    
    -- Output
    local outputLabel = CreateInstance("TextLabel", {
        Name = "OutputLabel",
        Size = UDim2.new(1, 0, 0, 16),
        Position = UDim2.new(0, 0, 0, 148),
        BackgroundTransparency = 1,
        Text = "Output:",
        TextColor3 = theme.TextSecondary,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamMedium,
        TextSize = 11,
        Parent = container
    })
    
    local outputBg = CreateInstance("Frame", {
        Name = "OutputBackground",
        Size = UDim2.new(1, 0, 0, 80),
        Position = UDim2.new(0, 0, 0, 166),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local outputCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = outputBg
    })
    
    local outputText = CreateInstance("TextLabel", {
        Name = "Output",
        Size = UDim2.new(1, -16, 1, -8),
        Position = UDim2.new(0, 8, 0, 4),
        BackgroundTransparency = 1,
        Text = "",
        TextColor3 = theme.Success,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        Font = Enum.Font.Code,
        TextSize = 10,
        TextWrapped = true,
        Parent = outputBg
    })
    
    formatBtn.OnClick:Connect(function()
        local success, result = pcall(function()
            local data = HttpService:JSONDecode(inputText.Text)
            return HttpService:JSONEncode(data)
        end)
        
        if success then
            outputText.Text = result
            outputText.TextColor3 = theme.Success
        else
            outputText.Text = "Error: Invalid JSON"
            outputText.TextColor3 = theme.Error
        end
    end)
    
    encodeBtn.OnClick:Connect(function()
        local success, result = pcall(function()
            return HttpService:JSONEncode(inputText.Text)
        end)
        
        if success then
            outputText.Text = result
            outputText.TextColor3 = theme.Success
        else
            outputText.Text = "Error: " .. tostring(result)
            outputText.TextColor3 = theme.Error
        end
    end)
    
    decodeBtn.OnClick:Connect(function()
        local success, result = pcall(function()
            return HttpService:JSONDecode(inputText.Text)
        end)
        
        if success then
            outputText.Text = tostring(result)
            outputText.TextColor3 = theme.Success
        else
            outputText.Text = "Error: " .. tostring(result)
            outputText.TextColor3 = theme.Error
        end
    end)
    
    formatter.Frame = container
    
    return formatter
end

-- ============================================
-- MORE NAVIGATION COMPONENTS
-- ============================================

-- Stepper Component (Multi-step wizard)
function AetherUI:CreateStepper(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local stepper = {
        CurrentStep = 1,
        Steps = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Stepper",
        Size = options.Size or UDim2.new(1, 0, 0, 150),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    -- Steps indicator
    local stepsContainer = CreateInstance("Frame", {
        Name = "StepsContainer",
        Size = UDim2.new(1, 0, 0, 40),
        BackgroundTransparency = 1,
        Parent = container
    })
    
    local stepsList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 8),
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        Parent = stepsContainer
    })
    
    -- Content area
    local contentArea = CreateInstance("Frame", {
        Name = "ContentArea",
        Size = UDim2.new(1, 0, 1, -50),
        Position = UDim2.new(0, 0, 0, 45),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local contentCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = contentArea
    })
    
    local contentPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 16),
        Parent = contentArea
    })
    
    function stepper:AddStep(name)
        local stepNum = #stepper.Steps + 1
        
        local stepIndicator = CreateInstance("Frame", {
            Name = "Step" .. stepNum,
            Size = UDim2.new(0, 30, 0, 30),
            BackgroundColor3 = stepNum == 1 and theme.Primary or theme.Surface,
            BorderSizePixel = 0,
            Parent = stepsContainer
        })
        
        local stepCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0.5, 0),
            Parent = stepIndicator
        })
        
        local stepNumLabel = CreateInstance("TextLabel", {
            Name = "StepNumber",
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundTransparency = 1,
            Text = tostring(stepNum),
            TextColor3 = stepNum == 1 and Color3.new(1,1,1) or theme.TextSecondary,
            Font = Enum.Font.GothamBold,
            TextSize = 12,
            Parent = stepIndicator
        })
        
        table.insert(stepper.Steps, {
            Name = name,
            Indicator = stepIndicator,
            NumberLabel = stepNumLabel,
            Content = nil
        })
        
        return stepNum
    end
    
    function stepper:Next()
        if stepper.CurrentStep < #stepper.Steps then
            stepper.CurrentStep = stepper.CurrentStep + 1
            stepper:UpdateSteps()
        end
    end
    
    function stepper:Previous()
        if stepper.CurrentStep > 1 then
            stepper.CurrentStep = stepper.CurrentStep - 1
            stepper:UpdateSteps()
        end
    end
    
    function stepper:UpdateSteps()
        for i, step in ipairs(stepper.Steps) do
            if i == stepper.CurrentStep then
                Tween(step.Indicator, { BackgroundColor3 = theme.Primary }, 0.2)
                Tween(step.NumberLabel, { TextColor3 = Color3.new(1,1,1) }, 0.2)
            elseif i < stepper.CurrentStep then
                Tween(step.Indicator, { BackgroundColor3 = theme.Success }, 0.2)
                Tween(step.NumberLabel, { TextColor3 = Color3.new(1,1,1) }, 0.2)
            else
                Tween(step.Indicator, { BackgroundColor3 = theme.Surface }, 0.2)
                Tween(step.NumberLabel, { TextColor3 = theme.TextSecondary }, 0.2)
            end
        end
    end
    
    stepper.Frame = container
    
    return stepper
end

-- Timeline Component
function AetherUI:CreateTimeline(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local timeline = {
        Items = {}
    }
    
    local container = CreateInstance("ScrollingFrame", {
        Name = options.Name or "Timeline",
        Size = options.Size or UDim2.new(1, 0, 0, 200),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 12),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingLeft = UDim.new(0, 16),
        Parent = container
    })
    
    function timeline:AddItem(options)
        options = options or {}
        
        local item = CreateInstance("Frame", {
            Name = options.Title or "TimelineItem",
            Size = UDim2.new(1, -30, 0, 60),
            BackgroundTransparency = 1,
            Parent = container
        })
        
        -- Timeline line
        local line = CreateInstance("Frame", {
            Name = "Line",
            Size = UDim2.new(0, 2, 1, 0),
            Position = UDim2.new(0, -12, 0, 0),
            BackgroundColor3 = options.Color or theme.Primary,
            BorderSizePixel = 0,
            Parent = item
        })
        
        -- Dot
        local dot = CreateInstance("Frame", {
            Name = "Dot",
            Size = UDim2.new(0, 12, 0, 12),
            Position = UDim2.new(0, -17, 0.2, 0),
            BackgroundColor3 = options.Color or theme.Primary,
            BorderSizePixel = 0,
            Parent = item
        })
        
        local dotCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0.5, 0),
            Parent = dot
        })
        
        -- Title
        local titleLabel = CreateInstance("TextLabel", {
            Name = "Title",
            Size = UDim2.new(1, 0, 0, 20),
            Position = UDim2.new(0, 8, 0, 0),
            BackgroundTransparency = 1,
            Text = options.Title or "",
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 13,
            Parent = item
        })
        
        -- Description
        local descLabel = CreateInstance("TextLabel", {
            Name = "Description",
            Size = UDim2.new(1, 0, 0, 30),
            Position = UDim2.new(0, 8, 0, 22),
            BackgroundTransparency = 1,
            Text = options.Description or "",
            TextColor3 = theme.TextSecondary,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 11,
            TextWrapped = true,
            Parent = item
        })
        
        -- Time
        local timeLabel = CreateInstance("TextLabel", {
            Name = "Time",
            Size = UDim2.new(1, 0, 0, 14),
            Position = UDim2.new(0, 8, 0, 46),
            BackgroundTransparency = 1,
            Text = options.Time or "",
            TextColor3 = theme.TextMuted,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 10,
            Parent = item
        })
        
        table.insert(timeline.Items, item)
    end
    
    timeline.Frame = container
    
    return timeline
end

-- ============================================
-- INPUT VARIANTS
-- ============================================

-- SegmentedControl Component
function AetherUI:CreateSegmentedControl(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local segmented = {
        Selected = options.Value or options.Options[1],
        Options = options.Options or {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "SegmentedControl",
        Size = options.Size or UDim2.new(0, 200, 0, 32),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = container
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 0),
        FillDirection = Enum.FillDirection.Horizontal,
        Parent = container
    })
    
    local segments = {}
    
    for i, option in ipairs(segmented.Options) do
        local isFirst = i == 1
        local isLast = i == #segmented.Options
        
        local segment = CreateInstance("TextButton", {
            Name = option,
            Size = UDim2.new(1 / #segmented.Options, 0, 1, 0),
            BackgroundColor3 = segmented.Selected == option and theme.Primary or Color3.new(),
            BackgroundTransparency = segmented.Selected == option and 0 or 1,
            BorderSizePixel = 0,
            Text = option,
            TextColor3 = segmented.Selected == option and Color3.new(1,1,1) or theme.TextSecondary,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = container
        })
        
        -- Corner handling for segmented look
        if isFirst then
            local corner = CreateInstance("UICorner", {
                CornerRadius = UDim.new(0, theme.CornerRadius - 4),
                Parent = segment
            })
        end
        
        segment.MouseButton1Click:Connect(function()
            segmented.Selected = option
            
            for _, seg in ipairs(segments) do
                if seg.Option == option then
                    Tween(seg.Frame, {
                        BackgroundTransparency = 0,
                        TextColor3 = Color3.new(1, 1, 1)
                    }, 0.15)
                else
                    Tween(seg.Frame, {
                        BackgroundTransparency = 1,
                        TextColor3 = theme.TextSecondary
                    }, 0.15)
                end
            end
            
            if options.Callback then
                options.Callback(option)
            end
        end)
        
        table.insert(segments, {
            Option = option,
            Frame = segment
        })
    end
    
    segmented.Frame = container
    
    return segmented
end

-- DatePicker Component
function AetherUI:CreateDatePicker(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local datePicker = {
        Value = os.date("%Y-%m-%d")
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "DatePicker",
        Size = options.Size or UDim2.new(0, 180, 0, 36),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    if options.Label then
        local label = CreateInstance("TextLabel", {
            Name = "Label",
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 1,
            Text = options.Label,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = container
        })
    end
    
    local button = CreateInstance("TextButton", {
        Name = "DatePickerButton",
        Size = UDim2.new(1, 0, 0, 32),
        Position = options.Label and UDim2.new(0, 0, 0, 18) or UDim2.new(0, 0, 0, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Text = datePicker.Value,
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 13,
        Parent = container
    })
    
    local buttonCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = button
    })
    
    local buttonPadding = CreateInstance("UIPadding", {
        PaddingLeft = UDim.new(0, 12),
        Parent = button
    })
    
    -- Calendar popup would go here (simplified)
    button.MouseButton1Click:Connect(function()
        -- Toggle calendar
    end)
    
    datePicker.Frame = container
    
    return datePicker
end

-- TimePicker Component
function AetherUI:CreateTimePicker(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local timePicker = {
        Value = os.date("%H:%M")
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "TimePicker",
        Size = options.Size or UDim2.new(0, 120, 0, 36),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    if options.Label then
        local label = CreateInstance("TextLabel", {
            Name = "Label",
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 1,
            Text = options.Label,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = container
        })
    end
    
    local button = CreateInstance("TextButton", {
        Name = "TimePickerButton",
        Size = UDim2.new(1, 0, 0, 32),
        Position = options.Label and UDim2.new(0, 0, 0, 18) or UDim2.new(0, 0, 0, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Text = timePicker.Value,
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 13,
        Parent = container
    })
    
    local buttonCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = button
    })
    
    timePicker.Frame = container
    
    return timePicker
end

-- DateRangePicker Component
function AetherUI:CreateDateRangePicker(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local rangePicker = {
        StartDate = nil,
        EndDate = nil
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "DateRangePicker",
        Size = options.Size or UDim2.new(0, 250, 0, 36),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    if options.Label then
        local label = CreateInstance("TextLabel", {
            Name = "Label",
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 1,
            Text = options.Label,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = container
        })
    end
    
    local button = CreateInstance("TextButton", {
        Name = "RangePickerButton",
        Size = UDim2.new(1, 0, 0, 32),
        Position = options.Label and UDim2.new(0, 0, 0, 18) or UDim2.new(0, 0, 0, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Text = "Select date range...",
        TextColor3 = theme.TextMuted,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 13,
        Parent = container
    })
    
    local buttonCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = button
    })
    
    rangePicker.Frame = container
    
    return rangePicker
end

-- ColorWheel Component
function AetherUI:CreateColorWheel(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local colorWheel = {
        Hue = 0,
        Saturation = 1,
        Value = 1
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "ColorWheel",
        Size = options.Size or UDim2.new(0, 150, 0, 150),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    -- Circular color picker (simplified)
    local wheelBg = CreateInstance("ImageLabel", {
        Name = "WheelBackground",
        Size = UDim2.new(1, 0, 1, 0),
        Image = "rbxassetid://11708027294",
        ImageColor3 = theme.Primary,
        BackgroundTransparency = 1,
        Parent = container
    })
    
    -- Selector
    local selector = CreateInstance("Frame", {
        Name = "Selector",
        Size = UDim2.new(0, 12, 0, 12),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.new(1, 1, 1),
        BorderSizePixel = 2,
        BorderColor3 = Color3.new(1, 1, 1),
        Parent = wheelBg
    })
    
    local selectorCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0.5, 0),
        Parent = selector
    })
    
    colorWheel.Frame = container
    
    return colorWheel
end

-- ChipInput Component (Tag input)
function AetherUI:CreateChipInput(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local chipInput = {
        Chips = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "ChipInput",
        Size = options.Size or UDim2.new(1, 0, 0, 40),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = container
    })
    
    local chipsContainer = CreateInstance("Frame", {
        Name = "ChipsContainer",
        Size = UDim2.new(1, -40, 1, 0),
        BackgroundTransparency = 1,
        Parent = container
    })
    
    local chipsList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 4),
        FillDirection = Enum.FillDirection.Horizontal,
        Parent = chipsContainer
    })
    
    local chipsPadding = CreateInstance("UIPadding", {
        PaddingLeft = UDim.new(0, 8),
        PaddingRight = UDim.new(0, 8),
        PaddingTop = UDim.new(0, 6),
        PaddingBottom = UDim.new(0, 6),
        Parent = chipsContainer
    })
    
    local input = CreateInstance("TextBox", {
        Name = "Input",
        Size = UDim2.new(0, 100, 1, 0),
        Position = UDim2.new(1, -40, 0, 0),
        BackgroundTransparency = 1,
        Text = "",
        PlaceholderText = "Add tag...",
        PlaceholderColor3 = theme.TextMuted,
        TextColor3 = theme.Text,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        Parent = container
    })
    
    function chipInput:AddChip(text)
        local chip = CreateInstance("Frame", {
            Name = text,
            Size = UDim2.new(0, 0, 0, 24),
            AutomaticSize = Enum.AutomaticSize.X,
            BackgroundColor3 = theme.Primary,
            BackgroundTransparency = 0.8,
            BorderSizePixel = 0,
            Parent = chipsContainer
        })
        
        local chipCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, 12),
            Parent = chip
        })
        
        local chipLabel = CreateInstance("TextLabel", {
            Name = "Label",
            Size = UDim2.new(0, 0, 1, 0),
            AutomaticSize = Enum.AutomaticSize.X,
            BackgroundTransparency = 1,
            Text = text,
            TextColor3 = theme.Text,
            Font = Enum.Font.Gotham,
            TextSize = 11,
            Parent = chip
        })
        
        local chipPadding = CreateInstance("UIPadding", {
            PaddingLeft = UDim.new(0, 10),
            PaddingRight = UDim.new(0, 10),
            Parent = chipLabel
        })
        
        local closeBtn = CreateInstance("TextButton", {
            Name = "Close",
            Size = UDim2.new(0, 16, 0, 16),
            Position = UDim2.new(1, 4, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            BackgroundTransparency = 1,
            Text = "×",
            TextColor3 = theme.TextSecondary,
            Font = Enum.Font.GothamBold,
            TextSize = 12,
            Parent = chip
        })
        
        closeBtn.MouseButton1Click:Connect(function()
            chip:Destroy()
            table.remove(chipInput.Chips, table.find(chipInput.Chips, chip))
        end)
        
        table.insert(chipInput.Chips, chip)
    end
    
    input.FocusLost:Connect(function()
        if #input.Text > 0 then
            chipInput:AddChip(input.Text)
            input.Text = ""
        end
    end)
    
    chipInput.Frame = container
    
    return chipInput
end

-- ============================================
-- MENU COMPONENTS
-- ============================================

-- Menu Component
function AetherUI:CreateMenu(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local menu = {
        Items = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Menu",
        Size = options.Size or UDim2.new(0, 180, 0, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 100,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 2),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 4),
        Parent = container
    })
    
    function menu:AddItem(options)
        options = options or {}
        
        local item = CreateInstance("TextButton", {
            Name = options.Name or "MenuItem",
            Size = UDim2.new(1, 0, 0, 32),
            BackgroundColor3 = theme.Surface,
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Text = options.Text or "",
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 13,
            ZIndex = 100,
            Parent = container
        })
        
        local itemPadding = CreateInstance("UIPadding", {
            PaddingLeft = UDim.new(0, 12),
            Parent = item
        })
        
        if options.Icon then
            local icon = CreateInstance("ImageLabel", {
                Name = "Icon",
                Size = UDim2.new(0, 16, 0, 16),
                Position = UDim2.new(0, 12, 0.5, 0),
                AnchorPoint = Vector2.new(0, 0.5),
                Image = options.Icon,
                ImageColor3 = theme.TextSecondary,
                BackgroundTransparency = 1,
                ZIndex = 100,
                Parent = item
            })
            
            local iconPadding = CreateInstance("UIPadding", {
                PaddingLeft = UDim.new(0, 28),
                Parent = item
            })
        end
        
        item.MouseButton1Click:Connect(function()
            if options.Action then
                options.Action()
            end
            if options.CloseOnClick ~= false then
                menu:Hide()
            end
        end)
        
        item.MouseEnter:Connect(function()
            Tween(item, { BackgroundTransparency = 0.7 }, 0.1)
        end)
        
        item.MouseLeave:Connect(function()
            Tween(item, { BackgroundTransparency = 1 }, 0.1)
        end)
        
        table.insert(menu.Items, item)
    end
    
    function menu:AddSeparator()
        local sep = CreateInstance("Frame", {
            Name = "Separator",
            Size = UDim2.new(1, -8, 0, 1),
            Position = UDim2.new(0, 4, 0, 0),
            BackgroundColor3 = theme.Border,
            BorderSizePixel = 0,
            ZIndex = 100,
            Parent = container
        })
    end
    
    function menu:Show()
        container.Visible = true
        container.Size = UDim2.new(0, 180, 0, list.AbsoluteContentSize.Y + 8)
    end
    
    function menu:Hide()
        container.Visible = false
    end
    
    menu.Frame = container
    
    return menu
end

-- ContextMenu Component
function AetherUI:CreateContextMenu(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local contextMenu = AetherUI:CreateMenu(options, parent)
    
    function contextMenu:ShowAt(position)
        contextMenu.Frame.Position = position
        contextMenu:Show()
    end
    
    return contextMenu
end

-- Popover Component
function AetherUI:CreatePopover(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local popover = {
        IsOpen = false
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Popover",
        Size = options.Size or UDim2.new(0, 200, 0, 100),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 50,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Arrow
    local arrow = CreateInstance("Frame", {
        Name = "Arrow",
        Size = UDim2.new(0, 12, 0, 12),
        BackgroundColor3 = theme.Surface,
        Rotation = 45,
        Visible = false,
        ZIndex = 49,
        Parent = parent
    })
    
    local content = CreateInstance("Frame", {
        Name = "Content",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 12),
        Parent = content
    })
    
    function popover:Show(relativeTo)
        popover.IsOpen = true
        popover.Frame.Visible = true
        arrow.Visible = true
        
        -- Position below the relative element
        local absPos = relativeTo.AbsolutePosition
        local absSize = relativeTo.AbsoluteSize
        
        popover.Frame.Position = UDim2.new(
            0, absPos.X,
            0, absPos.Y + absSize.Y + 8
        )
        
        arrow.Position = UDim2.new(
            0, absPos.X + absSize.X / 2 - 6,
            0, absPos.Y + absSize.Y - 2
        )
    end
    
    function popover:Hide()
        popover.IsOpen = false
        popover.Frame.Visible = false
        arrow.Visible = false
    end
    
    popover.Frame = container
    popover.Content = content
    
    return popover
end

-- Carousel Component
function AetherUI:CreateCarousel(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local carousel = {
        CurrentIndex = 1,
        Items = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Carousel",
        Size = options.Size or UDim2.new(1, 0, 0, 150),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Items container
    local itemsContainer = CreateInstance("Frame", {
        Name = "ItemsContainer",
        Size = UDim2.new(1, 0, 1, -30),
        BackgroundTransparency = 1,
        Parent = container
    })
    
    local itemsList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 0),
        FillDirection = Enum.FillDirection.Horizontal,
        Parent = itemsContainer
    })
    
    -- Navigation
    local navContainer = CreateInstance("Frame", {
        Name = "Navigation",
        Size = UDim2.new(1, 0, 0, 24),
        Position = UDim2.new(0, 0, 1, -24),
        BackgroundTransparency = 1,
        Parent = container
    })
    
    local dotsContainer = CreateInstance("Frame", {
        Name = "Dots",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Parent = navContainer
    })
    
    local dotsList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 6),
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        Parent = dotsContainer
    })
    
    function carousel:AddItem(options)
        options = options or {}
        
        local item = CreateInstance("Frame", {
            Name = options.Name or "CarouselItem",
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundTransparency = 1,
            Visible = false,
            Parent = itemsContainer
        })
        
        if options.Image then
            local image = CreateInstance("ImageLabel", {
                Name = "Image",
                Size = UDim2.new(1, 0, 1, 0),
                Image = options.Image,
                BackgroundTransparency = 1,
                Parent = item
            })
        end
        
        if options.Title then
            local title = CreateInstance("TextLabel", {
                Name = "Title",
                Size = UDim2.new(1, 0, 0, 24),
                Position = UDim2.new(0, 0, 0, 10),
                BackgroundTransparency = 1,
                Text = options.Title,
                TextColor3 = theme.Text,
                TextXAlignment = Enum.TextXAlignment.Center,
                Font = Enum.Font.GothamBold,
                TextSize = 14,
                Parent = item
            })
        end
        
        table.insert(carousel.Items, item)
        
        -- Add indicator dot
        local dot = CreateInstance("Frame", {
            Name = "Dot" .. #carousel.Items,
            Size = UDim2.new(0, 8, 0, 8),
            BackgroundColor3 = #carousel.Items == 1 and theme.Primary or theme.TextMuted,
            BorderSizePixel = 0,
            Parent = dotsContainer
        })
        
        local dotCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0.5, 0),
            Parent = dot
        })
        
        if #carousel.Items == 1 then
            item.Visible = true
        end
    end
    
    function carousel:Next()
        if carousel.CurrentIndex < #carousel.Items then
            carousel.Items[carousel.CurrentIndex].Visible = false
            carousel.CurrentIndex = carousel.CurrentIndex + 1
            carousel.Items[carousel.CurrentIndex].Visible = true
        end
    end
    
    function carousel:Previous()
        if carousel.CurrentIndex > 1 then
            carousel.Items[carousel.CurrentIndex].Visible = false
            carousel.CurrentIndex = carousel.CurrentIndex - 1
            carousel.Items[carousel.CurrentIndex].Visible = true
        end
    end
    
    carousel.Frame = container
    
    return carousel
end

-- ============================================
-- ADDITIONAL UTILITY COMPONENTS
-- ============================================

-- Grid Component
function AetherUI:CreateGrid(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local grid = {
        Items = {}
    }
    
    local container = CreateInstance("ScrollingFrame", {
        Name = options.Name or "Grid",
        Size = options.Size or UDim2.new(1, 0, 0, 200),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = parent
    })
    
    local gridLayout = CreateInstance("UIGridLayout", {
        CellPadding = UDim2.new(0, options.Spacing or 8, 0, options.Spacing or 8),
        CellSize = options.CellSize or UDim2.new(0, 100, 0, 100),
        Parent = container
    })
    
    function grid:AddItem(options)
        options = options or {}
        
        local item = CreateInstance("Frame", {
            Name = options.Name or "GridItem",
            BackgroundColor3 = theme.Surface,
            BackgroundTransparency = 0.8,
            BorderSizePixel = 0,
            Parent = container
        })
        
        local corner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 2),
            Parent = item
        })
        
        if options.Image then
            local image = CreateInstance("ImageLabel", {
                Name = "Image",
                Size = UDim2.new(1, 0, 1, 0),
                Image = options.Image,
                BackgroundTransparency = 1,
                Parent = item
            })
        end
        
        if options.Label then
            local label = CreateInstance("TextLabel", {
                Name = "Label",
                Size = UDim2.new(1, 0, 0, 20),
                Position = UDim2.new(0, 0, 1, -20),
                BackgroundColor3 = theme.Background,
                BackgroundTransparency = 0.5,
                Text = options.Label,
                TextColor3 = theme.Text,
                TextXAlignment = Enum.TextXAlignment.Center,
                Font = Enum.Font.Gotham,
                TextSize = 10,
                Parent = item
            })
        end
        
        if options.OnClick then
            item.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    options.OnClick(item)
                end
            end)
        end
        
        table.insert(grid.Items, item)
    end
    
    grid.Frame = container
    
    return grid
end

-- Image Component
function AetherUI:CreateImage(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local image = CreateInstance("ImageLabel", {
        Name = options.Name or "Image",
        Size = options.Size or UDim2.new(0, 100, 0, 100),
        Image = options.Image or "",
        ImageColor3 = options.Color or Color3.new(1, 1, 1),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.8,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local corner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 2),
        Parent = image
    })
    
    return {
        Frame = image,
        SetImage = function(url)
            image.Image = url
        end,
        SetColor = function(color)
            image.ImageColor3 = color
        end
    }
end

-- Video Component (Simulated with frames)
function AetherUI:CreateVideo(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local video = {
        IsPlaying = false,
        Frames = {},
        CurrentFrame = 1
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Video",
        Size = options.Size or UDim2.new(0, 200, 0, 150),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Placeholder (actual video requires VideoFrame which is limited)
    local placeholder = CreateInstance("TextLabel", {
        Name = "Placeholder",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = "Video Player\n(Coming Soon)",
        TextColor3 = theme.TextMuted,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Font = Enum.Font.Gotham,
        TextSize = 14,
        Parent = container
    })
    
    video.Frame = container
    
    return video
end

-- ============================================
-- ADVANCED EXECUTOR COMPONENTS
-- ============================================

-- VariableExplorer Component
function AetherUI:CreateVariableExplorer(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local explorer = {
        Variables = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "VariableExplorer",
        Size = options.Size or UDim2.new(1, 0, 0, 250),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local headerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = header
    })
    
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, -12, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = "Variable Explorer",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        Parent = header
    })
    
    -- Variables list
    local varList = CreateInstance("ScrollingFrame", {
        Name = "VariableList",
        Size = UDim2.new(1, 0, 1, -32),
        Position = UDim2.new(0, 0, 0, 32),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = container
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 2),
        Parent = varList
    })
    
    local listPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = varList
    })
    
    function explorer:AddVariable(name, value, type_)
        local varFrame = CreateInstance("Frame", {
            Name = name,
            Size = UDim2.new(1, 0, 0, 28),
            BackgroundColor3 = theme.Surface,
            BackgroundTransparency = 0.9,
            BorderSizePixel = 0,
            Parent = varList
        })
        
        local varCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 4),
            Parent = varFrame
        })
        
        local nameLabel = CreateInstance("TextLabel", {
            Name = "Name",
            Size = UDim2.new(0.4, 0, 1, 0),
            BackgroundTransparency = 1,
            Text = name,
            TextColor3 = theme.Primary,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 11,
            Parent = varFrame
        })
        
        local valueLabel = CreateInstance("TextLabel", {
            Name = "Value",
            Size = UDim2.new(0.6, 0, 1, 0),
            Position = UDim2.new(0.4, 0, 0, 0),
            BackgroundTransparency = 1,
            Text = tostring(value),
            TextColor3 = theme.TextSecondary,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Code,
            TextSize = 10,
            Parent = varFrame
        })
        
        table.insert(explorer.Variables, {
            Name = name,
            Value = value,
            Type = type_,
            Frame = varFrame
        })
    end
    
    function explorer:Refresh()
        -- Clear existing
        for _, v in ipairs(explorer.Variables) do
            v.Frame:Destroy()
        end
        explorer.Variables = {}
        
        -- Add local variables (simplified)
        explorer:AddVariable("Player", LocalPlayer.Name, "User")
        explorer:AddVariable("PlaceId", game.PlaceId, "Number")
        explorer:AddVariable("JobId", game.JobId, "String")
    end
    
    explorer:Refresh()
    
    explorer.Frame = container
    
    return explorer
end

-- NetworkInspector Component
function AetherUI:CreateNetworkInspector(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local inspector = {
        Requests = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "NetworkInspector",
        Size = options.Size or UDim2.new(1, 0, 0, 250),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, -12, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = "Network Inspector",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        Parent = header
    })
    
    -- Requests list
    local requestList = CreateInstance("ScrollingFrame", {
        Name = "RequestList",
        Size = UDim2.new(1, 0, 1, -32),
        Position = UDim2.new(0, 0, 0, 32),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = container
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 2),
        Parent = requestList
    })
    
    local listPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = requestList
    })
    
    function inspector:AddRequest(method, url, status)
        local requestFrame = CreateInstance("Frame", {
            Name = "Request",
            Size = UDim2.new(1, 0, 0, 36),
            BackgroundColor3 = theme.Surface,
            BackgroundTransparency = 0.9,
            BorderSizePixel = 0,
            Parent = requestList
        })
        
        local corner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 4),
            Parent = requestFrame
        })
        
        local methodLabel = CreateInstance("TextLabel", {
            Name = "Method",
            Size = UDim2.new(0, 50, 1, 0),
            BackgroundTransparency = 1,
            Text = method,
            TextColor3 = method == "GET" and theme.Success or 
                       method == "POST" and theme.Primary or 
                       method == "DELETE" and theme.Danger or theme.Warning,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamBold,
            TextSize = 10,
            Parent = requestFrame
        })
        
        local urlLabel = CreateInstance("TextLabel", {
            Name = "URL",
            Size = UDim2.new(1, -60, 0, 18),
            BackgroundTransparency = 1,
            Text = url,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Code,
            TextSize = 9,
            TextWrapped = true,
            Parent = requestFrame
        })
        
        local statusLabel = CreateInstance("TextLabel", {
            Name = "Status",
            Size = UDim2.new(1, -60, 0, 16),
            Position = UDim2.new(0, 50, 0, 18),
            BackgroundTransparency = 1,
            Text = "Status: " .. (status or "200 OK"),
            TextColor3 = theme.Success,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 9,
            Parent = requestFrame
        })
        
        table.insert(inspector.Requests, requestFrame)
    end
    
    -- Add sample requests
    inspector:AddRequest("GET", "https://games.roblox.com/v1/games/142823291", "200 OK")
    inspector:AddRequest("GET", "https://users.roblox.com/v1/users/search", "200 OK")
    
    inspector.Frame = container
    
    return inspector
end

-- GameExplorer Component
function AetherUI:CreateGameExplorer(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local explorer = {
        Expanded = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "GameExplorer",
        Size = options.Size or UDim2.new(1, 0, 0, 300),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 32),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, -12, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = "Game Explorer",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        Parent = header
    })
    
    -- Instance tree
    local treeView = CreateInstance("ScrollingFrame", {
        Name = "InstanceTree",
        Size = UDim2.new(1, 0, 1, -32),
        Position = UDim2.new(0, 0, 0, 32),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = container
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 0),
        Parent = treeView
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingLeft = UDim.new(0, 8),
        Parent = treeView
    })
    
    function explorer:AddInstance(instance, parent, level)
        level = level or 0
        
        local instanceFrame = CreateInstance("Frame", {
            Name = instance.Name,
            Size = UDim2.new(1, 0, 0, 24),
            BackgroundTransparency = 1,
            Parent = parent or treeView
        })
        
        local paddingLeft = CreateInstance("UIPadding", {
            PaddingLeft = UDim.new(0, level * 16),
            Parent = instanceFrame
        })
        
        local expandBtn = CreateInstance("TextButton", {
            Name = "Expand",
            Size = UDim2.new(0, 16, 1, 0),
            BackgroundTransparency = 1,
            Text = "",
            Parent = instanceFrame
        })
        
        local icon = CreateInstance("ImageLabel", {
            Name = "Icon",
            Size = UDim2.new(0, 14, 0, 14),
            Position = UDim2.new(0, 16, 0.5, 0),
            AnchorPoint = Vector2.new(0, 0.5),
            Image = "rbxassetid://11708027294",
            ImageColor3 = theme.TextSecondary,
            BackgroundTransparency = 1,
            Parent = instanceFrame
        })
        
        local nameLabel = CreateInstance("TextLabel", {
            Name = "Name",
            Size = UDim2.new(1, -36, 1, 0),
            Position = UDim2.new(0, 36, 0, 0),
            BackgroundTransparency = 1,
            Text = instance.Name,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 12,
            Parent = instanceFrame
        })
        
        -- Add children if any
        if #instance:GetChildren() > 0 then
            local childrenContainer = CreateInstance("Frame", {
                Name = "Children",
                Size = UDim2.new(1, 0, 0, 0),
                Visible = false,
                BackgroundTransparency = 1,
                Parent = treeView
            })
            
            local childrenList = CreateInstance("UIListLayout", {
                Padding = UDim.new(0, 0),
                Parent = childrenContainer
            })
            
            expandBtn.MouseButton1Click:Connect(function()
                explorer.Expanded[instance] = not explorer.Expanded[instance]
                childrenContainer.Visible = explorer.Expanded[instance]
                
                if explorer.Expanded[instance] then
                    for _, child in ipairs(instance:GetChildren()) do
                        if child:IsA("Instance") then
                            explorer:AddInstance(child, childrenContainer, level + 1)
                        end
                    end
                end
            end)
        end
        
        return instanceFrame
    end
    
    -- Add game workspace as root
    explorer:AddInstance(game.Workspace, nil, 0)
    
    explorer.Frame = container
    
    return explorer
end

-- ============================================
-- TOOLTIP COMPONENT
-- ============================================

function AetherUI:CreateTooltip(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local tooltip = {
        IsVisible = false
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Tooltip",
        Size = UDim2.new(0, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.XY,
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 200,
        Parent = parent or PlayerGui
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 4),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = container
    })
    
    local textLabel = CreateInstance("TextLabel", {
        Name = "Text",
        Size = UDim2.new(0, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.XY,
        BackgroundTransparency = 1,
        Text = options.Text or "Tooltip",
        TextColor3 = theme.Text,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        ZIndex = 200,
        Parent = container
    })
    
    function tooltip:Show(text, relativeTo)
        textLabel.Text = text or options.Text
        container.Visible = true
        
        if relativeTo then
            local absPos = relativeTo.AbsolutePosition
            local absSize = relativeTo.AbsoluteSize
            
            container.Position = UDim2.new(
                0, absPos.X + absSize.X / 2,
                0, absPos.Y + absSize.Y + 8
            )
        end
        
        self.IsVisible = true
    end
    
    function tooltip:Hide()
        container.Visible = false
        self.IsVisible = false
    end
    
    tooltip.Frame = container
    
    return tooltip
end

-- ============================================
-- NOTIFICATION COMPONENT
-- ============================================

function AetherUI:CreateNotification(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local notification = {
        IsVisible = false
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Notification",
        Size = UDim2.new(0, 300, 0, 80),
        Position = UDim2.new(1, -320, 1, -100),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 150,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Icon
    local iconBg = CreateInstance("Frame", {
        Name = "IconBg",
        Size = UDim2.new(0, 40, 0, 40),
        Position = UDim2.new(0, 12, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = theme.Primary,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local iconCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius - 4),
        Parent = iconBg
    })
    
    local iconLabel = CreateInstance("TextLabel", {
        Name = "Icon",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = options.Icon or "✓",
        TextColor3 = Color3.new(1, 1, 1),
        Font = Enum.Font.GothamBold,
        TextSize = 18,
        Parent = iconBg
    })
    
    -- Content
    local titleLabel = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, -70, 0, 24),
        Position = UDim2.new(0, 60, 0, 12),
        BackgroundTransparency = 1,
        Text = options.Title or "Notification",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        Parent = container
    })
    
    local messageLabel = CreateInstance("TextLabel", {
        Name = "Message",
        Size = UDim2.new(1, -70, 0, 30),
        Position = UDim2.new(0, 60, 0, 38),
        BackgroundTransparency = 1,
        Text = options.Message or "",
        TextColor3 = theme.TextSecondary,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        TextWrapped = true,
        Parent = container
    })
    
    -- Close button
    local closeBtn = CreateInstance("TextButton", {
        Name = "CloseButton",
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(1, -24, 0, 8),
        BackgroundTransparency = 1,
        Text = "×",
        TextColor3 = theme.TextMuted,
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        Parent = container
    })
    
    closeBtn.MouseButton1Click:Connect(function()
        notification:Hide()
    end)
    
    function notification:Show(title, message, iconText)
        titleLabel.Text = title or options.Title
        messageLabel.Text = message or options.Message
        iconLabel.Text = iconText or options.Icon or "✓"
        
        container.Visible = true
        container.Position = UDim2.new(1, 320, 1, -100)
        
        Tween(container, {
            Position = UDim2.new(1, -320, 1, -100)
        }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
        
        self.IsVisible = true
        
        -- Auto hide after delay
        if options.AutoHide ~= false then
            task.delay(options.Duration or 5, function()
                if self.IsVisible then
                    self:Hide()
                end
            end)
        end
    end
    
    function notification:Hide()
        Tween(container, {
            Position = UDim2.new(1, 320, 1, -100)
        }, 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
        
        task.wait(0.2)
        container.Visible = false
        self.IsVisible = false
    end
    
    notification.Frame = container
    
    return notification
end

-- ============================================
-- DRAWER COMPONENT
-- ============================================

function AetherUI:CreateDrawer(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local drawer = {
        IsOpen = false,
        Position = options.Position or "Left"
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Drawer",
        Size = options.Size or UDim2.new(0, 280, 1, 0),
        Position = UDim2.new(0, -280, 0, 0),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        ZIndex = 100,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 50),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local titleLabel = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, -40, 1, 0),
        Position = UDim2.new(0, 16, 0, 0),
        BackgroundTransparency = 1,
        Text = options.Title or "Drawer",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        Parent = header
    })
    
    local closeBtn = CreateInstance("TextButton", {
        Name = "CloseButton",
        Size = UDim2.new(0, 24, 0, 24),
        Position = UDim2.new(1, -40, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        Text = "×",
        TextColor3 = theme.TextSecondary,
        Font = Enum.Font.GothamBold,
        TextSize = 18,
        Parent = header
    })
    
    -- Content
    local content = CreateInstance("ScrollingFrame", {
        Name = "Content",
        Size = UDim2.new(1, 0, 1, -50),
        Position = UDim2.new(0, 0, 0, 50),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = container
    })
    
    local contentList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 8),
        Parent = content
    })
    
    local contentPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 12),
        Parent = content
    })
    
    closeBtn.MouseButton1Click:Connect(function()
        drawer:Hide()
    end)
    
    function drawer:Show()
        self.IsOpen = true
        
        if self.Position == "Left" then
            Tween(container, { Position = UDim2.new(0, 0, 0, 0) }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
        else
            Tween(container, { Position = UDim2.new(1, -280, 0, 0) }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
        end
    end
    
    function drawer:Hide()
        self.IsOpen = false
        
        if self.Position == "Left" then
            Tween(container, { Position = UDim2.new(0, -280, 0, 0) }, 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
        else
            Tween(container, { Position = UDim2.new(1, 0, 0, 0) }, 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
        end
    end
    
    function drawer:Toggle()
        if self.IsOpen then
            self:Hide()
        else
            self:Show()
        end
    end
    
    drawer.Frame = container
    drawer.Content = content
    
    return drawer
end

-- ============================================
-- WEBVIEW COMPONENT (Simulated)
-- ============================================

function AetherUI:CreateWebView(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local webView = {
        URL = options.URL or ""
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "WebView",
        Size = options.Size or UDim2.new(1, 0, 0, 300),
        BackgroundColor3 = theme.Background,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 36),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local urlLabel = CreateInstance("TextLabel", {
        Name = "URL",
        Size = UDim2.new(1, -80, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = webView.URL,
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        Parent = header
    })
    
    local refreshBtn = CreateInstance("TextButton", {
        Name = "RefreshButton",
        Size = UDim2.new(0, 28, 0, 28),
        Position = UDim2.new(1, -36, 0.5, 0),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Text = "⟳",
        TextColor3 = theme.Text,
        Font = Enum.Font.GothamBold,
        TextSize = 14,
        Parent = header
    })
    
    -- Placeholder for web content
    local contentPlaceholder = CreateInstance("TextLabel", {
        Name = "Placeholder",
        Size = UDim2.new(1, 0, 1, -36),
        Position = UDim2.new(0, 0, 0, 36),
        BackgroundTransparency = 1,
        Text = "WebView Content\n\nNote: Roblox doesn't support native webviews.\nThis is a placeholder component.",
        TextColor3 = theme.TextMuted,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        Font = Enum.Font.Gotham,
        TextSize = 14,
        Parent = container
    })
    
    function webView:Navigate(url)
        webView.URL = url
        urlLabel.Text = url
        -- In a real implementation, this would load web content
    end
    
    function webView:Refresh()
        -- Refresh content
    end
    
    webView.Frame = container
    
    return webView
end

-- ============================================
-- THEME CUSTOMIZER COMPONENT
-- ============================================

function AetherUI:CreateThemeCustomizer(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local customizer = {}
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "ThemeCustomizer",
        Size = options.Size or UDim2.new(1, 0, 0, 400),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 12),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = container
    })
    
    -- Title
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundTransparency = 1,
        Text = "Theme Customizer",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        Parent = container
    })
    
    -- Color pickers for each theme color
    local colors = {"Background", "Surface", "Primary", "Secondary", "Accent", "Text", "TextSecondary"}
    
    for _, colorName in ipairs(colors) do
        local colorLabel = CreateInstance("TextLabel", {
            Name = colorName .. "Label",
            Size = UDim2.new(1, 0, 0, 20),
            BackgroundTransparency = 1,
            Text = colorName,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = container
        })
        
        local colorPicker = AetherUI:CreateColorPicker({
            Name = colorName .. "Picker",
            Value = theme[colorName]
        }, container)
        
        colorPicker.Frame.Size = UDim2.new(1, 0, 0, 70)
    end
    
    -- Save button
    local saveBtn = AetherUI:CreateButton({
        Name = "SaveTheme",
        Text = "Save Theme",
        Variant = "Primary"
    }, container)
    
    -- Reset button
    local resetBtn = AetherUI:CreateButton({
        Name = "ResetTheme",
        Text = "Reset to Default"
    }, container)
    
    customizer.Frame = container
    
    return customizer
end

-- ============================================
-- KEYBIND EDITOR COMPONENT
-- ============================================

function AetherUI:CreateKeybindEditor(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local editor = {
        Keybinds = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "KeybindEditor",
        Size = options.Size or UDim2.new(1, 0, 0, 300),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 8),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = container
    })
    
    -- Title
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, 0, 0, 24),
        BackgroundTransparency = 1,
        Text = "Keybind Editor",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 16,
        Parent = container
    })
    
    function editor:AddKeybind(name, defaultKey, callback)
        local keybindContainer = CreateInstance("Frame", {
            Name = name,
            Size = UDim2.new(1, 0, 0, 36),
            BackgroundColor3 = theme.Surface,
            BackgroundTransparency = 0.8,
            BorderSizePixel = 0,
            Parent = container
        })
        
        local corner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 2),
            Parent = keybindContainer
        })
        
        local nameLabel = CreateInstance("TextLabel", {
            Name = "Name",
            Size = UDim2.new(1, -80, 1, 0),
            BackgroundTransparency = 1,
            Text = name,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 13,
            Parent = keybindContainer
        })
        
        local keyLabel = CreateInstance("TextLabel", {
            Name = "Key",
            Size = UDim2.new(0, 70, 1, 0),
            Position = UDim2.new(1, -70, 0, 0),
            BackgroundColor3 = theme.SurfaceGlass,
            BackgroundTransparency = 0.5,
            Text = defaultKey,
            TextColor3 = theme.TextSecondary,
            TextXAlignment = Enum.TextXAlignment.Center,
            Font = Enum.Font.GothamMedium,
            TextSize = 11,
            Parent = keybindContainer
        })
        
        local keyCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 4),
            Parent = keyLabel
        })
        
        local keybind = AetherUI:CreateKeybind({
            Name = name,
            Text = name,
            Value = defaultKey,
            Callback = function(newKey)
                keyLabel.Text = newKey
                if callback then callback(newKey) end
            end
        }, keybindContainer)
        
        table.insert(editor.Keybinds, {
            Name = name,
            Key = defaultKey,
            Frame = keybindContainer
        })
    end
    
    editor.Frame = container
    
    return editor
end

-- ============================================
-- FORM COMPONENT
-- ============================================

function AetherUI:CreateForm(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local form = {
        Fields = {},
        Values = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "Form",
        Size = options.Size or UDim2.new(1, 0, 0, 300),
        BackgroundTransparency = 1,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 12),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingTop = UDim.new(0, 4),
        Parent = container
    })
    
    -- Title
    if options.Title then
        local title = CreateInstance("TextLabel", {
            Name = "Title",
            Size = UDim2.new(1, 0, 0, 24),
            BackgroundTransparency = 1,
            Text = options.Title,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamBold,
            TextSize = 16,
            Parent = container
        })
    end
    
    function form:AddTextField(name, label, placeholder)
        local fieldContainer = CreateInstance("Frame", {
            Name = name,
            Size = UDim2.new(1, 0, 0, 56),
            BackgroundTransparency = 1,
            Parent = container
        })
        
        local fieldLabel = CreateInstance("TextLabel", {
            Name = "Label",
            Size = UDim2.new(1, 0, 0, 16),
            BackgroundTransparency = 1,
            Text = label or name,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.GothamMedium,
            TextSize = 12,
            Parent = fieldContainer
        })
        
        local input = AetherUI:CreateInput({
            Name = name .. "Input",
            Placeholder = placeholder or "",
            Label = ""
        }, fieldContainer)
        
        input.Frame.Size = UDim2.new(1, 0, 0, 32)
        
        form.Values[name] = ""
        
        input.OnChange(function(value)
            form.Values[name] = value
        end)
        
        table.insert(form.Fields, {
            Name = name,
            Type = "text",
            Input = input
        })
        
        return input
    end
    
    function form:AddToggle(name, label, defaultValue)
        local fieldContainer = CreateInstance("Frame", {
            Name = name,
            Size = UDim2.new(1, 0, 0, 32),
            BackgroundTransparency = 1,
            Parent = container
        })
        
        local toggle = AetherUI:CreateToggle({
            Name = name .. "Toggle",
            Text = label or name,
            Value = defaultValue or false,
            Callback = function(value)
                form.Values[name] = value
            end
        }, fieldContainer)
        
        form.Values[name] = defaultValue or false
        
        table.insert(form.Fields, {
            Name = name,
            Type = "toggle",
            Toggle = toggle
        })
        
        return toggle
    end
    
    function form:AddDropdown(name, label, options)
        local fieldContainer = CreateInstance("Frame", {
            Name = name,
            Size = UDim2.new(1, 0, 0, 56),
            BackgroundTransparency = 1,
            Parent = container
        })
        
        local dropdown = AetherUI:CreateDropdown({
            Name = name .. "Dropdown",
            Label = label or name,
            Options = options or {},
            Callback = function(value)
                form.Values[name] = value
            end
        }, fieldContainer)
        
        form.Values[name] = nil
        
        table.insert(form.Fields, {
            Name = name,
            Type = "dropdown",
            Dropdown = dropdown
        })
        
        return dropdown
    end
    
    function form:GetValues()
        return form.Values
    end
    
    function form:Submit()
        if options.OnSubmit then
            options.OnSubmit(form.Values)
        end
    end
    
    function form:Clear()
        for name, _ in pairs(form.Values) do
            form.Values[name] = nil
        end
    end
    
    form.Frame = container
    
    return form
end

-- ============================================
-- FILE PICKER COMPONENT
-- ============================================

function AetherUI:CreateFilePicker(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local picker = {
        SelectedFile = nil,
        Files = {}
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "FilePicker",
        Size = options.Size or UDim2.new(1, 0, 0, 250),
        BackgroundColor3 = theme.Surface,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    local containerCorner = CreateInstance("UICorner", {
        CornerRadius = UDim.new(0, theme.CornerRadius),
        Parent = container
    })
    
    -- Header
    local header = CreateInstance("Frame", {
        Name = "Header",
        Size = UDim2.new(1, 0, 0, 36),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local title = CreateInstance("TextLabel", {
        Name = "Title",
        Size = UDim2.new(1, -12, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        BackgroundTransparency = 1,
        Text = options.Title or "Select File",
        TextColor3 = theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        Font = Enum.Font.GothamBold,
        TextSize = 13,
        Parent = header
    })
    
    -- File list
    local fileList = CreateInstance("ScrollingFrame", {
        Name = "FileList",
        Size = UDim2.new(1, 0, 1, -80),
        Position = UDim2.new(0, 0, 0, 40),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = container
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 2),
        Parent = fileList
    })
    
    local listPadding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = fileList
    })
    
    -- Actions
    local actions = CreateInstance("Frame", {
        Name = "Actions",
        Size = UDim2.new(1, 0, 0, 36),
        Position = UDim2.new(0, 0, 1, -36),
        BackgroundColor3 = theme.Surface,
        BackgroundTransparency = 0.5,
        BorderSizePixel = 0,
        Parent = container
    })
    
    local actionsList = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 8),
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        Parent = actions
    })
    
    local actionsPadding = CreateInstance("UIPadding", {
        PaddingRight = UDim.new(0, 8),
        Parent = actions
    })
    
    local cancelBtn = AetherUI:CreateButton({
        Name = "CancelButton",
        Text = "Cancel"
    }, actions)
    
    local selectBtn = AetherUI:CreateButton({
        Name = "SelectButton",
        Text = "Select",
        Variant = "Primary"
    }, actions)
    
    function picker:AddFile(name, path)
        local fileFrame = CreateInstance("TextButton", {
            Name = name,
            Size = UDim2.new(1, 0, 0, 36),
            BackgroundColor3 = theme.Background,
            BackgroundTransparency = 0.9,
            BorderSizePixel = 0,
            Text = "",
            Parent = fileList
        })
        
        local fileCorner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0, theme.CornerRadius - 4),
            Parent = fileFrame
        })
        
        local fileIcon = CreateInstance("TextLabel", {
            Name = "Icon",
            Size = UDim2.new(0, 24, 1, 0),
            BackgroundTransparency = 1,
            Text = "📄",
            TextColor3 = theme.Text,
            Font = Enum.Font.Gotham,
            TextSize = 14,
            Parent = fileFrame
        })
        
        local fileName = CreateInstance("TextLabel", {
            Name = "Name",
            Size = UDim2.new(1, -30, 1, 0),
            Position = UDim2.new(0, 28, 0, 0),
            BackgroundTransparency = 1,
            Text = name,
            TextColor3 = theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 12,
            Parent = fileFrame
        })
        
        fileFrame.MouseButton1Click:Connect(function()
            picker.SelectedFile = { Name = name, Path = path }
            
            -- Update selection visual
            for _, child in ipairs(fileList:GetChildren()) do
                if child:IsA("Frame") then
                    child.BackgroundTransparency = 0.9
                end
            end
            fileFrame.BackgroundTransparency = 0.5
        end)
        
        table.insert(picker.Files, {
            Name = name,
            Path = path,
            Frame = fileFrame
        })
    end
    
    picker.Frame = container
    
    return picker
end

-- ============================================
-- MARKDOWN COMPONENT
-- ============================================

function AetherUI:CreateMarkdown(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local markdown = {
        Content = ""
    }
    
    local container = CreateInstance("ScrollingFrame", {
        Name = options.Name or "Markdown",
        Size = options.Size or UDim2.new(1, 0, 0, 200),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = theme.Primary,
        Parent = parent
    })
    
    local list = CreateInstance("UIListLayout", {
        Padding = UDim.new(0, 8),
        Parent = container
    })
    
    local padding = CreateInstance("UIPadding", {
        PaddingAll = UDim.new(0, 8),
        Parent = container
    })
    
    -- Simple markdown parser
    local function parseMarkdown(text)
        local elements = {}
        
        -- Headers
        for h1 in string.gmatch(text, "^#%s+(.+)") do
            table.insert(elements, {
                Type = "h1",
                Text = h1
            })
        end
        
        for h2 in string.gmatch(text, "^##%s+(.+)") do
            table.insert(elements, {
                Type = "h2",
                Text = h2
            })
        end
        
        for h3 in string.gmatch(text, "^###%s+(.+)") do
            table.insert(elements, {
                Type = "h3",
                Text = h3
            })
        end
        
        -- Bold
        local boldText = string.gmatch(text, "%*%*(.-)%*%*")
        
        -- Code blocks
        for code in string.gmatch(text, "```(.-)```") do
            table.insert(elements, {
                Type = "code",
                Text = code
            })
        end
        
        return elements
    end
    
    function markdown:SetContent(text)
        markdown.Content = text
        
        -- Clear existing
        for _, child in ipairs(container:GetChildren()) do
            if child:IsA("TextLabel") or child:IsA("Frame") then
                child:Destroy()
            end
        end
        
        -- Parse and render
        local lines = string.split(text, "\n")
        
        for _, line in ipairs(lines) do
            local elementType = "text"
            local content = line
            
            -- Detect headers
            if string.match(line, "^### ") then
                elementType = "h3"
                content = string.sub(line, 5)
            elseif string.match(line, "^## ") then
                elementType = "h2"
                content = string.sub(line, 4)
            elseif string.match(line, "^# ") then
                elementType = "h1"
                content = string.sub(line, 3)
            end
            
            local label = CreateInstance("TextLabel", {
                Name = "Line",
                Size = UDim2.new(1, 0, 0, 18),
                BackgroundTransparency = 1,
                Text = content,
                TextColor3 = theme.Text,
                TextXAlignment = Enum.TextXAlignment.Left,
                Font = elementType == "h1" and Enum.Font.GothamBold or
                       elementType == "h2" and Enum.Font.GothamBold or
                       elementType == "h3" and Enum.Font.GothamMedium or
                       Enum.Font.Gotham,
                TextSize = elementType == "h1" and 18 or
                          elementType == "h2" and 16 or
                          elementType == "h3" and 14 or 13,
                Parent = container
            })
        end
    end
    
    markdown.Frame = container
    
    return markdown
end

-- ============================================
-- NOISE OVERLAY COMPONENT
-- ============================================

function AetherUI:CreateNoiseOverlay(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "NoiseOverlay",
        Size = options.Size or UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = options.Transparency or 0.9,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    -- Create noise pattern (simplified)
    local noisePattern = CreateInstance("UIGradient", {
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
            ColorSequenceKeypoint.new(0.25, Color3.new(0.1, 0.1, 0.1)),
            ColorSequenceKeypoint.new(0.5, Color3.new(0, 0, 0)),
            ColorSequenceKeypoint.new(0.75, Color3.new(0.1, 0.1, 0.1)),
            ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
        },
        Rotation = 45,
        Parent = container
    })
    
    return {
        Frame = container,
        SetVisible = function(visible)
            container.Visible = visible
        end
    }
end

-- ============================================
-- RIPPLE EFFECT COMPONENT
-- ============================================

function AetherUI:CreateRippleEffect(options, parent)
    options = options or {}
    local theme = self.Theme
    
    local ripple = {
        IsAnimating = false
    }
    
    local container = CreateInstance("Frame", {
        Name = options.Name or "RippleEffect",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Parent = parent
    })
    
    function ripple:Play(x, y, color)
        color = color or theme.Primary
        
        local rippleCircle = CreateInstance("Frame", {
            Name = "Ripple",
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0, x, 0, y),
            AnchorPoint = Vector2.new(0.5, 0.5),
            BackgroundColor3 = color,
            BackgroundTransparency = 0.5,
            BorderSizePixel = 0,
            Parent = container
        })
        
        local corner = CreateInstance("UICorner", {
            CornerRadius = UDim.new(0.5, 0),
            Parent = rippleCircle
        })
        
        -- Animate
        local maxSize = 200
        local duration = 0.5
        
        local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local sizeTween = TweenService:Create(rippleCircle, tweenInfo, {
            Size = UDim2.new(0, maxSize, 0, maxSize),
            BackgroundTransparency = 1
        })
        
        sizeTween:Play()
        
        sizeTween.Completed:Connect(function()
            rippleCircle:Destroy()
        end)
    end
    
    ripple.Frame = container
    
    return ripple
end

-- ============================================
-- TAB METHODS (Shortcut methods for tabs)
-- ============================================

-- TabMetatable with shortcut methods
local TabMetatable = {
    -- Add components directly to tab
    AddButton = function(self, options)
        if self.Content and self.ListLayout then
            return AetherUI:CreateButton(options, self.Content)
        end
    end,
    
    AddToggle = function(self, options)
        if self.Content then
            return AetherUI:CreateToggle(options, self.Content)
        end
    end,
    
    AddSlider = function(self, options)
        if self.Content then
            return AetherUI:CreateSlider(options, self.Content)
        end
    end,
    
    AddInput = function(self, options)
        if self.Content then
            return AetherUI:CreateInput(options, self.Content)
        end
    end,
    
    AddLabel = function(self, options)
        if self.Content then
            return AetherUI:CreateLabel(options, self.Content)
        end
    end,
    
    AddDropdown = function(self, options)
        if self.Content then
            return AetherUI:CreateDropdown(options, self.Content)
        end
    end,
    
    AddCard = function(self, options)
        if self.Content then
            return AetherUI:CreateCard(options, self.Content)
        end
    end,
    
    AddSeparator = function(self, options)
        if self.Content then
            return AetherUI:CreateSeparator(options, self.Content)
        end
    end,
    
    AddColorPicker = function(self, options)
        if self.Content then
            return AetherUI:CreateColorPicker(options, self.Content)
        end
    end,
    
    AddKeybind = function(self, options)
        if self.Content then
            return AetherUI:CreateKeybind(options, self.Content)
        end
    end,
    
    AddConsole = function(self, options)
        if self.Content then
            return AetherUI:CreateConsole(options, self.Content)
        end
    end,
    
    AddScriptEditor = function(self, options)
        if self.Content then
            return AetherUI:CreateScriptEditor(options, self.Content)
        end
    end,
    
    AddParagraph = function(self, options)
        if self.Content then
            return AetherUI:CreateParagraph(options, self.Content)
        end
    end,
    
    AddTextField = function(self, options)
        if self.Content then
            return AetherUI:CreateTextField(options, self.Content)
        end
    end,
    
    AddImage = function(self, options)
        if self.Content then
            return AetherUI:CreateImage(options, self.Content)
        end
    end,
    
    AddBadge = function(self, options)
        if self.Content then
            return AetherUI:CreateBadge(options, self.Content)
        end
    end,
    
    AddProgress = function(self, options)
        if self.Content then
            return AetherUI:CreateProgress(options, self.Content)
        end
    end,
    
    AddList = function(self, options)
        if self.Content then
            return AetherUI:CreateList(options, self.Content)
        end
    end,
    
    AddTreeView = function(self, options)
        if self.Content then
            return AetherUI:CreateTreeView(options, self.Content)
        end
    end,
    
    AddAccordion = function(self, options)
        if self.Content then
            return AetherUI:CreateAccordion(options, self.Content)
        end
    end,
    
    AddTabs = function(self, options)
        if self.Content then
            return AetherUI:CreateTabs(options, self.Content)
        end
    end,
    
    AddModal = function(self, options)
        if self.Content then
            return AetherUI:CreateModal(options, self.Content)
        end
    end,
    
    AddDrawer = function(self, options)
        if self.Content then
            return AetherUI:CreateDrawer(options, self.Content)
        end
    end,
    
    AddTooltip = function(self, options)
        return AetherUI:CreateTooltip(options)
    end,
    
    AddNotification = function(self, options)
        return AetherUI:CreateNotification(options)
    end,
    
    AddFrame = function(self, options)
        if self.Content then
            return AetherUI:CreateFrame(options, self.Content)
        end
    end
}

-- Apply TabMetatable to all tabs
local function ApplyTabMethods(tab)
    return setmetatable(tab, { __index = TabMetatable })
end

-- Hook into Window:AddTab to apply metatable
local originalAddTab = nil
for _, window in ipairs({}) do -- This gets populated dynamically
end

-- Override Window:AddTab to include TabMetatable methods
local WindowMT = getmetatable(AetherUI)
if WindowMT then
    local oldCreateWindow = AetherUI.CreateWindow
    AetherUI.CreateWindow = function(self, options)
        local window = oldCreateWindow(self, options)
        
        -- Wrap AddTab to apply metatable
        local oldAddTab = window.AddTab
        window.AddTab = function(...)
            local tab = oldAddTab(...)
            return ApplyTabMethods(tab)
        end
        
        -- Apply to existing tabs
        for _, tab in ipairs(window.Tabs) do
            ApplyTabMethods(tab)
        end
        
        return window
    end
end

-- ============================================
-- RETURN AETHERUI
-- ============================================

return AetherUI
