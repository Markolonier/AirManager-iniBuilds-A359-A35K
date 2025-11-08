--=============================================================================================
--=======================	image imports	===================================================
--=============================================================================================
local lightingOff	=	img_add("Lighting_off.png", 0, 115, 295, 310)
local lightingOn	=	img_add("Lighting_on.png", 0, 131, 295, 310)
local switchOff		=	img_add_fullscreen("off.png")
local switchOn		=	img_add_fullscreen("on.png")
local fire_off		=	img_add("FIRE_off.png", 100, 337, 54, 35)
local fault_off		=	img_add("FAULT_off.png", 85, 412, 81, 34)
local fire_on		=	img_add("FIRE_on.png", 99, 172, 59, 34)
local fault_on		=	img_add("FAULT_on.png", 86, 245, 82, 37)

--=============================================================================================
--=======================	LVARs	===================================================
--=============================================================================================
local eng_master 	=	{"L:INI_MIXTURE_RATIO2_HANDLE", "bool"}
local integ_light	=	{"L:INI_CKPT_LT_INTEG", "enum"}
local light_powered	=	{"L:INI_EFB2_POWERED", "bool"}
local eng2_fire		=	{"L:INI_ENG_2_FIRE", "bool"}
local eng2_fault	=	{"L:INI_ENG_2_FAULT", "bool"}

local fire_test		=	{"L:INI_FIRE_TEST", "bool"}
local light_test	=	{"L:INI_ANNLT_SWITCH", "enum"}

--=============================================================================================
--=======================	VARIABLES	===================================================
--=============================================================================================
local engine_status = false


--=============================================================================================
--=========================		fire and fault logic	=======================================
--=============================================================================================
function setEngineEmergencies(EngFire, EngFault, FireTest, LightTest)
	if (EngFire or FireTest or (LightTest == 0)) and engine_status then
		opacity(fire_on, 100)
	else
		opacity(fire_on, 0)
	end
	
	if (EngFault or (LightTest == 0)) and engine_status then
		opacity(fault_on, 100)
	else
		opacity(fault_on, 0)
	end
	
	
	
	if (EngFire or FireTest or (LightTest == 0)) and not engine_status then
		opacity(fire_off, 100)
	else
		opacity(fire_off, 0)
	end
	
	if (EngFault  or (LightTest == 0)) and not engine_status then
		opacity(fault_off, 100)
	else
		opacity(fault_off, 0)
	end
end


msfs_variable_subscribe(eng2_fire[1], eng2_fire[2],
						eng2_fault[1], eng2_fault[2],
						fire_test[1], fire_test[2],
						light_test[1], light_test[2], setEngineEmergencies)

--=============================================================================================
--=========================		switch logic	===================================================
--=============================================================================================

--	activate image for correct position
function changeSwitch (status)
	if status then
		opacity(switchOn, 100)
		opacity(switchOff, 0)
		switch_set_position (MasterPosition, 1) 
	else
		opacity(switchOff, 100)
		opacity(switchOn, 0)
		switch_set_position (MasterPosition, 0)
	end
	engine_status = status
	request_callback(setEngineEmergencies)
end

--write LVAR
function writeMasterPos(status)
	msfs_variable_write(eng_master[1], eng_master[2], status)
end

function changePosition(position, direction)
	if position == 0 then
		switch_set_position(MasterPosition, 1)
		writeMasterPos(true)
		changeSwitch(true)
	else
		switch_set_position(MasterPosition, 0)
		writeMasterPos(false)
		changeSwitch(false)
	end
end

--touch implementation
MasterPosition = switch_add(nil, nil, 53, 149, 161, 321, changePosition)
switch_set_position (MasterPosition, 0)

changeSwitch(true)
msfs_variable_subscribe(eng_master[1], eng_master[2], changeSwitch)


--=============================================================================================
--========================	Lighting logic	===================================================
--=============================================================================================

function setLighting(percentage, light_powered)
	if light_powered then
		opacity(lightingOn, (percentage/100)*1.1)
	else
		opacity(lightingOn, 0)
	end
end

setLighting(0)
msfs_variable_subscribe(integ_light[1], integ_light[2],
						light_powered[1], light_powered[2], setLighting)