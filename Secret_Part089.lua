Lerp(p2[motor]:Lerp(pose,  0.5 + " ..
"(math.sin(t)/2)), 0.15)
										end
									elseif motor:IsA('Bone') then
										motor.Transform = motor.Transform" ..
":Lerp(p2[motor]:Lerp(pose,  0.5 + (math.sin(t)/2)), 0.15)
									end
								end
							end
						end
					end
					fo" ..
"r i = 1, 50 do 
						task.wait()
						for motor, pose in anim.f[1] do 
							motor = f:FindFirstChild(motor, true)
		" ..
"					if motor then
								local t = sine + anim.f_delay
								if motor.Name == \\\\\"Neck\\\\\"then
									t += ani" ..
"m.f_neck_delay
								elseif motor.Name:find(\\\\\"Hip\\\\\")then
									t += anim.f_hip_delay
								elseif motor.N" ..
"ame:find(\\\\\"Shoulder\\\\\")then
									t += anim.f_shoulder_delay
								elseif motor.Name == \\\\\"bw\\\\\" or mo" ..
"tor.Name == \\\\\"rbw\\\\\" or motor.Name == \\\\\"lbw\\\\\" then
									t += anim.bw_delay
								end
								local " ..
"e = 0.5 + (math.sin(t) / 2) 
								if motor:IsA('Motor6D') then
									motor.C0 = motor.C0:Lerp(pose:Lerp(anim.f[2][" ..
"motor.Name], e), i/50)
								elseif motor:IsA('Bone') then
									motor.Transform = motor.Transform:Lerp(pose:Lerp(a" ..
"nim.f[2][motor.Name], e), i/50)
								end
							end
						end
						for motor, pose in anim.m[1] do 
							motor = m" ..
":FindFirstChild(motor, true)
							if motor then
								local t = sine + anim.m_delay
								if motor.Name == \\\\\"N" ..
"eck\\\\\"then
									t += anim.m_neck_delay
								elseif motor.Name:find(\\\\\"Hip\\\\\")then
									t += anim.m_h" ..
"ip_delay
								elseif motor.Name:find(\\\\\"Shoulder\\\\\")then
									t += anim.m_shoulder_delay
								end
						" ..
"		local e = 0.5 + (math.sin(t) / 2) 
								if motor:IsA('Motor6D') then
									if motor.Name == 'fw' then
										" ..
"motor.Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)
									else
										motor.C0 = mot" ..
"or.C0:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)
									end
								elseif motor:IsA('Bone') then
									motor." ..
"Transform = motor.Transform:Lerp(pose:Lerp(anim.m[2][motor.Name], e), i/50)
								end
							end
						end

					end
	" ..
"				ismn = false
					f.face.mouth4.Transparency = 1
					f.face.mouth5.Transparency = 1
					f.face.eyes2.Transparency " ..
"= 1
					f.face.eyes.Transparency = 0
					isdn = false
					local l, l2 = over25 and 1 or 0, over25 and 0 or 1
					m1 " ..
"= l
					m2 = 1 
					m3 = l2
					ack = 0
					local sm = speedMult
					speedMult = 0
					task.defer(function()
					" ..
"	for i = 1, 350 do 
							task.wait()
							speedMult = lerp(0, sm, i/350)
						end
					end)
					rel = false
				en" ..
"d
			end
		end
	end		
	updating = false
end)
--end\"
obj879504.Parent = game.ServerStorage
    local obj437534 = Instanc" ..
"e.new(\"ModuleScript\")
    obj437534.Name = \"animations\"
    obj437534.Source = \"return {
	cg = {
		m_neck_delay = 1" ..
",
		m_hip_delay = 0,
		m_shoulder_delay = 1,
		f_neck_delay = -1.5,
		f_hip_delay = 0.5,
		f_shoulder_delay = 0,
		m_del" ..
"ay = 0,
		f_delay = 0.5,
		default = 10,
		sfx = 5.8,
		fortnite = CFrame.Angles(math.rad(-28), 0, 0),
		offset = CFrame" ..
".new(0, 0.1, -0.4) * CFrame.Angles(math.rad(12), 0, 0),
		shield_offset = CFrame.new(0,0,0),
		rshield_offset = CFrame.n" ..
"ew(0.5,0.5,-0.5),
		lshield_offset = CFrame.new(-0.5,0.5,-0.5),
		bw_delay = -1,
		f_when_done = true,
		c_offset = CFra" ..
"me.new(0, -1.4, -2) * CFrame.Angles(math.rad(-7), math.pi, 0),
		transparent = false,
		t_transparent = false,
		cumshot" ..
" = true,
		f_done = {
			--[\\\\\"RootJoint\\\\\"] = CFrame.new(0, -0.67, -0.88) * CFrame.Angles(math.rad(-75.54), math." ..
"rad(-0.01), math.rad(179.98)) - Vector3.new(0, 0.2, 0) - Vector3.new(0, 0.1, 0);
			[\\\\\"Neck\\\\\"] = CFrame.new(0, 1" ..
", 0) * CFrame.Angles(math.rad(-77.89), math.rad(0), math.rad(179.98));
			[\\\\\"Left Hip\\\\\"] = CFrame.new(--0.03]=" ..
"=] -0.36, -1.02---1.07]==], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-71.69)" ..
") * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, math.rad(80)) + Vector3.new(0, 0.6, -0.25);
			--[\\\\\"Left Hip\\\\\"] = " ..
"CFrame.new(--0.03]==] -.36 + .5, -1.07, -0.35) * CFrame.Angles(math.rad(169.33), -math.rad(48.17), -math.rad(-71.69));" ..
"
			[\\\\\"Right Shoulder\\\\\"] = CFrame.new(1.05, -0.06, -0.08) * CFrame.Angles(math.rad(-3.52), math.rad(58.79), math" ..
".rad(-21.6));
			--[\\\\\"Right Hip\\\\\"] = CFrame.new(0.36 - .5, -1.02, -0.54) * CFrame.Angles(math.rad(169.81), -math" ..
".rad(-38.46), -math.rad(78.93));
			[\\\\\"Right Hip\\\\\"] = CFrame.new(0.36, -1.02, -0.35 ---0.54]==]) * CFrame.from" ..
"Orientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(78.93)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -mat" ..
"h.rad(80)) + Vector3.new(0, 0.6, -0.25);
			[\\\\\"Left Shoulder\\\\\"] = CFrame.new(-0.78, 0, -0.09) * CFrame.Angles(ma" ..
"th.rad(-6.56), math.rad(-58.69), math.rad(7.45));
		},
		m = {
			{
				[\\\\\"RootJoint\\\\\"] = CFrame.new(0.03, -2.6," ..
" -2.99) * CFrame.Angles(math.rad(178.09), math.rad(0.64), math.rad(-0.01));
				[\\\\\"Neck\\\\\"] = CFrame.new(0, 1, 0)" ..
" * CFrame.Angles(math.rad(-108.63), math.rad(3.86), math.rad(-178.72));
				[\\\\\"Left Hip\\\\\"] = CFrame.new(-1, -1, " ..
"0) * CFrame.Angles(math.rad(-69.21), math.rad(-66.46), math.rad(-69.23));
				[\\\\\"Right Shoulder\\\\\"] = CFrame.new(" ..
"0.88, 0.63, 0.04) * CFrame.Angles(math.rad(-113.35), math.rad(73.89), math.rad(129.69));
				[\\\\\"Right Hip\\\\\"] = C" ..
"Frame.new(1, -1, 0) * CFrame.Angles(math.rad(-68.17), math.rad(62.78), math.rad(67.58));
				[\\\\\"Left Shoulder\\\\\"]" ..
" = CFrame.new(-0.99, 0.5, 0.04) * CFrame.Angles(math.rad(-37.48), math.rad(-76.8), math.rad(-54.51));
			};
			{
				[\\" ..
"\\\"RootJoint\\\\\"] = CFrame.new(0.03, -2.6, -2.99) * CFrame.Angles(math.rad(-178.94), math.rad(0.64), math.rad(-0.04))" ..
";
				[\\\\\"Neck\\\\\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-103.63), math.rad(3.96), math.rad(-179.07));
		" ..
"		[\\\\\"Left Hip\\\\\"] = CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-69.21), math.rad(-66.46), math.rad(-72.29));
" ..
"				[\\\\\"Right Shoulder\\\\\"] = CFrame.new(0.88, 0.63, 0.04) * CFrame.Angles(math.rad(-113.35), math.rad(73.89), math" ..
".rad(130.74));
				[\\\\\"Right Hip\\\\\"] = CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-68.17), math.rad(62.78), mat" ..
"h.rad(70.65));
				[\\\\\"Left Shoulder\\\\\"] = CFrame.new(-0.99, 0.5, 0.04) * CFrame.Angles(math.rad(-37.48), math.rad" ..
"(-76.8), math.rad(-56.51));
			}
		},
		f = {
			{
				--[\\\\\"bw\\\\\"] = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad" ..
"(10), 0, 0),
				[\\\\\"rbw\\\\\"] = CFrame.new(0.5, 0.5, -0.5) * CFrame.Angles(math.rad(10), 0, 0),
				[\\\\\"lbw\\\\\" ..
""] = CFrame.new(-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(10), 0, 0),
				[\\\\\"RootJoint\\\\\"] = CFrame.new(0, -0.67," ..
" -0.88) * CFrame.Angles(math.rad(-80.23), math.rad(0), math.rad(179.98));
				[\\\\\"Neck\\\\\"] = CFrame.new(0, 1, 0) *" ..
" CFrame.Angles(math.rad(-106.38), math.rad(0.01), math.rad(179.98));
				--[\\\\\"Left Hip\\\\\"] = CFrame.new(--0.03]" ..
"==] -0.36, -1.02---1.07]==], -0.35) * CFrame.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-79.88" ..
")) * CFrame.new(0, 0, 1);
				[\\\\\"Left Hip\\\\\"] = CFrame.new(--0.03]==] -0.36, -1.02---1.07]==], -0.35) * CFram" ..
"e.fromOrientation(-math.rad(169.33), math.rad(48.17 + 90), -math.rad(-79.88)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0" ..
", math.rad(80)) + Vector3.new(0, 0.35, -0.25);
				[\\\\\"Right Shoulder\\\\\"] = CFrame.new(1.05, -0.06, -0.08) * CFram" ..
"e.Angles(math.rad(-3.52), math.rad(58.79), math.rad(-13.53)) - Vector3.new(0, 0.23, 0);
				--[\\\\\"Right Hip\\\\\"] = " ..
"CFrame.new(0.36, -1.02, -0.35 ---0.54]==]) * CFrame.fromOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.ra" ..
"d(87.85)) * CFrame.new(0, 0, 1);
				[\\\\\"Right Hip\\\\\"] = CFrame.new(0.36, -1.02, -0.35 ---0.54]==]) * CFrame.fro" ..
"mOrientation(-math.rad(169.81), math.rad(-38.46 - 90), -math.rad(87.85)) * CFrame.new(0, 0, 1) * CFrame.Angles(0, 0, -ma" ..
"th.rad(80)) + Vector3.new(0, 0.35, -0.25);
				[\\\\\"Left Shoulder\\\\\"] = CFrame.new(-0.78, 0, -0.09) * CFrame.Angles" ..
"(math.rad(-6.56), math.rad(-58.69), math.rad(-0.62)) - Vector3.new(0, 0.23, 0);
			};
			{
				--[\\\\\"bw\\\\\"] = CFra" ..
"me.new(0, -0.08, 0) * CFrame.Angles(math.rad(-4), 0, 0),
				[\\\\\"rbw\\\\\"] = CFrame.new(0.5, 0.5, -0.5) * CFrame.Ang" ..
"les(math.rad(-4), 0, 0),
				[\\\\\"lbw\\\\\"] = CFrame.new(-0.5, 0.5, -0.5) * CFrame.Angles(math.rad(-4), 0, 0),
				[\" ..
"\\\\"RootJoint\\\\\"] = CFrame.new(0, -0.91, -0.92) * CFrame.Angles(math.rad(-80.23), math.rad(0), math.rad(179.98)) + V" ..
"ector3.new(0, -0.5, 0);
				[\\\\\"Neck\\\\\"] = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-112.86), math.rad(0.01), " ..
"math.rad(179.98));
				[\\\\\"Left 