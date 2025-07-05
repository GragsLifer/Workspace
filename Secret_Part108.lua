p:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingD" ..
"own:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Human" ..
"oid.Swimming:connect(onSwimming)

-- setup emote chat hook
game:GetService(\\\\\"Players\\\\\").LocalPlayer.Chatted:conn" ..
"ect(function(msg)
	local emote = \\\\\"\\\\\"
	if msg == \\\\\"/e dance\\\\\" then
		emote = dances[math.random(1, #danc" ..
"es)]
	elseif (string.sub(msg, 1, 3) == \\\\\"/e \\\\\") then
		emote = string.sub(msg, 4)
	elseif (string.sub(msg, 1, 7)" ..
" == \\\\\"/emote \\\\\") then
		emote = string.sub(msg, 8)
	end
	
	if (pose == \\\\\"Standing\\\\\" and emoteNames[emote" ..
"] ~= nil) then
		playAnimation(emote, 0.1, Humanoid)
	end

end)


-- main program

-- initialize to idle
playAnimation(\" ..
"\\\\"idle\\\\\", 0.1, Humanoid)
pose = \\\\\"Standing\\\\\"

while Figure.Parent ~= nil do
	local _, time = wait(0.1)
	m" ..
"ove(time)
end


\"
    obj598966.Parent = obj679097
        local obj691226 = Instance.new(\"StringValue\")
        obj6" ..
"91226.Name = \"idle\"
        obj691226.Parent = obj598966
            local obj547891 = Instance.new(\"Animation\")
   " ..
"         obj547891.Name = \"Animation1\"
            obj547891.Parent = obj691226
                local obj134620 = Inst" ..
"ance.new(\"NumberValue\")
                obj134620.Name = \"Weight\"
                obj134620.Parent = obj547891
     " ..
"       local obj416450 = Instance.new(\"Animation\")
            obj416450.Name = \"Animation2\"
            obj416450.P" ..
"arent = obj691226
                local obj571260 = Instance.new(\"NumberValue\")
                obj571260.Name = \"Wei" ..
"ght\"
                obj571260.Parent = obj416450
        local obj446011 = Instance.new(\"StringValue\")
        obj44" ..
"6011.Name = \"walk\"
        obj446011.Parent = obj598966
            local obj888993 = Instance.new(\"Animation\")
    " ..
"        obj888993.Name = \"WalkAnim\"
            obj888993.Parent = obj446011
        local obj155912 = Instance.new(\"" ..
"StringValue\")
        obj155912.Name = \"run\"
        obj155912.Parent = obj598966
            local obj293522 = Insta" ..
"nce.new(\"Animation\")
            obj293522.Name = \"RunAnim\"
            obj293522.Parent = obj155912
        local o" ..
"bj956911 = Instance.new(\"StringValue\")
        obj956911.Name = \"jump\"
        obj956911.Parent = obj598966
        " ..
"    local obj140403 = Instance.new(\"Animation\")
            obj140403.Name = \"JumpAnim\"
            obj140403.Parent" ..
" = obj956911
        local obj370089 = Instance.new(\"StringValue\")
        obj370089.Name = \"climb\"
        obj37008" ..
"9.Parent = obj598966
            local obj698771 = Instance.new(\"Animation\")
            obj698771.Name = \"ClimbAnim\" ..
""
            obj698771.Parent = obj370089
        local obj417665 = Instance.new(\"StringValue\")
        obj417665.Nam" ..
"e = \"toolnone\"
        obj417665.Parent = obj598966
            local obj331957 = Instance.new(\"Animation\")
        " ..
"    obj331957.Name = \"ToolNoneAnim\"
            obj331957.Parent = obj417665
        local obj316968 = Instance.new(\"" ..
"StringValue\")
        obj316968.Name = \"fall\"
        obj316968.Parent = obj598966
            local obj779253 = Inst" ..
"ance.new(\"Animation\")
            obj779253.Name = \"FallAnim\"
            obj779253.Parent = obj316968
        local" ..
" obj717713 = Instance.new(\"StringValue\")
        obj717713.Name = \"sit\"
        obj717713.Parent = obj598966
       " ..
"     local obj596492 = Instance.new(\"Animation\")
            obj596492.Name = \"SitAnim\"
            obj596492.Parent" ..
" = obj717713
        local obj324853 = Instance.new(\"NumberValue\")
        obj324853.Name = \"ScaleDampeningPercent\"
" ..
"        obj324853.Parent = obj598966
    local obj836750 = Instance.new(\"Script\")
    obj836750.Name = \"LoadCharacter" ..
"\"
    obj836750.Source = \"local model = script.Parent
local plr = game.Players:GetPlayerFromCharacter(script.Parent)
l" ..
"ocal humanoid = model:WaitForChild(\\\\\"Humanoid\\\\\")
local description = game:GetService(\\\\\"Players\\\\\"):GetHum" ..
"anoidDescriptionFromUserId(plr.UserId)
humanoid:ApplyDescription(description)
wait(1)
script:Destroy()
    obj836750.P" ..
"arent = obj679097
local obj295215 = Instance.new(\"Model\")
obj295215.Name = \"StarterCharacter\"
obj295215.Parent = gam" ..
"e.StarterPlayer
    local obj275422 = Instance.new(\"Part\")
    obj275422.Name = \"Head\"
    obj275422.Size = Vector3." ..
"new(1, 1, 1)
    obj275422.Position = Vector3.new(18.16925811767578, 0.6202583312988281, -21.391109466552734)
    obj275" ..
"422.Anchored = false
    obj275422.BrickColor = BrickColor.new(\"Light orange\")
    obj275422.Parent = obj295215
      " ..
"  local obj933123 = Instance.new(\"SpecialMesh\")
        obj933123.Name = \"Mesh\"
        obj933123.Parent = obj275422" ..
"
        local obj332457 = Instance.new(\"Attachment\")
        obj332457.Name = \"HairAttachment\"
        obj332457.Pa" ..
"rent = obj275422
        local obj927095 = Instance.new(\"Attachment\")
        obj927095.Name = \"HatAttachment\"
     " ..
"   obj927095.Parent = obj275422
        local obj334133 = Instance.new(\"Attachment\")
        obj334133.Name = \"FaceFr" ..
"ontAttachment\"
        obj334133.Parent = obj275422
        local obj629001 = Instance.new(\"Attachment\")
        obj6" ..
"29001.Name = \"FaceCenterAttachment\"
        obj629001.Parent = obj275422
        local obj467995 = Instance.new(\"Deca" ..
"l\")
        obj467995.Name = \"face\"
        obj467995.Parent = obj275422
    local obj679311 = Instance.new(\"Part\")" ..
"
    obj679311.Name = \"Torso\"
    obj679311.Size = Vector3.new(2, 2, 1)
    obj679311.Position = Vector3.new(18.169258" ..
"11767578, -0.8797416687011719, -21.391109466552734)
    obj679311.Anchored = false
    obj679311.BrickColor = BrickColor" ..
".new(\"Light orange\")
    obj679311.Parent = obj295215
        local obj572698 = Instance.new(\"Attachment\")
        o" ..
"bj572698.Name = \"NeckAttachment\"
        obj572698.Parent = obj679311
        local obj563897 = Instance.new(\"Attachm" ..
"ent\")
        obj563897.Name = \"BodyFrontAttachment\"
        obj563897.Parent = obj679311
        local obj746626 = I" ..
"nstance.new(\"Attachment\")
        obj746626.Name = \"BodyBackAttachment\"
        obj746626.Parent = obj679311
       " ..
" local obj643034 = Instance.new(\"Attachment\")
        obj643034.Name = \"LeftCollarAttachment\"
        obj643034.Pare" ..
"nt = obj679311
        local obj131278 = Instance.new(\"Attachment\")
        obj131278.Name = \"RightCollarAttachment\"" ..
"
        obj131278.Parent = obj679311
        local obj358812 = Instance.new(\"Attachment\")
        obj358812.Name = \"" ..
"WaistFrontAttachment\"
        obj358812.Parent = obj679311
        local obj171303 = Instance.new(\"Attachment\")
     " ..
"   obj171303.Name = \"WaistCenterAttachment\"
        obj171303.Parent = obj679311
        local obj469366 = Instance.ne" ..
"w(\"Attachment\")
        obj469366.Name = \"WaistBackAttachment\"
        obj469366.Parent = obj679311
        local ob" ..
"j984779 = Instance.new(\"Motor6D\")
        obj984779.Name = \"Right Shoulder\"
        obj984779.Parent = obj679311
   " ..
"     local obj240973 = Instance.new(\"Motor6D\")
        obj240973.Name = \"Left Shoulder\"
        obj240973.Parent = o" ..
"bj679311
        local obj604369 = Instance.new(\"Motor6D\")
        obj604369.Name = \"Right Hip\"
        obj604369.Pa" ..
"rent = obj679311
        local obj112550 = Instance.new(\"Motor6D\")
        obj112550.Name = \"Left Hip\"
        obj11" ..
"2550.Parent = obj679311
        local obj305783 = Instance.new(\"Motor6D\")
        obj305783.Name = \"Neck\"
        ob" ..
"j305783.Parent = obj679311
        local obj144342 = Instance.new(\"Weld\")
        obj144342.Name = \"Weld\"
        ob" ..
"j144342.Parent = obj679311
        local obj757054 = Instance.new(\"Weld\")
        obj757054.Name = \"Weld\"
        ob" ..
"j757054.Parent = obj679311
        local obj298084 = Instance.new(\"Weld\")
        obj298084.Name = \"Weld\"
        ob" ..
"j298084.Parent = obj679311
    local obj646765 = Instance.new(\"Part\")
    obj646765.Name = \"Left Arm\"
    obj646765." ..
"Size = Vector3.new(1, 2, 1)
    obj646765.Position = Vector3.new(16.66925811767578, -0.8797416687011719, -21.39110946655" ..
"2734)
    obj646765.Anchored = false
    obj646765.BrickColor = BrickColor.new(\"Light orange\")
    obj646765.Parent = " ..
"obj295215
        local obj771610 = Instance.new(\"Attachment\")
        obj771610.Name = \"LeftShoulderAttachment\"
   " ..
"     obj771610.Parent = obj646765
        local obj382305 = Instance.new(\"Attachment\")
        obj382305.Name = \"Left" ..
"GripAttachment\"
        obj382305.Parent = obj646765
    local obj323311 = Instance.new(\"Part