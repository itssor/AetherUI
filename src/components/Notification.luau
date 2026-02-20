--// Types
local types = require("@types")

--// Components
return function(self, properties: types.NotificationProperties): types.Notification
	--// Imports
	local services = require("@modules/services")
	local creator = require("@modules/creator")
	local binder = require("@modules/binder")

	--// References
	local create = creator.Create

	local tweenService = services.TweenService
	local runService = services.RunService

	--// Variables
	properties = properties or {}

	properties.Title = properties.Title or "Notification"
	properties.Body = properties.Body or ""
	properties.Footer = properties.Footer or ""
	properties.Icon = properties.Icon or nil
	properties.Duration = properties.Duration or 4
	properties.Position = properties.Position or "TopLeft" -- TopLeft, TopRight, BottomLeft, BottomRight

	local parent = self.__container or self.__instance or self

	--// Container for notifications
	local notificationContainer = parent:FindFirstChild("NotificationContainer")

	if not notificationContainer then
		notificationContainer = create("Folder")({
			Name = "NotificationContainer",
			Parent = parent,
		})
	end

	--// Notification UI
	local notification = create("Frame")({
		Name = "Notification",
		BackgroundColor3 = self.Theme.Controls.Background[1].Value,
		BackgroundTransparency = 0.1,
		BorderSizePixel = 0,
		Size = UDim2.fromOffset(320, 0),
		Position = UDim2.new(0, 16, 0, 16),
		ClipsDescendants = true,

		__dynamicKeys = {
			BackgroundColor3 = self.Theme.Controls.Background[1],
		},

		create("UICorner")({
			Name = "UICorner",
			CornerRadius = UDim.new(0, 10),
		}),

		create("UIPadding")({
			Name = "UIPadding",
			PaddingLeft = UDim.new(0, 12),
			PaddingRight = UDim.new(0, 12),
			PaddingTop = UDim.new(0, 12),
			PaddingBottom = UDim.new(0, 12),
		}),

		create("Frame")({
			Name = "LayoutContainer",
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,

			create("UIListLayout")({
				Name = "UIListLayout",
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, 8),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			-- Header with Icon and Title
			create("Frame")({
				Name = "Header",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,

				create("UIListLayout")({
					Name = "UIListLayout",
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, 8),
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),

				create("ImageLabel")({
					Name = "Icon",
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(24, 24),
					Image = properties.Icon or "",
					Visible = properties.Icon ~= nil and properties.Icon ~= "",

					__dynamicKeys = {
						ImageColor3 = self.Theme.Icons.Primary[1],
					},
				}),

				create("TextLabel")({
					Name = "Title",
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					Text = properties.Title,
					TextColor3 = self.Theme.Controls.PrimaryText[1].Value,
					TextTransparency = self.Theme.Controls.PrimaryText[2].Value,
					FontFace = Font.fromEnum(Enum.Font.GothamSemibold),
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextWrapped = true,

					__dynamicKeys = {
						TextColor3 = self.Theme.Controls.PrimaryText[1],
						TextTransparency = self.Theme.Controls.PrimaryText[2],
					},
				}),
			}),

			-- Body Text
			create("TextLabel")({
				Name = "Body",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				Text = properties.Body,
				TextColor3 = self.Theme.Controls.SecondaryText[1].Value,
				TextTransparency = self.Theme.Controls.SecondaryText[2].Value,
				FontFace = Font.fromEnum(Enum.Font.Gotham),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
				Visible = properties.Body and properties.Body ~= "",

				__dynamicKeys = {
					TextColor3 = self.Theme.Controls.SecondaryText[1],
					TextTransparency = self.Theme.Controls.SecondaryText[2],
				},
			}),

			-- Footer Text
			create("TextLabel")({
				Name = "Footer",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				Text = properties.Footer,
				TextColor3 = self.Theme.Controls.SecondaryText[1].Value,
				TextTransparency = self.Theme.Controls.SecondaryText[2].Value + 0.2,
				FontFace = Font.fromEnum(Enum.Font.Gotham),
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
				Visible = properties.Footer and properties.Footer ~= "",

				__dynamicKeys = {
					TextColor3 = self.Theme.Controls.SecondaryText[1],
					TextTransparency = function()
						return self.Theme.Controls.SecondaryText[2].Value + 0.2
					end,
				},
			}),
		}),
	}):__create()

	--// Calculate position based on preference
	local function updatePosition()
		local screenGui = parent:FindFirstAncestorWhichIsA("ScreenGui")
		if not screenGui then return end

		local screenSize = screenGui.AbsoluteSize
		local notifSize = notification.AbsoluteSize

		local offsetX = 16
		local offsetY = 16

		if properties.Position == "TopRight" then
			notification.Position = UDim2.new(1, -offsetX - notifSize.X, 0, offsetY)
		elseif properties.Position == "BottomLeft" then
			notification.Position = UDim2.new(0, offsetX, 1, -offsetY - notifSize.Y)
		elseif properties.Position == "BottomRight" then
			notification.Position = UDim2.new(1, -offsetX - notifSize.X, 1, -offsetY - notifSize.Y)
		else -- TopLeft (default)
			notification.Position = UDim2.new(0, offsetX, 0, offsetY)
		end
	end

	--// Auto-dismiss timer
	local dismissTween = nil
	local isVisible = true

	local function startDismissTimer()
		if properties.Duration <= 0 then return end

		task.delay(properties.Duration, function()
			if isVisible and notification and notification.Parent then
				Dismiss(true)
			end
		end)
	end

	--// Dismiss animation
	local function Dismiss(tween: boolean?)
		if not isVisible then return end
		isVisible = false

		if dismissTween then
			dismissTween:Cancel()
		end

		if tween then
			local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
			dismissTween = tweenService:Create(notification, tweenInfo, {
				AnchorPoint = Vector2.new(0.5, 0),
				Position = notification.Position - UDim2.new(0, 0, 0, notification.AbsoluteSize.Y + 10),
				GroupTransparency = 1,
			})

			dismissTween:Play()
			dismissTween.Completed:Once(function()
				if notification and notification.Parent then
					notification:Destroy()
				end
			end)
		else
			if notification and notification.Parent then
				notification:Destroy()
			end
		end
	end

	--// Show animation
	local function Show()
		if not isVisible then return end

		notification.Size = UDim2.fromOffset(320, 0)
		notification.GroupTransparency = 1

		local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
		local showTween = tweenService:Create(notification, tweenInfo, {
			GroupTransparency = 0,
		})

		showTween:Play()

		task.delay(0.05, function()
			updatePosition()
		end)

		startDismissTimer()
	end

	--// Bindings
	local bindings = {
		Title = function(value: string)
			local titleLabel = notification:FindFirstChild("LayoutContainer"):FindFirstChild("Header"):FindFirstChild("Title")
			if titleLabel then
				titleLabel.Text = value
			end
		end,
		Body = function(value: string)
			local bodyLabel = notification:FindFirstChild("LayoutContainer"):FindFirstChild("Body")
			if bodyLabel then
				bodyLabel.Text = value
				bodyLabel.Visible = value and value ~= ""
			end
		end,
		Footer = function(value: string)
			local footerLabel = notification:FindFirstChild("LayoutContainer"):FindFirstChild("Footer")
			if footerLabel then
				footerLabel.Text = value
				footerLabel.Visible = value and value ~= ""
			end
		end,
		Position = function(value: string)
			properties.Position = value
			updatePosition()
		end,
		Duration = function(value: number)
			properties.Duration = value
			startDismissTimer()
		end,
	}

	local object = binder.Wrap(properties, bindings, notification)

	object.Type = "Notification"
	object.Theme = self.Theme
	object.Dismiss = Dismiss
	object.Show = Show

	--// Initial show
	task.defer(function()
		binder.Apply(properties, object)
		Show()
	end)

	return object
end
