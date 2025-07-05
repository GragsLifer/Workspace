obj523588.Name = \"bbj\"
    obj523588.Text =" ..
" \"Boob\"
    obj523588.TextSize = 14
    obj523588.Size = UDim2.new(0.03174786642193794, 0, 0.05864843726158142, 0)
   " ..
" obj523588.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj523588.Parent =" ..
" obj665777
        local obj425469 = Instance.new(\"UIAspectRatioConstraint\")
        obj425469.Name = \"UIAspectRatioC" ..
"onstraint\"
        obj425469.Parent = obj523588
    local obj887028 = Instance.new(\"TextButton\")
    obj887028.Name =" ..
" \"tog\"
    obj887028.Text = \"Hide GUI\"
    obj887028.TextSize = 14
    obj887028.Size = UDim2.new(0.0277445502579212" ..
"2, 0, 0.052055004984140396, 0)
    obj887028.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.25098" ..
"0406999588)
    obj887028.Parent = obj665777
        local obj289269 = Instance.new(\"LocalScript\")
        obj289269.N" ..
"ame = \"LocalScript\"
        obj289269.Source = \"script.Parent.MouseButton1Down:Connect(function()
	for i,v in next, s" ..
"cript.Parent.Parent:GetChildren() do 
		if v ~= script.Parent then
			v.Visible = not v.Visible
		end
	end
end)\"
      " ..
"  obj289269.Parent = obj887028
        local obj983611 = Instance.new(\"UIAspectRatioConstraint\")
        obj983611.Nam" ..
"e = \"UIAspectRatioConstraint\"
        obj983611.Parent = obj887028
    local obj320228 = Instance.new(\"TextButton\")
" ..
"    obj320228.Name = \"anl\"
    obj320228.Text = \"Anal\"
    obj320228.TextSize = 14
    obj320228.Size = UDim2.new(0." ..
"03303753584623337, 0, 0.059655312448740005, 0)
    obj320228.BackgroundColor3 = Color3.new(0.250980406999588, 0.25098040" ..
"6999588, 0.250980406999588)
    obj320228.Parent = obj665777
        local obj184516 = Instance.new(\"UIAspectRatioConst" ..
"raint\")
        obj184516.Name = \"UIAspectRatioConstraint\"
        obj184516.Parent = obj320228
    local obj653610 =" ..
" Instance.new(\"TextButton\")
    obj653610.Name = \"dga\"
    obj653610.Text = \"Doggy Anal\"
    obj653610.TextSize = " ..
"14
    obj653610.Size = UDim2.new(0.03599042817950249, 0, 0.058695536106824875, 0)
    obj653610.BackgroundColor3 = Colo" ..
"r3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj653610.Parent = obj665777
        local obj834710" ..
" = Instance.new(\"UIAspectRatioConstraint\")
        obj834710.Name = \"UIAspectRatioConstraint\"
        obj834710.Pare" ..
"nt = obj653610
    local obj810353 = Instance.new(\"TextButton\")
    obj810353.Name = \"del\"
    obj810353.Text = \"De" ..
"l Shirt\"
    obj810353.TextSize = 14
    obj810353.Size = UDim2.new(0.03498165309429169, 0, 0.058648426085710526, 0)
  " ..
"  obj810353.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
    obj810353.Parent " ..
"= obj665777
        local obj388119 = Instance.new(\"UIAspectRatioConstraint\")
        obj388119.Name = \"UIAspectRatio" ..
"Constraint\"
        obj388119.Parent = obj810353
        local obj610491 = Instance.new(\"LocalScript\")
        obj610" ..
"491.Name = \"LocalScript\"
        obj610491.Source = \"script.Parent.MouseButton1Down:Connect(function()
	for _, Object" ..
" in pairs(workspace:GetDescendants()) do -- GetDescendants returns a table with all the objects descendants
		if Object:" ..
"IsA(\\\\\"Shirt\\\\\") then 
			Object:Destroy() -- Change this to whatever you want to delete 
		end
	end
end)
\"
     " ..
"   obj610491.Parent = obj810353
    local obj723011 = Instance.new(\"TextButton\")
    obj723011.Name = \"del2\"
    obj" ..
"723011.Text = \"Del pants\"
    obj723011.TextSize = 14
    obj723011.Size = UDim2.new(0.03498165309429169, 0, 0.0586484" ..
"26085710526, 0)
    obj723011.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980406999588)
   " ..
" obj723011.Parent = obj665777
        local obj547460 = Instance.new(\"UIAspectRatioConstraint\")
        obj547460.Name" ..
" = \"UIAspectRatioConstraint\"
        obj547460.Parent = obj723011
        local obj294535 = Instance.new(\"LocalScript" ..
"\")
        obj294535.Name = \"LocalScript\"
        obj294535.Source = \"script.Parent.MouseButton1Down:Connect(functio" ..
"n()
	for _, Object in pairs(workspace:GetDescendants()) do -- GetDescendants returns a table with all the objects descen" ..
"dants
		if Object:IsA(\\\\\"Pants\\\\\") then 
			Object:Destroy() -- Change this to whatever you want to delete 
		end
" ..
"	end
end)\"
        obj294535.Parent = obj723011
    local obj465387 = Instance.new(\"TextButton\")
    obj465387.Name =" ..
" \"cl\"
    obj465387.Text = \"Clean up\"
    obj465387.TextSize = 14
    obj465387.Size = UDim2.new(0.03498165309429169" ..
", 0, 0.058648426085710526, 0)
    obj465387.BackgroundColor3 = Color3.new(0.250980406999588, 0.250980406999588, 0.250980" ..
"406999588)
    obj465387.Parent = obj665777
        local obj712535 = Instance.new(\"UIAspectRatioConstraint\")
        " ..
"obj712535.Name = \"UIAspectRatioConstraint\"
        obj712535.Parent = obj465387
        local obj901565 = Instance.new" ..
"(\"LocalScript\")
        obj901565.Name = \"LocalScript\"
        obj901565.Source = \"script.Parent.MouseButton1Down:C" ..
"onnect(function()
	for _, Object in pairs(workspace:GetDescendants()) do -- GetDescendants returns a table with all the " ..
"objects descendants
		if Object.Name== \\\\\"d\\\\\" and Object:IsA(\\\\\"BasePart\\\\\") then 
			Object.Transparency =" ..
" 1 -- Change this to whatever you want to delete 
		end
	end
end)
\"
        obj901565.Parent = obj465387
local obj67589" ..
"3 = Instance.new(\"Script\")
obj675893.Name = \"Script\"
obj675893.Source = \"-- Plugin: Full Game Exporter (Split Versi" ..
"on)
-- Auto-splits output into multiple scripts to avoid Source size limit

local toolbar = plugin:CreateToolbar(\\\\\"E" ..
"xporter\\\\\")
local button = toolbar:CreateButton(\\\\\"Export Game (Split)\\\\\", \\\\\"Export full game and split if " ..
"needed\\\\\", \\\\\"\\\\\")

local function quote(str)
	return string.format(\\\\\"%q\\\\\", str)
end

local function es" ..
"capeSource(src)
	return src and (src:gsub(\\\\\"\\\\\\\\\\\\\\\\\\\\\", \\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"):gs" ..
"ub(\\\\\"\\\\\\\\\\\\\"\\\\\", \\\\\"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"\\\\\"):gsub(\\\\\"\\\\\\\\n\\\\\", \\\\\"\\\\\\\\\\\" ..
"\\\\\n\\\\\"):gsub(\\\\\"\\\\\\\\r\\\\\", \\\\\"\\\\\\\\\\\\\\\\r\\\\\")) or \\\\\"\\\\\"
end

local function vector3Str" ..
"(v)
	return string.format(\\\\\"Vector3.new(%s, %s, %s)\\\\\", v.X, v.Y, v.Z)
end

local function color3Str(c)
	return s" ..
"tring.format(\\\\\"Color3.new(%s, %s, %s)\\\\\", c.R, c.G, c.B)
end

local function udim2Str(u)
	return string.format(\\" ..
"\\\"UDim2.new(%s, %s, %s, %s)\\\\\", u.X.Scale, u.X.Offset, u.Y.Scale, u.Y.Offset)
end

local function serializeInstance" ..
"(inst, parentVar, depth)
	depth = depth or 0
	local indent = string.rep(\\\\\"    \\\\\", depth)
	local lines = {}
	loca" ..
"l varName = \\\\\"obj\\\\\" .. tostring(math.random(100000,999999))

	table.insert(lines, indent .. string.format(\\\\\"" ..
"local %s = Instance.new(%s)\\\\\", varName, quote(inst.ClassName)))
	table.insert(lines, indent .. string.format(\\\\\"%" ..
"s.Name = %s\\\\\", varName, quote(inst.Name)))

	if inst:IsA(\\\\\"BasePart\\\\\") then
		table.insert(lines, indent .. " ..
"string.format(\\\\\"%s.Size = %s\\\\\", varName, vector3Str(inst.Size)))
		table.insert(lines, indent .. string.format(\" ..
"\\\\"%s.Position = %s\\\\\", varName, vector3Str(inst.Position)))
		table.insert(lines, indent .. string.format(\\\\\"%s" ..
".Anchored = %s\\\\\", varName, tostring(inst.Anchored)))
		table.insert(lines, indent .. string.format(\\\\\"%s.BrickCol" ..
"or = BrickColor.new(%s)\\\\\", varName, quote(inst.BrickColor.Name)))
	elseif inst:IsA(\\\\\"TextLabel\\\\\") or inst:Is" ..
"A(\\\\\"TextButton\\\\\") or inst:IsA(\\\\\"TextBox\\\\\") then
		table.insert(lines, indent .. string.format(\\\\\"%s.T" ..
"ext = %s\\\\\", varName, quote(inst.Text)))
		table.insert(lines, indent .. string.format(\\\\\"%s.TextSize = %s\\\\\", " ..
"varName, tostring(inst.TextSize)))
	end

	if inst:IsA(\\\\\"GuiObject\\\\\") then
		table.insert(lines, indent .. string" ..
".format(\\\\\"%s.Size = %s\\\\\", varName, udim2Str(inst.Size)))
		if inst.BackgroundColor3 then
			table.insert(lines, " ..
"indent .. string.format(\\\\\"%s.BackgroundColor3 = %s\\\\\", varName, color3Str(inst.BackgroundColor3)))
		end
	end

	i" ..
"f inst:IsA(\\\\\"Script\\\\\") or inst:IsA(\\\\\"LocalScript\\\\\") or inst:IsA(\\\\\"ModuleScript\\\\\") then
		local o" ..
"k, src = pcall(function() return inst.Source end)
		if ok and src and #src > 0 then
			table.insert(lines, indent .. str" ..
"ing.format(\\\\\"%s.Source = %q\\\\\", varName, src))
		end
	end

	table.insert(lines, indent .. string.format(\\\\\"%s." ..
"Parent = %s\\\\\", varName, parentVar))

	for _, child in ipairs(inst:GetChildren()) do
		local childLines = serializeIn" ..
"sta