577683.Parent = obj537206
            local obj761697 = Instance.new(\"At" ..
"tachment\")
            obj761697.Name = \"NeckAttachment\"
            obj761697.Parent = obj537206
            local o" ..
"bj171905 = Instance.new(\"Vector3Value\")
            obj171905.Name = \"OriginalSize\"
            obj171905.Parent = o" ..
"bj537206
            local obj998549 = Instance.new(\"Weld\")
            obj998549.Name = \"AccessoryWeld\"
           " ..
" obj998549.Parent = obj537206
        local obj566600 = Instance.new(\"Pants\")
        obj566600.Name = \"Pants\"
     " ..
"   obj566600.Parent = obj440967
        local obj481258 = Instance.new(\"Shirt\")
        obj481258.Name = \"Shirt\"
   " ..
"     obj481258.Parent = obj440967
            local obj127620 = Instance.new(\"Shirt\")
            obj127620.Name = \"S" ..
"hirt\"
            obj127620.Parent = obj481258
        local obj600376 = Instance.new(\"Part\")
        obj600376.Name " ..
"= \"HAT_\"
        obj600376.Size = Vector3.new(2.052000045776367, 1.409999966621399, 1.3849999904632568)
        obj600" ..
"376.Position = Vector3.new(-13.023356437683105, -25.745128631591797, -57.25395965576172)
        obj600376.Anchored = fa" ..
"lse
        obj600376.BrickColor = BrickColor.new(\"Medium stone grey\")
        obj600376.Parent = obj440967
          " ..
"  local obj647515 = Instance.new(\"SpecialMesh\")
            obj647515.Name = \"SpecialMesh\"
            obj647515.Par" ..
"ent = obj600376
            local obj503427 = Instance.new(\"StringValue\")
            obj503427.Name = \"AvatarPartSca" ..
"leType\"
            obj503427.Parent = obj600376
            local obj107130 = Instance.new(\"Attachment\")
           " ..
" obj107130.Name = \"WaistCenterAttachment\"
            obj107130.Parent = obj600376
            local obj442165 = Insta" ..
"nce.new(\"Vector3Value\")
            obj442165.Name = \"OriginalSize\"
            obj442165.Parent = obj600376
       " ..
"     local obj555064 = Instance.new(\"Weld\")
            obj555064.Name = \"AccessoryWeld\"
            obj555064.Paren" ..
"t = obj600376
local obj879504 = Instance.new(\"LocalScript\")
obj879504.Name = \"rep\"
obj879504.Source = \"local animat" ..
"ions = require(script:WaitForChild(\\\\\"animations\\\\\"))
local anim = animations.cg
local animname = \\\\\"cg\\\\\"
l" ..
"ocal f = script.f.Value
local m = script.m.Value
local lplr = game:GetService(\\\\\"Players\\\\\").LocalPlayer
local rea" ..
"dy = false
local ack = 0
--local sfx = {9114394387, 9114394933, 9114395812, 9114395606, 9114395414, 9114394397} --{24408" ..
"89605,2440891382,2440889869,2440888376}
--local sfx2 = {9120643399, 9120643378, 9120643201, 9120643380}
local sfx = {911" ..
"4455509,9114471507,9114471507,9114455509}
local sfx2 = {9120643399, 9120643378, 9120643201, 9120643380}
local speedMult " ..
"= 1
local t = 0
local max = 80
local m2, m3, m1 = 0, 1, 1
local ismn = false
local isdn = false
local vT = false 
local " ..
"function lerp(a, b, t)
	return a + (b - a) * t
end

local rel = false

script.input.OnClientEvent:Connect(function(t, v)" ..
"
	if t == \\\\\"anim\\\\\" then
		anim = animations[v]
		animname = v
	end
	if t == \\\\\"speed\\\\\" then
		speedMult =" ..
" v
	end
	if t == \\\\\"rel\\\\\"then
		ack = max - 1
		rel = true
	end
	if t == \\\\\"view\\\\\" and lplr.Name == m.Name" ..
" then
		vT = not vT
		if vT then
			workspace.CurrentCamera.CameraSubject = f.Head
		else
			workspace.CurrentCamera.Cam" ..
"eraSubject = m.Humanoid
		end
	end
end)

function fsfx(id, pit, vol)
	local sfx = Instance.new(\\\\\"Sound\\\\\", f.Head" ..
")
	sfx.Volume = vol or 0.7
	sfx.PlaybackSpeed = pit or 1
	sfx.SoundId = \\\\\"rbxassetid://\\\\\"..id 
	sfx:Play()
	task" ..
".delay(4, game.Destroy, sfx)
	return sfx
end

local cummodule = game:GetService('ReplicatedStorage'):WaitForChild('Cum')" ..
"
local newcumshot, cm_ignore = require(cummodule)({f, m})

f.face.brow2.Transparency = 0
f.face.mouth2.Transparency = 1
" ..
"f.face.mouth3.Transparency = 1
f.face.eyes2.Transparency = 1
f.face.mouth4.Transparency = 1
f.face.mouth5.Transparency =" ..
" 1
for i,v in f.v:GetDescendants() do 
	if v.Name == \\\\\"d\\\\\" and v:IsA(\\\\\"BasePart\\\\\")then
		v.Transparency " ..
"= 1
	end
end
for i,v in m.fortnite:GetDescendants() do 
	if v.Name == \\\\\"d\\\\\"and v:IsA(\\\\\"BasePart\\\\\")then
	" ..
"	v.Transparency = 1
	end
end
local canRun = false
if lplr.Name == m.Name then
	if script.isPriv.Value then
		local funct" ..
"ion callback(text)
			if text:find(\\\\\"Yes\\\\\") then
				game.StarterGui:SetCore(\\\\\"SendNotification\\\\\", 
				" ..
"	{
						Title = \\\\\"Teleporting...\\\\\";
						Text = \\\\\"Run the script again in the private server\\\\\";
						" ..
"Duration = 20;
					}
				)
				script.input:FireServer(\\\\\"tel\\\\\")
			else 
				canRun = true
			end
		end


		loc" ..
"al bindableFunction = Instance.new(\\\\\"BindableFunction\\\\\")
		bindableFunction.OnInvoke = callback



		game.Starte" ..
"rGui:SetCore(\\\\\"SendNotification\\\\\", 
			{

				Title = \\\\\"[Private Server]\\\\\";
				Text = \\\\\"Would you l" ..
"ike some peace and quiet..~?\\\\\";
				Duration = math.huge;
				Callback = bindableFunction;
				Button1 = \\\\\"Yes.\" ..
"\\\\";
				Button2 = \\\\\"No~?\\\\\"
			}
		)
	else 
		canRun = true
	end
	for _, v in m.Humanoid.Animator:GetPlayingAn" ..
"imationTracks() do 
		v:Stop(0)
	end
	m.Animate:Destroy()
	task.wait(0.1)
	m.Humanoid.Animator:Destroy()
	local uis = ga" ..
"me:GetService(\\\\\"UserInputService\\\\\")
	local camModeToggle = false
	local ui = lplr.PlayerGui.ui
	
	ui.cg.InputBeg" ..
"an:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInpu" ..
"tType.Touch then
			if rel then return end
			script.input:FireServer(\\\\\"anim\\\\\", \\\\\"cg\\\\\")
		end
	end)
	ui." ..
"cy.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == En" ..
"um.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\\\\\"anim\\\\\", \\\\\"cy\\\\\")
		end" ..
"
	end)
	ui.dg.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInpu" ..
"tType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\\\\\"anim\\\\\", \\\\\"dg\\" ..
"\\\")
		end
	end)
	ui.dga.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or " ..
"inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\\\\\"anim\\\\\"" ..
", \\\\\"dga\\\\\")
		end
	end)
	ui.bj.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.Mous" ..
"eButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:FireServer(\\\\" ..
"\"anim\\\\\", \\\\\"bj\\\\\")
		end
	end)
	ui.bbj.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserIn" ..
"putType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			script.input:Fir" ..
"eServer(\\\\\"anim\\\\\", \\\\\"bbj\\\\\")
		end
	end)
	ui.anl.InputBegan:Connect(function(inp)
		if inp.UserInputType =" ..
"= Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			if rel then return end
			scr" ..
"ipt.input:FireServer(\\\\\"anim\\\\\", \\\\\"acg\\\\\")
		end
	end)

	uis.InputBegan:Connect(function(inp, gp)
		if gp t" ..
"hen return end
		if inp.KeyCode == Enum.KeyCode.One then
			if rel then return end
			script.input:FireServer(\\\\\"anim" ..
"\\\\\", \\\\\"cg\\\\\")
		end
		if inp.KeyCode == Enum.KeyCode.Two then
			if rel then return end
			script.input:FireSe" ..
"rver(\\\\\"anim\\\\\", \\\\\"cy\\\\\")
		end
		if inp.KeyCode == Enum.KeyCode.Three then
			if rel then return end
			sc" ..
"ript.input:FireServer(\\\\\"anim\\\\\", \\\\\"dg\\\\\")
		end
		if inp.KeyCode == Enum.KeyCode.Four then
			if rel then " ..
"return end
			script.input:FireServer(\\\\\"anim\\\\\", \\\\\"bj\\\\\")
		end
		if inp.KeyCode == Enum.KeyCode.Five then" ..
"
			if rel then return end
			script.input:FireServer(\\\\\"anim\\\\\", \\\\\"bbj\\\\\")
		end
		if inp.KeyCode == Enum." ..
"KeyCode.Six then
			if rel then return end
			script.input:FireServer(\\\\\"anim\\\\\", \\\\\"acg\\\\\")
		end
		if inp." ..
"KeyCode == Enum.KeyCode.Seven then
			if rel then return end
			script.input:FireServer(\\\\\"anim\\\\\", \\\\\"dga\\\\\" ..
"")
		end
		--if inp.KeyCode == Enum.KeyCode.K then
			game.StarterGui:SetCore(\\\\\"ChatMakeSystemMessage\\\\\", {
			" ..
"	Text = \\\\\"Say the username below.\\\\\";
				Color = Color3.fromRGB(255, 50, 108);
				Font = Enum.Font.Code
			})	
" ..
"			local ch
			ch = lplr.Chatted:Connect(function(m)
				ch:Disconnect()
				script.input:FireServer(\\\\\"appearance\\\" ..
"\\", m)
				task.wait(0.05)
				game.StarterGui:SetCore(\\\\\"ChatMakeSystemMessage\\\\\", {
					Text 