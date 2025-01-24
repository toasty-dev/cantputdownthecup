--[[
           ==---=+
    ---------==========-
  -:-----=***+***++======-+
 ---=+=##*+#=*##*##*+*+*==-
 ---******#=+*#+####+*#**-:
 ====---*###**+#****=------
 ===========---------------
 ==============------------
  ==============---------:-
  ==========--------------
   =============---------
   *============---------
    ===============-----=
    =============-------
     ============-------
     ===========-------
      ==========-------
      ==========------ I can't put down the cup </3
      +=========------
       =========-----+
        =======-----+
           +===-=
]]

local SecureService = {
    GetService = function(self, ServiceName)
        return cloneref(game:GetService(ServiceName))
    end
}

local Players = SecureService:GetService("Players")
local Workspace = SecureService:GetService("Workspace")
local RunService = SecureService:GetService("RunService")
local TweenService = SecureService:GetService("TweenService")
local UserInputService = SecureService:GetService("UserInputService")
local GuiService = SecureService:GetService("GuiService")
local CoreGui = SecureService:GetService("CoreGui")
local Lighting = SecureService:GetService("Lighting")
local Stats = SecureService:GetService("Stats")
local NetworkClient = SecureService:GetService("NetworkClient")
local ReplicatedStorage = SecureService:GetService("ReplicatedStorage")
local ReplicatedFirst = SecureService:GetService("ReplicatedFirst")
local SoundService = SecureService:GetService("SoundService")
local StarterGui = SecureService:GetService("StarterGui")
local StarterPack = SecureService:GetService("StarterPack")
local Teams = SecureService:GetService("Teams")
local TeleportService = SecureService:GetService("TeleportService")
local PathfindingService = SecureService:GetService("PathfindingService")
local ProximityPromptService = SecureService:GetService("ProximityPromptService")
local HttpService = SecureService:GetService("HttpService")
local CollectionService = SecureService:GetService("CollectionService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = CoreGui
local Dragging
local DragInput
local DragStart
local StartPos
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_3 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Frame_4 = Instance.new("Frame")
local Frame_5 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UICorner_3 = Instance.new("UICorner")
local Frame_6 = Instance.new("Frame")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local Frame_7 = Instance.new("Frame")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UICorner_4 = Instance.new("UICorner")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local Frame_8 = Instance.new("ScrollingFrame")
local UIPadding = Instance.new("UIPadding")
local TextLabel_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UICorner_5 = Instance.new("UICorner")

local colors = {
    ["@@BLACK@@"] = Color3.fromRGB(0, 0, 0),
    ["@@BLUE@@"] = Color3.fromRGB(50, 50, 255),
    ["@@GREEN@@"] = Color3.fromRGB(0, 255, 0),
    ["@@CYAN@@"] = Color3.fromRGB(0, 255, 255),
    ["@@RED@@"] = Color3.fromRGB(255, 0, 0),
    ["@@MAGENTA@@"] = Color3.fromRGB(255, 0, 255),
    ["@@BROWN@@"] = Color3.fromRGB(139, 69, 19),
    ["@@LIGHT_GRAY@@"] = Color3.fromRGB(211, 211, 211),
    ["@@DARK_GRAY@@"] = Color3.fromRGB(169, 169, 169),
    ["@@LIGHT_BLUE@@"] = Color3.fromRGB(173, 216, 230),
    ["@@LIGHT_GREEN@@"] = Color3.fromRGB(144, 238, 144),
    ["@@LIGHT_CYAN@@"] = Color3.fromRGB(224, 255, 255),
    ["@@LIGHT_RED@@"] = Color3.fromRGB(255, 182, 193),
    ["@@LIGHT_MAGENTA@@"] = Color3.fromRGB(238, 130, 238),
    ["@@YELLOW@@"] = Color3.fromRGB(255, 255, 0),
    ["@@WHITE@@"] = Color3.fromRGB(255, 255, 255),
}

local CurrentColor = colors["@@WHITE@@"]

function rconsolecreate()
    --gui2lua is so goated :kiss:
    Frame.Parent = ScreenGui
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0.730797887, 0, 0.638190925, 0)
    Frame.BackgroundTransparency = 0
    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.fromRGB(58, 55, 55)
    Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_2.BorderSizePixel = 0
    Frame_2.Size = UDim2.new(0.99999994, 0, 0.057086613, 0)
    UICorner.Parent = Frame_2
    Frame_3.Parent = Frame_2
    Frame_3.AnchorPoint = Vector2.new(0, 1)
    Frame_3.BackgroundColor3 = Color3.fromRGB(58, 55, 55)
    Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_3.BorderSizePixel = 0
    Frame_3.Position = UDim2.new(0, 0, 1, 0)
    Frame_3.Size = UDim2.new(1, 0, 0.300000012, 0)
    ImageLabel.Parent = Frame_2
    ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0, 9, 0.5, 0)
    ImageLabel.Size = UDim2.new(0, 16, 0, 16)
    ImageLabel.Image = "rbxassetid://95529367537345"
    TextLabel.Parent = Frame_2
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 29, 0, 0)
    TextLabel.Size = UDim2.new(0, 150, 1, 0)
    TextLabel.Font = Enum.Font.Roboto
    TextLabel.Text = "RConsole Recreation"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    UITextSizeConstraint.Parent = TextLabel
    UITextSizeConstraint.MaxTextSize = 14
    UIAspectRatioConstraint.Parent = Frame_2
    UIAspectRatioConstraint.AspectRatio = 33.793
    Frame_4.Parent = Frame
    Frame_4.AnchorPoint = Vector2.new(1, 0)
    Frame_4.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_4.BorderSizePixel = 0
    Frame_4.Position = UDim2.new(1, 0, 0.057086613, 0)
    Frame_4.Size = UDim2.new(0.0173469391, 0, 0.941999972, 0)
    Frame_5.Parent = Frame_4
    Frame_5.BackgroundColor3 = Color3.fromRGB(158, 158, 158)
    Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_5.BorderSizePixel = 0
    Frame_5.Position = UDim2.new(0.5, 0, 0.0125382422, 0)
    Frame_5.Size = UDim2.new(0.176470593, 0, 0.0397044346, 0)
    Frame_5.ZIndex = 2
    UICorner_2.CornerRadius = UDim.new(0, 10)
    UICorner_2.Parent = Frame_5
    UIAspectRatioConstraint_2.Parent = Frame_5
    UIAspectRatioConstraint_2.AspectRatio = 0.158
    UICorner_3.Parent = Frame_4
    Frame_6.Parent = Frame_4
    Frame_6.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_6.BorderSizePixel = 0
    Frame_6.Size = UDim2.new(0.470588207, 0, 1, 0)
    UIAspectRatioConstraint_3.Parent = Frame_6
    UIAspectRatioConstraint_3.AspectRatio = 0.017
    Frame_7.Parent = Frame_4
    Frame_7.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    Frame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_7.BorderSizePixel = 0
    Frame_7.Size = UDim2.new(1, 0, 0.0167176556, 0)
    UIAspectRatioConstraint_4.Parent = Frame_7
    UIAspectRatioConstraint_4.AspectRatio = 2.125
    UIAspectRatioConstraint_5.Parent = Frame_4
    UIAspectRatioConstraint_5.AspectRatio = 0.036
    UICorner_4.Parent = Frame
    UIAspectRatioConstraint_6.Parent = Frame
    UIAspectRatioConstraint_6.AspectRatio = 1.929
    Frame_8.Name = "Frame"
    Frame_8.Parent = Frame
    Frame_8.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
    Frame_8.BackgroundTransparency = 1.000
    Frame_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_8.BorderSizePixel = 0
    Frame_8.Position = UDim2.new(0, 0, 0.0570865832, 0)
    Frame_8.Selectable = false
    Frame_8.Size = UDim2.new(1, 0, 1, 0)
    Frame_8.ScrollBarThickness = 0
    UIPadding.Parent = Frame_8
    UIPadding.PaddingBottom = UDim.new(0, 4)
    UIPadding.PaddingLeft = UDim.new(0, 8)
    UIPadding.PaddingRight = UDim.new(0, 8)
    UIPadding.PaddingTop = UDim.new(0, 4)
    UIAspectRatioConstraint_7.Parent = TextLabel_2
    UIAspectRatioConstraint_7.AspectRatio = 2.015
    UITextSizeConstraint_2.Parent = TextLabel_2
    UITextSizeConstraint_2.MaxTextSize = 14
    UIAspectRatioConstraint_8.Parent = Frame_8
    UIAspectRatioConstraint_8.AspectRatio = 2.015
