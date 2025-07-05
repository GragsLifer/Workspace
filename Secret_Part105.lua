nce(child, varName, depth + 1)
		for _, line in ipairs(childLines) do
			table.insert(lines, line)
		end
	end
	return" ..
" lines
end

button.Click:Connect(function()
	local services = {
		workspace,
		game:GetService(\\\\\"ReplicatedStorage\\" ..
"\\\"),
		game:GetService(\\\\\"ServerStorage\\\\\"),
		game:GetService(\\\\\"ServerScriptService\\\\\"),
		game:GetServi" ..
"ce(\\\\\"StarterGui\\\\\"),
		game:GetService(\\\\\"StarterPack\\\\\"),
		game:GetService(\\\\\"StarterPlayer\\\\\"),
		" ..
"game:GetService(\\\\\"Lighting\\\\\"),
	}

	local allLines = {\\\\\"-- AUTO EXPORT SCRIPT --\\\\\"}
	for _, service in i" ..
"pairs(services) do
		for _, obj in ipairs(service:GetChildren()) do
			local lines = serializeInstance(obj, \\\\\"game.\" ..
"\\\\" .. service.Name)
			for _, l in ipairs(lines) do
				table.insert(allLines, l)
			end
		end
	end

	local full = ta" ..
"ble.concat(allLines, \\\\\"\\\\\\\\n\\\\\")
	local maxLen = 190000
	local count = 1
	for i = 1, #full, maxLen do
		local" ..
" part = full:sub(i, i + maxLen - 1)
		local scriptPart = Instance.new(\\\\\"Script\\\\\")
		scriptPart.Name = \\\\\"Expo" ..
"rtedPart_\\\\\" .. tostring(count)
		scriptPart.Source = part
		scriptPart.Parent = workspace
		count += 1
	end
	print(\" ..
"\\\\"? Export completed in \\\\\" .. tostring(count - 1) .. \\\\\" parts.\\\\\")
end)\"
obj675893.Parent = game.ServerSt" ..
"orage
local obj641192 = Instance.new(\"Script\")
obj641192.Name = \"System\"
obj641192.Source = \"task.wait(.5)

local c" ..
"har_added = function(c)
	--task.wait(2)
	--require(script.R6Module):Fire(plr.Name)
	--task.wait(2)
	--c = plr.Character
" ..
"	local script = Instance.new(\\\\\"Script\\\\\", c)
	for i,v in game.ServerStorage:GetChildren() do 
		v:Clone().Parent " ..
"= script
	end
	--scandalous#6503
	--scandalous#6503
	--scandalous#6503
	--scandalous#6503

	local s = script:WaitForChil" ..
"d(\\\\\"ModelFolder\\\\\") --script:WaitForChild(\\\\\"Skull\\\\\")
	local m = script.Parent
	local plr = game:GetServic" ..
"e(\\\\\"Players\\\\\"):GetPlayerFromCharacter(m)
	local f = s:WaitForChild(\\\\\"f\\\\\")
	for _,v in f:WaitForChild(\\\" ..
"\\"v\\\\\"):GetDescendants() do
		if v:IsA(\\\\\"BasePart\\\\\") then
			local weldconstraint = Instance.new(\\\\\"WeldC" ..
"onstraint\\\\\")
			weldconstraint.Part0 = f.Torso
			weldconstraint.Part1 = v
			weldconstraint.Parent = v
			v.Anchore" ..
"d = false
			v.Massless = true
		end
	end
	local shield = s:WaitForChild(\\\\\"a\\\\\")
	shield:FindFirstChild(\\\\\"rbw" ..
"\\\\\",true).Parent = f
	shield:FindFirstChild(\\\\\"lbw\\\\\",true).Parent = f

	local hw = script:WaitForChild(\\\\\"h" ..
"atWearer\\\\\")
	hw.HumanoidRootPart.Anchored = true
	hw:PivotTo(CFrame.new(99999, 99999, 99999))

	local connect = Inst" ..
"ance.new(\\\\\"Motor6D\\\\\", m)
	connect.Part0 = m.HumanoidRootPart
	connect.Part1 = f.HumanoidRootPart
	connect.C0 = C" ..
"Frame.new(0, 0, -1)
	connect.Name = \\\\\"cn\\\\\"

	local fortnite = s:WaitForChild(\\\\\"fortnite\\\\\")
	local fortni" ..
"te2 = s:WaitForChild(\\\\\"fortnite2\\\\\")

	local ui = script:WaitForChild(\\\\\"ui\\\\\")
	ui.Parent = plr.PlayerGui
" ..
"
	local clients = {}
	local speed = 1

	ui.spd.input.OnServerEvent:Connect(function(plr, v)
		for plr, r in clients do 
" ..
"			r:FireClient(plr, \\\\\"speed\\\\\", v)
		end
	end)

	for i,v in fortnite.p:GetDescendants() do 
		if v.Name == \\\\\" ..
""s\\\\\"then
			v.Color = m.Torso.Color
		end
		if v:IsA(\\\\\"BasePart\\\\\")then
			local weld = Instance.new(\\\\\"We" ..
"ldConstraint\\\\\")
			weld.Part0 = fortnite.t
			weld.Part1 = v
			weld.Parent = v
			v.Anchored = false
			v.Transpare" ..
"ncy = 0
			v.Massless = true
		end
	end
	fortnite.Parent = m
	local connect = Instance.new(\\\\\"Motor6D\\\\\", m)
	conn" ..
"ect.Part0 = m.Torso
	connect.Part1 = fortnite.t
	connect.C0 = CFrame.new(0, -1, -.4)
	connect.C1 = CFrame.new(0, -1, -.4" ..
")
	connect.Name = \\\\\"fw\\\\\"

	for i,v in fortnite2.s:GetDescendants() do 
		if v.Name == \\\\\"s\\\\\"then
			v.Col" ..
"or = m.Torso.Color
		end
		if v:IsA(\\\\\"BasePart\\\\\")then
			local weld = Instance.new(\\\\\"WeldConstraint\\\\\")
	" ..
"		weld.Part0 = fortnite2.t
			weld.Part1 = v
			weld.Parent = v
			v.Anchored = false
			v.Transparency = 0
			v.Massles" ..
"s = true
		end
	end
	fortnite2.Parent = m
	local connect = Instance.new(\\\\\"Motor6D\\\\\", m)
	connect.Part0 = m.Torso" ..
"
	connect.Part1 = fortnite2.t
	connect.C0 = CFrame.new(0, -1, -.4)
	connect.C1 = CFrame.new(0, -1, -.4)
	connect.Name = " ..
"\\\\\"fw2\\\\\"

	shield.Parent = f
	local connect = Instance.new(\\\\\"Motor6D\\\\\", f)
	connect.Part0 = f.Torso
	conn" ..
"ect.Part1 = shield.Torso
	connect.Name = \\\\\"bw\\\\\"

	for i,v in f:GetDescendants() do 
		--if v:IsA(\\\\\"BasePart\" ..
"\\\\") and v.Name ~= \\\\\"HumanoidRootPart\\\\\" and v.Name ~= \\\\\"face\\\\\"and v.Name ~= \\\\\"shield\\\\\" and v.N" ..
"ame ~= \\\\\"d\\\\\" then
		--	v.Transparency = 0
		--	warn(\\\\\"made by scandalous#6503\\\\\")
		--end
		if v:IsA(\\\\" ..
"\"BasePart\\\\\")then
			v.Anchored = false
			v.Massless = true
		end
		if v:IsA(\\\\\"Decal\\\\\") and v.Name ~= \\\\\" ..
""face\\\\\" then
			v.Transparency = 0
		end
	end
	for i,v in f.v:GetDescendants() do 
		if v:IsA(\\\\\"BasePart\\\\\") " ..
"and v.Parent.Name == \\\\\"Aroused\\\\\" or v.Parent.Name == \\\\\"Opened\\\\\" then
			v.Transparency = 1
		end
	end
	s" ..
"hield.Torso.Transparency = 1

	for i,v in f:GetDescendants() do 
		if v.Name == \\\\\"s\\\\\" and v:IsA(\\\\\"BasePart\\" ..
"\\\") then
			v.Color = f.Torso.Color
		end
	end
	for i,v in f:GetDescendants() do
		if v:IsA(\\\\\"BasePart\\\\\") then" ..
"
			v.Massless = true
			v.CanCollide = v.Name ~= 'HAT_'
			if v:GetAttribute(\\\\\"DONTRENDER\\\\\") then
				v.Transpa" ..
"rency = 1
			end
		end
	end
	f.Parent = workspace.Terrain --script

	s:Destroy()

	for i,v in m:GetChildren() do 
		if v" ..
".Name:find(\\\\\"irt\\\\\") or v.Name:find(\\\\\"nts\\\\\") then
			v:Destroy()
		end
	end

	local function replicate(pl" ..
"ayer)
		local r = script.rep:Clone()
		r.m.Value = m 
		r.isPriv.Value = game.PrivateServerId == \\\\\"\\\\\"
		r.f.Valu" ..
"e = f
		r.Parent = player.PlayerGui
		r.Disabled = false
		clients[player] = r:WaitForChild(\\\\\"input\\\\\")
		task.wa" ..
"it(0.1)
		r.input:FireClient(player, \\\\\"speed\\\\\", speed)
		if player == plr then
			r.input.OnServerEvent:Connect(" ..
"function(plr, ...)
				local args = {...}
				if args[1] == \\\\\"tel\\\\\" then
					local TS = game:GetService(\\\\\"T" ..
"eleportService\\\\\")
					local code = TS:ReserveServer(game.PlaceId)
					TS:TeleportToPrivateServer(game.PlaceId,code" ..
",{plr})
				end
				if args[1] == \\\\\"appearance\\\\\" then
					local model = game.Players:CreateHumanoidModelFromDes" ..
"cription(game.Players:GetHumanoidDescriptionFromUserId(game.Players:GetUserIdFromNameAsync(args[2])), Enum.HumanoidRigTy" ..
"pe.R6)
					--task.wait(0.5)
					local shirt = model:FindFirstChildOfClass('Shirt')
					local pants = model:FindFirstC" ..
"hildOfClass('Pants')
					local col = model:WaitForChild(\\\\\"Body Colors\\\\\")
					f.Head.Color = col.HeadColor3
			" ..
"		f.Torso.Color = col.TorsoColor3
					f['Right Arm'].Color = col.RightArmColor3
					f['Left Arm'].Color = col.LeftArmC" ..
"olor3
					f['Right Leg'].Color = col.RightLegColor3
					f['Left Leg'].Color = col.LeftLegColor3

					if f:FindFirstCh" ..
"ildOfClass('Shirt') then
						f:FindFirstChildOfClass('Shirt'):Destroy()
					end
					if f:FindFirstChildOfClass('Pant" ..
"s') then
						f:FindFirstChildOfClass('Pants'):Destroy()
					end
					--f.Torso.Mesh.Color = col.TorsoColor3
					--f." ..
"Torso.Shirt.Color = col.TorsoColor3
					--f.Torso.Pants.Color = col.TorsoColor3
					if shirt then
						shirt.Parent =" ..
" f
						--f.Torso.Shirt.TextureID = shirt.ShirtTemplate
						--f.Torso.Shirt.Transparency = 0.02
					else
						--f.T" ..
"orso.Shirt.Transparency = 1
					end
					if pants then
						pants.Parent = f
						--f.Torso.Pants.TextureID = pants.P" ..
"antsTemplate
						--f.Torso.Pants.Transparency = 0.02
						--f['Left Leg'].Pant.Transparency = 0.02
						--f['Left Le" ..
"g'].Pant.TextureID = pants.PantsTemplate
						--f['Right Leg'].Pant.Transparency = 0.02
						--f['Right Leg'].Pant.Tex" ..
"tureID = pants.PantsTemplate
					else
						--f.Torso.Pants.Transparency = 1
						--f['Left Leg'].Pant.Transparency = " ..
"1
						--f['Right Leg'].Pant.Transparency = 1
					end
					--f['Left Leg'].Mesh.Color = col.LeftLegColor3
					--f['Ri" ..
"ght Leg'].Mesh.Color = col.LeftLegColor3
					--f['Left Leg'].Pant.Color = col.RightLegColor3
					--f['Right Leg'].Pant" ..
".Color = col.RightLegColor3

					for i,v in f:GetDescendants() do 
						if v.Name == \\\\\"s\\\\\" and v:IsA(\\\\\"Bas" ..
"ePart\\\\\") then
							v.Color = f.Torso.Color
						end
						if v.Name == \\\\\"HAT_\\\\\" then
							v:Destroy()
	" ..
"					end
					end
					for i,v in model:GetChildren() do 