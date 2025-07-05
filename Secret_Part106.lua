
						if v:IsA(\\\\\"Accessory\\\\\") then
							v.Parent = w" ..
"orkspace
							hw.Humanoid:AddAccessory(v)
						end
					end
					for i,v in hw:GetDescendants() do --m:GetDescendants" ..
"() do 
						if (v.Name == \\\\\"HeadWeld\\\\\" or v.Name == \\\\\"AccessoryWeld\\\\\") and v.Parent.Parent.Parent ~= pl" ..
"ayer.Character then
							local hat = v.Part0.Parent
							local handle = v.Part0
							print(\\\\\"add accessory:\\\" ..
"\\",hat.Name)

							local accatt = handle:FindFirstChildOfClass(\\\\\"Attachment\\\\\")
							--if hat.AccessoryType " ..
"== Enum.AccessoryType.Face or hat.AccessoryType == Enum.AccessoryType.Hair or hat.AccessoryType == Enum.AccessoryType.Ha" ..
"t then
							print(\\\\\"adding...\\\\\")
							hat.Parent = workspace
							v.Part1 = f:FindFirstChild(accatt.Name,t" ..
"rue).Parent --f.Head
							v.Parent = v.Part1 --handle
							v.Part0 = handle
							handle.Massless = true
							han" ..
"dle.CanCollide = false
							handle.Parent = f
							handle.Name = \\\\\"HAT_\\\\\"
							hat:Destroy()
							--end
" ..
"						end
					end

					model:Destroy()
					model = nil
				end

				for plr, r in clients do 
					r:FireClient(plr, " ..
"...)
				end
			end)
		end
	end

	for i, v in game:GetService(\\\\\"Players\\\\\"):GetPlayers() do 
		task.defer(replica" ..
"te, v)
	end

	game:GetService(\\\\\"Players\\\\\").PlayerAdded:Connect(replicate)
end

local player_added = function(plr" ..
")
	if plr.Character and plr.Character.Parent then
		task.spawn(char_added, plr.Character)
	end
	plr.CharacterAdded:Conne" ..
"ct(char_added)
end

for i, plr in game.Players:GetPlayers() do
	task.spawn(player_added, plr)
end
game.Players.PlayerAdd" ..
"ed:Connect(player_added)
\"
obj641192.Parent = game.ServerScriptService
local obj419843 = Instance.new(\"StarterPlayerSc" ..
"ripts\")
obj419843.Name = \"StarterPlayerScripts\"
obj419843.Parent = game.StarterPlayer
local obj679097 = Instance.new(" ..
"\"StarterCharacterScripts\")
obj679097.Name = \"StarterCharacterScripts\"
obj679097.Parent = game.StarterPlayer
    loca" ..
"l obj306714 = Instance.new(\"LocalScript\")
    obj306714.Name = \"LocalScript\"
    obj306714.Source = \"local head = s" ..
"cript.Parent:WaitForChild('Head')
local hrp = script.Parent:WaitForChild('HumanoidRootPart')

local humanoid = script.Pa" ..
"rent:WaitForChild('Humanoid')
game:GetService('RunService').RenderStepped:Connect(function()
	humanoid.CameraOffset = (h" ..
"rp.CFrame*CFrame.new(0, 1.5, 0)):ToObjectSpace(head.CFrame).p
end)\"
    obj306714.Parent = obj679097
    local obj59896" ..
"6 = Instance.new(\"LocalScript\")
    obj598966.Name = \"Animate\"
    obj598966.Source = \"local Figure = script.Parent" ..
"
local Torso = Figure:WaitForChild(\\\\\"Torso\\\\\")
local RightShoulder = Torso:WaitForChild(\\\\\"Right Shoulder\\\\\" ..
"")
local LeftShoulder = Torso:WaitForChild(\\\\\"Left Shoulder\\\\\")
local RightHip = Torso:WaitForChild(\\\\\"Right Hi" ..
"p\\\\\")
local LeftHip = Torso:WaitForChild(\\\\\"Left Hip\\\\\")
local Neck = Torso:WaitForChild(\\\\\"Neck\\\\\")
loca" ..
"l Humanoid = Figure:WaitForChild(\\\\\"Humanoid\\\\\")
local pose = \\\\\"Standing\\\\\"

local currentAnim = \\\\\"\\\\" ..
"\"
local currentAnimInstance = nil
local currentAnimTrack = nil
local currentAnimKeyframeHandler = nil
local currentAnim" ..
"Speed = 1.0
local animTable = {}
local animNames = { 
	idle = 	{	
				{ id = \\\\\"http://www.roblox.com/asset/?id=18043" ..
"5571\\\\\", weight = 9 },
				{ id = \\\\\"http://www.roblox.com/asset/?id=180435792\\\\\", weight = 1 }
			},
	walk = 	" ..
"{ 	
				{ id = \\\\\"http://www.roblox.com/asset/?id=180426354\\\\\", weight = 10 } 
			}, 
	run = 	{
				{ id = \\\\\"r" ..
"un.xml\\\\\", weight = 10 } 
			}, 
	jump = 	{
				{ id = \\\\\"http://www.roblox.com/asset/?id=125750702\\\\\", weight " ..
"= 10 } 
			}, 
	fall = 	{
				{ id = \\\\\"http://www.roblox.com/asset/?id=180436148\\\\\", weight = 10 } 
			}, 
	climb" ..
" = {
				{ id = \\\\\"http://www.roblox.com/asset/?id=180436334\\\\\", weight = 10 } 
			}, 
	sit = 	{
				{ id = \\\\\"" ..
"http://www.roblox.com/asset/?id=178130996\\\\\", weight = 10 } 
			},	
	toolnone = {
				{ id = \\\\\"http://www.roblox." ..
"com/asset/?id=182393478\\\\\", weight = 10 } 
			},
	toolslash = {
				{ id = \\\\\"http://www.roblox.com/asset/?id=1299" ..
"67390\\\\\", weight = 10 } 
--				{ id = \\\\\"slash.xml\\\\\", weight = 10 } 
			},
	toollunge = {
				{ id = \\\\\"htt" ..
"p://www.roblox.com/asset/?id=129967478\\\\\", weight = 10 } 
			},
	wave = {
				{ id = \\\\\"http://www.roblox.com/asse" ..
"t/?id=128777973\\\\\", weight = 10 } 
			},
	point = {
				{ id = \\\\\"http://www.roblox.com/asset/?id=128853357\\\\\"," ..
" weight = 10 } 
			},
	dance1 = {
				{ id = \\\\\"http://www.roblox.com/asset/?id=182435998\\\\\", weight = 10 }, 
				" ..
"{ id = \\\\\"http://www.roblox.com/asset/?id=182491037\\\\\", weight = 10 }, 
				{ id = \\\\\"http://www.roblox.com/ass" ..
"et/?id=182491065\\\\\", weight = 10 } 
			},
	dance2 = {
				{ id = \\\\\"http://www.roblox.com/asset/?id=182436842\\\\\" ..
"", weight = 10 }, 
				{ id = \\\\\"http://www.roblox.com/asset/?id=182491248\\\\\", weight = 10 }, 
				{ id = \\\\\"ht" ..
"tp://www.roblox.com/asset/?id=182491277\\\\\", weight = 10 } 
			},
	dance3 = {
				{ id = \\\\\"http://www.roblox.com/a" ..
"sset/?id=182436935\\\\\", weight = 10 }, 
				{ id = \\\\\"http://www.roblox.com/asset/?id=182491368\\\\\", weight = 10 " ..
"}, 
				{ id = \\\\\"http://www.roblox.com/asset/?id=182491423\\\\\", weight = 10 } 
			},
	laugh = {
				{ id = \\\\\"h" ..
"ttp://www.roblox.com/asset/?id=129423131\\\\\", weight = 10 } 
			},
	cheer = {
				{ id = \\\\\"http://www.roblox.com/a" ..
"sset/?id=129423030\\\\\", weight = 10 } 
			},
}
local dances = {\\\\\"dance1\\\\\", \\\\\"dance2\\\\\", \\\\\"dance3\\\" ..
"\\"}

-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
local emoteN" ..
"ames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

functi" ..
"on configureAnimationSet(name, fileList)
	if (animTable[name] ~= nil) then
		for _, connection in pairs(animTable[name]." ..
"connections) do
			connection:disconnect()
		end
	end
	animTable[name] = {}
	animTable[name].count = 0
	animTable[name]." ..
"totalWeight = 0	
	animTable[name].connections = {}

	-- check for config values
	local config = script:FindFirstChild(na" ..
"me)
	if (config ~= nil) then
--		print(\\\\\"Loading anims \\\\\" .. name)
		table.insert(animTable[name].connections, c" ..
"onfig.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
		table.insert(animTable[name].conn" ..
"ections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
		local idx = 1
		for _" ..
", childPart in pairs(config:GetChildren()) do
			if (childPart:IsA(\\\\\"Animation\\\\\")) then
				table.insert(animTab" ..
"le[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
				animT" ..
"able[name][idx] = {}
				animTable[name][idx].anim = childPart
				local weightObject = childPart:FindFirstChild(\\\\\"W" ..
"eight\\\\\")
				if (weightObject == nil) then
					animTable[name][idx].weight = 1
				else
					animTable[name][idx].w" ..
"eight = weightObject.Value
				end
				animTable[name].count = animTable[name].count + 1
				animTable[name].totalWeight" ..
" = animTable[name].totalWeight + animTable[name][idx].weight
	--			print(name .. \\\\\" [\\\\\" .. idx .. \\\\\"] \\\\\"" ..
" .. animTable[name][idx].anim.AnimationId .. \\\\\" (\\\\\" .. animTable[name][idx].weight .. \\\\\")\\\\\")
				idx = i" ..
"dx + 1
			end
		end
	end

	-- fallback to defaults
	if (animTable[name].count <= 0) then
		for idx, anim in pairs(fileLi" ..
"st) do
			animTable[name][idx] = {}
			animTable[name][idx].anim = Instance.new(\\\\\"Animation\\\\\")
			animTable[name" ..
"][idx].anim.Name = name
			animTable[name][idx].anim.AnimationId = anim.id
			animTable[name][idx].weight = anim.weight
" ..
"			animTable[name].count = animTable[name].count + 1
			animTable[name].totalWeight = animTable[name].totalWeight + anim" ..
".weight
--			print(name .. \\\\\" [\\\\\" .. idx .. \\\\\"] \\\\\" .. anim.id .. \\\\\" (\\\\\" .. anim.weight .. \\\\\"" ..
")\\\\\")
		end
	end
end

-- Setup animation objects
function scriptChildModified(child)
	local fileList = animNames[chil" ..
"d.Name]
	if (fileList ~= nil) then
		configureAnimationSet(child.Name, fileList)
	end	
end

script.ChildAdded:connect(sc" ..
"riptChildModified)
script.ChildRemoved:connect(scriptChildModified)


for name, fileList in pairs(animNames) do 
	config" ..
"ureAnimationSet(name, fileList)
end	

-- ANIMATION

-- declarations
local toolAnim = \\\\\"None\\\\\"
local toolAnimTime" ..
" = 0

local jumpAnimTime = 0
local jumpAnimDuration = 0.3

local toolTransitionTime = 0.1
local fallTransitionT