end

-- I stole this from paws :fire:
function update(input)
    local delta = input.Position - DragStart
    Frame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + delta.X, StartPos.Y.Scale, StartPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging = true
        DragStart = input.Position
        StartPos = Frame.Position
                            input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                Dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        DragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == DragInput and Dragging then
        update(input)
    end
end)

--sigma sigma boy!
function rconsolename(Input)
    TextLabel.Text = Input
end

function rconsoleprint(Input)
    if colors[Input] then
        CurrentColor = colors[Input]
    else
        local Text = Instance.new("TextLabel")
        Text.Parent = Frame_8
        Text.BackgroundTransparency = 1
        Text.TextTransparency = 1
        Text.TextColor3 = CurrentColor
        Text.Font = Enum.Font.Code
        Text.TextSize = 14
        Text.TextXAlignment = Enum.TextXAlignment.Left
        Text.TextYAlignment = Enum.TextYAlignment.Top
        Text.Size = UDim2.new(1, 0, 0, 20)
        Text.Text = Input
        Text.Position = UDim2.new(0, 0, 0, Frame_8.CanvasSize.Y.Offset)

        Frame_8.CanvasSize = UDim2.new(0, 0, 0, Frame_8.CanvasSize.Y.Offset + 20)

        local Fade = TweenInfo.new(0.07, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        local FadeIn = TweenService:Create(Text, Fade, {TextTransparency = 0})
        FadeIn:Play()
    end
end

function rconsoleinfo(Input)
    local Info = "[INFO] " .. Input
    local OldColor = CurrentColor
    CurrentColor = colors["@@BLUE@@"]
    rconsoleprint(Info)
    CurrentColor = OldColor
end

function rconsolewarning(Input)
    local Info = "[WARNING] " .. Input
    local OldColor = CurrentColor
    CurrentColor = colors["@@YELLOW@@"]
    rconsoleprint(Info)
    CurrentColor = OldColor
end

function rconsoleerr(Input)
    local Info = "[ERROR] " .. Input
    local OldColor = CurrentColor
    CurrentColor = colors["@@RED@@"]
    rconsoleprint(Info)
    CurrentColor = OldColor
end

function rconsoleclear()
    for i, v in ipairs(Frame_8:GetChildren()) do
        if v:IsA("TextLabel") then
            v:Destroy()
        end
    end
    Frame_8.CanvasSize = UDim2.new(0, 0, 0, 0)
end

function rconsoledestroy()
    ScreenGui:Destroy()
end
