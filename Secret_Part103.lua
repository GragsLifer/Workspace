UserInputService\\\\\")

wait(1)

local P = script.Parent
local slider = P.Slider
local knob = slid" ..
"er.Knob
local FOVLabel = P.value
local knobGrabbed = false

local camera = workspace.CurrentCamera

function GrabFOVKnob" ..
"()
	knobGrabbed = true
end

function round(val, decimal)
	if (decimal) then
		return math.floor( (val * 10^decimal) + 0." ..
"5) / (10^decimal)
	else
		return math.floor(val+0.5)
	end
end

local val = 1

function MoveFOVKnob(screenPosition)
	loca" ..
"l yDiff = screenPosition.Y - slider.AbsolutePosition.y
	local knobPositionRatio = math.min(math.max(yDiff / slider.Absol" ..
"uteSize.y, 0), 1)
	
	local newFOV = 3.5 * (1 - knobPositionRatio)
	val = newFOV
	script.Parent.input:FireServer(val)	

	" ..
"knob.Position = UDim2.new(-knob.Size.X.Scale / 2, 0, knobPositionRatio - knob.Size.Y.Scale / 2, 0)
	FOVLabel.Text = roun" ..
"d(newFOV, 2)
end

function ReleaseFOVKnob()
	knobGrabbed = false
end

knob.InputBegan:connect(function(input)
	if (input" ..
".UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
		GrabFOVKnob" ..
"()
	end
end)

UIS.InputChanged:connect(function(input, gameProcessedEvent)
	if (not gameProcessedEvent and (input.UserIn" ..
"putType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and knobGrabbed) then
		" ..
"MoveFOVKnob(input.Position)
	end
end)

UIS.InputEnded:connect(function(input, gameProcessedEvent)
	if (not gameProcessed" ..
"Event and input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) the" ..
"n
		ReleaseFOVKnob()
	end
end)\"
        obj141929.Parent = obj336735
        local obj849757 = Instance.new(\"RemoteEve" ..
"nt\")
        obj849757.Name = \"input\"
        obj849757.Parent = obj336735
    local obj230210 = Instance.new(\"TextB" ..
"utton\")
    obj230210.Name = \"TextButton\"
    obj230210.Text = \"Controls\"
    obj230210.TextSize = 14
    obj230210" ..
".Size = UDim2.new(0.11255490034818649, 0, 0.040704891085624695, 0)
    obj230210.BackgroundColor3 = Color3.new(0, 0, 0)
" ..
"    obj230210.Parent = obj665777
        local obj655257 = Instance.new(\"LocalScript\")
        obj655257.Name = \"Loca" ..
"lScript\"
        obj655257.Source = \"script.Parent.MouseButton1Down:Connect(function()
	for i,v in next, script.Parent" ..
":GetChildren() do 
		if v:IsA(\\\\\"TextButton\\\\\")then
			v.Visible = not v.Visible
		end
	end
end)\"
        obj6552" ..
"57.Parent = obj230210
        local obj168140 = Instance.new(\"TextButton\")
        obj168140.Name = \"TextButton\"
   " ..
"     obj168140.Text = \"C - Close up camera\"
        obj168140.TextSize = 14
        obj168140.Size = UDim2.new(1, 0, 0" ..
".5827395915985107, 0)
        obj168140.BackgroundColor3 = Color3.new(1, 1, 1)
        obj168140.Parent = obj230210
    " ..
"    local obj313405 = Instance.new(\"TextButton\")
        obj313405.Name = \"TextButton\"
        obj313405.Text = \"On" ..
"e - Cowgirl\"
        obj313405.TextSize = 14
        obj313405.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        ob" ..
"j313405.BackgroundColor3 = Color3.new(1, 1, 1)
        obj313405.Parent = obj230210
        local obj162676 = Instance.n" ..
"ew(\"TextButton\")
        obj162676.Name = \"TextButton\"
        obj162676.Text = \"Two - Carry\"
        obj162676.Te" ..
"xtSize = 14
        obj162676.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj162676.BackgroundColor3 = Color3." ..
"new(1, 1, 1)
        obj162676.Parent = obj230210
        local obj539263 = Instance.new(\"TextButton\")
        obj5392" ..
"63.Name = \"TextButton\"
        obj539263.Text = \"Three - Doggy\"
        obj539263.TextSize = 14
        obj539263.Si" ..
"ze = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj539263.BackgroundColor3 = Color3.new(1, 1, 1)
        obj539263.P" ..
"arent = obj230210
        local obj603738 = Instance.new(\"TextButton\")
        obj603738.Name = \"TextButton\"
       " ..
" obj603738.Text = \"Four - Blow\"
        obj603738.TextSize = 14
        obj603738.Size = UDim2.new(1, 0, 0.58273959159" ..
"85107, 0)
        obj603738.BackgroundColor3 = Color3.new(1, 1, 1)
        obj603738.Parent = obj230210
        local ob" ..
"j345877 = Instance.new(\"TextButton\")
        obj345877.Name = \"TextButton\"
        obj345877.Text = \"Five - Boob\"
" ..
"        obj345877.TextSize = 14
        obj345877.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj345877.Backgr" ..
"oundColor3 = Color3.new(1, 1, 1)
        obj345877.Parent = obj230210
        local obj390547 = Instance.new(\"TextButto" ..
"n\")
        obj390547.Name = \"TextButton\"
        obj390547.Text = \"H - Toggle interface visibility\"
        obj390" ..
"547.TextSize = 14
        obj390547.Size = UDim2.new(1, 0, 0.5827395915985107, 0)
        obj390547.BackgroundColor3 = C" ..
"olor3.new(1, 1, 1)
        obj390547.Parent = obj230210
    local obj150105 = Instance.new(\"TextBox\")
    obj150105.Na" ..
"me = \"user\"
    obj150105.Text = \"Username\"
    obj150105.TextSize = 14
    obj150105.Size = UDim2.new(0.11255489289" ..
"76059, 0, 0.029496531933546066, 0)
    obj150105.BackgroundColor3 = Color3.new(0, 0, 0)
    obj150105.Parent = obj665777" ..
"
        local obj493444 = Instance.new(\"LocalScript\")
        obj493444.Name = \"LocalScript\"
        obj493444.Sour" ..
"ce = \"script.Parent.FocusLost:Connect(function()
	game.Players.LocalPlayer.PlayerGui.rep.input:FireServer(\\\\\"appeara" ..
"nce\\\\\", script.Parent.Text)
end)\"
        obj493444.Parent = obj150105
    local obj468564 = Instance.new(\"LocalScr" ..
"ipt\")
    obj468564.Name = \"LocalScript\"
    obj468564.Source = \"game:GetService(\\\\\"UserInputService\\\\\").Input" ..
"Began:Connect(function(i, gp)
	if i.KeyCode== Enum.KeyCode.H and not gp then
		for i,v in next, script.Parent:GetChildre" ..
"n() do 
			if (v:IsA(\\\\\"TextButton\\\\\") or v:IsA(\\\\\"Frame\\\\\") or v:IsA(\\\\\"TextBox\\\\\")) and v.Name ~= \\" ..
"\\\"tog\\\\\" and v.Name ~= \\\\\"user\\\\\" then
				v.Visible = not v.Visible
			end
		end
	end
end)\"
    obj468564.P" ..
"arent = obj665777
    local obj377566 = Instance.new(\"TextButton\")
    obj377566.Name = \"r\"
    obj377566.Text = \"F" ..
"emale view\"
    obj377566.TextSize = 14
    obj377566.Size = UDim2.new(0.1125548928976059, 0, 0.029496531933546066, 0)
" ..
"    obj377566.BackgroundColor3 = Color3.new(0, 0, 0)
    obj377566.Parent = obj665777
        local obj522693 = Instance" ..
".new(\"LocalScript\")
        obj522693.Name = \"LocalScript\"
        obj522693.Source = \"script.Parent.MouseButton1Do" ..
"wn:Connect(function()
	game.Players.LocalPlayer.PlayerGui.rep.input:FireServer(\\\\\"view\\\\\")
end)\"
        obj52269" ..
"3.Parent = obj377566
    local obj167694 = Instance.new(\"TextButton\")
    obj167694.Name = \"cg\"
    obj167694.Text =" ..
" \"Cowgirl\"
    obj167694.TextSize = 14
    obj167694.Size = UDim2.new(0.03244419023394585, 0, 0.05864846333861351, 0)
" ..
"    obj167694.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj167694.Paren" ..
"t = obj665777
        local obj246417 = Instance.new(\"UIAspectRatioConstraint\")
        obj246417.Name = \"UIAspectRat" ..
"ioConstraint\"
        obj246417.Parent = obj167694
    local obj862624 = Instance.new(\"TextButton\")
    obj862624.Nam" ..
"e = \"cy\"
    obj862624.Text = \"Carry\"
    obj862624.TextSize = 14
    obj862624.Size = UDim2.new(0.03374155238270759" ..
"6, 0, 0.05864845961332321, 0)
    obj862624.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980" ..
"406999588)
    obj862624.Parent = obj665777
        local obj224557 = Instance.new(\"UIAspectRatioConstraint\")
        " ..
"obj224557.Name = \"UIAspectRatioConstraint\"
        obj224557.Parent = obj862624
    local obj482872 = Instance.new(\"T" ..
"extButton\")
    obj482872.Name = \"dg\"
    obj482872.Text = \"Doggy\"
    obj482872.TextSize = 14
    obj482872.Size =" ..
" UDim2.new(0.03318219259381294, 0, 0.05864844471216202, 0)
    obj482872.BackgroundColor3 = Color3.new(0.250980406999588" ..
", 0.250980406999588, 0.250980406999588)
    obj482872.Parent = obj665777
        local obj772982 = Instance.new(\"UIAspe" ..
"ctRatioConstraint\")
        obj772982.Name = \"UIAspectRatioConstraint\"
        obj772982.Parent = obj482872
    local" ..
" obj947954 = Instance.new(\"TextButton\")
    obj947954.Name = \"bj\"
    obj947954.Text = \"Blow\"
    obj947954.TextSi" ..
"ze = 14
    obj947954.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
    obj947954.BackgroundColor3 =" ..
" Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj947954.Parent = obj665777
        local obj7" ..
"81315 = Instance.new(\"UIAspectRatioConstraint\")
        obj781315.Name = \"UIAspectRatioConstraint\"
        obj781315" ..
".Parent = obj947954
    local obj523588 = Instance.new(\"TextButton\")
    