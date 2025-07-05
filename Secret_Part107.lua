ime = 0.3" ..
"
local jumpMaxLimbVelocity = 0.75

-- functions

function stopAllAnimations()
	local oldAnim = currentAnim

	-- return t" ..
"o idle if finishing an emote
	if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
		oldAnim = \\\\\"id" ..
"le\\\\\"
	end

	currentAnim = \\\\\"\\\\\"
	currentAnimInstance = nil
	if (currentAnimKeyframeHandler ~= nil) then
		cur" ..
"rentAnimKeyframeHandler:disconnect()
	end

	if (currentAnimTrack ~= nil) then
		currentAnimTrack:Stop()
		currentAnimTra" ..
"ck:Destroy()
		currentAnimTrack = nil
	end
	return oldAnim
end

function setAnimationSpeed(speed)
	if speed ~= currentAn" ..
"imSpeed then
		currentAnimSpeed = speed
		currentAnimTrack:AdjustSpeed(currentAnimSpeed)
	end
end

function keyFrameReac" ..
"hedFunc(frameName)
	if (frameName == \\\\\"End\\\\\") then

		local repeatAnim = currentAnim
		-- return to idle if fini" ..
"shing an emote
		if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
			repeatAnim = \\\\\"idle\" ..
"\\\\"
		end
		
		local animSpeed = currentAnimSpeed
		playAnimation(repeatAnim, 0.0, Humanoid)
		setAnimationSpeed(animS" ..
"peed)
	end
end

-- Preload animations
function playAnimation(animName, transitionTime, humanoid) 
		
	local roll = math." ..
"random(1, animTable[animName].totalWeight) 
	local origRoll = roll
	local idx = 1
	while (roll > animTable[animName][idx" ..
"].weight) do
		roll = roll - animTable[animName][idx].weight
		idx = idx + 1
	end
--		print(animName .. \\\\\" \\\\\" .." ..
" idx .. \\\\\" [\\\\\" .. origRoll .. \\\\\"]\\\\\")
	local anim = animTable[animName][idx].anim

	-- switch animation		" ..
"
	if (anim ~= currentAnimInstance) then
		
		if (currentAnimTrack ~= nil) then
			currentAnimTrack:Stop(transitionTime)
" ..
"			currentAnimTrack:Destroy()
		end

		currentAnimSpeed = 1.0
	
		-- load it to the humanoid; get AnimationTrack
		curre" ..
"ntAnimTrack = humanoid:LoadAnimation(anim)
		currentAnimTrack.Priority = Enum.AnimationPriority.Core
		 
		-- play the a" ..
"nimation
		currentAnimTrack:Play(transitionTime)
		currentAnim = animName
		currentAnimInstance = anim

		-- set up keyf" ..
"rame name triggers
		if (currentAnimKeyframeHandler ~= nil) then
			currentAnimKeyframeHandler:disconnect()
		end
		curr" ..
"entAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
		
	end

end

-------------------" ..
"------------------------------------------------------------------------
-----------------------------------------------" ..
"--------------------------------------------

local toolAnimName = \\\\\"\\\\\"
local toolAnimTrack = nil
local toolAnim" ..
"Instance = nil
local currentToolAnimKeyframeHandler = nil

function toolKeyFrameReachedFunc(frameName)
	if (frameName ==" ..
" \\\\\"End\\\\\") then
--		print(\\\\\"Keyframe : \\\\\".. frameName)	
		playToolAnimation(toolAnimName, 0.0, Humanoid)
" ..
"	end
end


function playToolAnimation(animName, transitionTime, humanoid, priority)	 
		
		local roll = math.random(1, a" ..
"nimTable[animName].totalWeight) 
		local origRoll = roll
		local idx = 1
		while (roll > animTable[animName][idx].weight" ..
") do
			roll = roll - animTable[animName][idx].weight
			idx = idx + 1
		end
--		print(animName .. \\\\\" * \\\\\" .. id" ..
"x .. \\\\\" [\\\\\" .. origRoll .. \\\\\"]\\\\\")
		local anim = animTable[animName][idx].anim

		if (toolAnimInstance ~" ..
"= anim) then
			
			if (toolAnimTrack ~= nil) then
				toolAnimTrack:Stop()
				toolAnimTrack:Destroy()
				transitionTi" ..
"me = 0
			end
					
			-- load it to the humanoid; get AnimationTrack
			toolAnimTrack = humanoid:LoadAnimation(anim)
		" ..
"	if priority then
				toolAnimTrack.Priority = priority
			end
			 
			-- play the animation
			toolAnimTrack:Play(trans" ..
"itionTime)
			toolAnimName = animName
			toolAnimInstance = anim

			currentToolAnimKeyframeHandler = toolAnimTrack.Keyf" ..
"rameReached:connect(toolKeyFrameReachedFunc)
		end
end

function stopToolAnimations()
	local oldAnim = toolAnimName

	if" ..
" (currentToolAnimKeyframeHandler ~= nil) then
		currentToolAnimKeyframeHandler:disconnect()
	end

	toolAnimName = \\\\\"" ..
"\\\\\"
	toolAnimInstance = nil
	if (toolAnimTrack ~= nil) then
		toolAnimTrack:Stop()
		toolAnimTrack:Destroy()
		toolAn" ..
"imTrack = nil
	end


	return oldAnim
end

------------------------------------------------------------------------------" ..
"-------------
-------------------------------------------------------------------------------------------


function onR" ..
"unning(speed)
	if speed > 0.01 then
		playAnimation(\\\\\"walk\\\\\", 0.1, Humanoid)
		if currentAnimInstance and curren" ..
"tAnimInstance.AnimationId == \\\\\"http://www.roblox.com/asset/?id=180426354\\\\\" then
			setAnimationSpeed(speed / 14." ..
"5)
		end
		pose = \\\\\"Running\\\\\"
	else
		if emoteNames[currentAnim] == nil then
			playAnimation(\\\\\"idle\\\\\", " ..
"0.1, Humanoid)
			pose = \\\\\"Standing\\\\\"
		end
	end
end

function onDied()
	pose = \\\\\"Dead\\\\\"
end

function o" ..
"nJumping()
	playAnimation(\\\\\"jump\\\\\", 0.1, Humanoid)
	jumpAnimTime = jumpAnimDuration
	pose = \\\\\"Jumping\\\\\"
" ..
"end

function onClimbing(speed)
	playAnimation(\\\\\"climb\\\\\", 0.1, Humanoid)
	setAnimationSpeed(speed / 12.0)
	pose " ..
"= \\\\\"Climbing\\\\\"
end

function onGettingUp()
	pose = \\\\\"GettingUp\\\\\"
end

function onFreeFall()
	if (jumpAni" ..
"mTime <= 0) then
		playAnimation(\\\\\"fall\\\\\", fallTransitionTime, Humanoid)
	end
	pose = \\\\\"FreeFall\\\\\"
end

" ..
"function onFallingDown()
	pose = \\\\\"FallingDown\\\\\"
end

function onSeated()
	pose = \\\\\"Seated\\\\\"
end

functi" ..
"on onPlatformStanding()
	pose = \\\\\"PlatformStanding\\\\\"
end

function onSwimming(speed)
	if speed > 0 then
		pose =" ..
" \\\\\"Running\\\\\"
	else
		pose = \\\\\"Standing\\\\\"
	end
end

function getTool()	
	for _, kid in ipairs(Figure:GetC" ..
"hildren()) do
		if kid.className == \\\\\"Tool\\\\\" then return kid end
	end
	return nil
end

function getToolAnim(tool" ..
")
	for _, c in ipairs(tool:GetChildren()) do
		if c.Name == \\\\\"toolanim\\\\\" and c.className == \\\\\"StringValue\\\" ..
"\\" then
			return c
		end
	end
	return nil
end

function animateTool()
	
	if (toolAnim == \\\\\"None\\\\\") then
		play" ..
"ToolAnimation(\\\\\"toolnone\\\\\", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
		return
	end

	if (toolA" ..
"nim == \\\\\"Slash\\\\\") then
		playToolAnimation(\\\\\"toolslash\\\\\", 0, Humanoid, Enum.AnimationPriority.Action)
		" ..
"return
	end

	if (toolAnim == \\\\\"Lunge\\\\\") then
		playToolAnimation(\\\\\"toollunge\\\\\", 0, Humanoid, Enum.Anima" ..
"tionPriority.Action)
		return
	end
end

function moveSit()
	RightShoulder.MaxVelocity = 0.15
	LeftShoulder.MaxVelocity =" ..
" 0.15
	RightShoulder:SetDesiredAngle(3.14 /2)
	LeftShoulder:SetDesiredAngle(-3.14 /2)
	RightHip:SetDesiredAngle(3.14 /2)" ..
"
	LeftHip:SetDesiredAngle(-3.14 /2)
end

local lastTick = 0

function move(time)
	local amplitude = 1
	local frequency =" ..
" 1
  	local deltaTime = time - lastTick
  	lastTick = time

	local climbFudge = 0
	local setAngles = false

  	if (jumpA" ..
"nimTime > 0) then
  		jumpAnimTime = jumpAnimTime - deltaTime
  	end

	if (pose == \\\\\"FreeFall\\\\\" and jumpAnimTime" ..
" <= 0) then
		playAnimation(\\\\\"fall\\\\\", fallTransitionTime, Humanoid)
	elseif (pose == \\\\\"Seated\\\\\") then
		" ..
"playAnimation(\\\\\"sit\\\\\", 0.5, Humanoid)
		return
	elseif (pose == \\\\\"Running\\\\\") then
		playAnimation(\\\\\"" ..
"walk\\\\\", 0.1, Humanoid)
	elseif (pose == \\\\\"Dead\\\\\" or pose == \\\\\"GettingUp\\\\\" or pose == \\\\\"FallingDo" ..
"wn\\\\\" or pose == \\\\\"Seated\\\\\" or pose == \\\\\"PlatformStanding\\\\\") then
--		print(\\\\\"Wha \\\\\" .. pose)" ..
"
		stopAllAnimations()
		amplitude = 0.1
		frequency = 1
		setAngles = true
	end

	if (setAngles) then
		local desiredAn" ..
"gle = amplitude * math.sin(time * frequency)

		RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
		LeftShoulder:" ..
"SetDesiredAngle(desiredAngle - climbFudge)
		RightHip:SetDesiredAngle(-desiredAngle)
		LeftHip:SetDesiredAngle(-desiredA" ..
"ngle)
	end

	-- Tool Animation handling
	local tool = getTool()
	if tool and tool:FindFirstChild(\\\\\"Handle\\\\\") the" ..
"n
	
		local animStringValueObject = getToolAnim(tool)

		if animStringValueObject then
			toolAnim = animStringValueObje" ..
"ct.Value
			-- message recieved, delete StringValue
			animStringValueObject.Parent = nil
			toolAnimTime = time + .3
		" ..
"end

		if time > toolAnimTime then
			toolAnimTime = 0
			toolAnim = \\\\\"None\\\\\"
		end

		animateTool()		
	else
		s" ..
"topToolAnimations()
		toolAnim = \\\\\"None\\\\\"
		toolAnimInstance = nil
		toolAnimTime = 0
	end
end

-- connect event" ..
"s
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbin" ..
"g:connect(onClimbing)
Humanoid.GettingU