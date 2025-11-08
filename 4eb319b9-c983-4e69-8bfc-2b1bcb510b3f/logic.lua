--=============================================================================================
--=======================	image imports	===================================================
--=============================================================================================
local lightingOff				=	img_add_fullscreen("Lighting_off.png")
local lightingOn				=	img_add_fullscreen("Lighting_on.png")
local background				=	img_add_fullscreen("Background.png")
local rotary_knob_lighting_off	=	img_add("Rotatory-knob_lighting_off.png", 97, 280, 140, 177, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local rotary_knob_lighting_on	=	img_add("Rotatory-knob_lighting_on.png", 97, 280, 140, 177, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local rotary_knob_img			=	img_add("Rotatory-knob.png", 97, 280, 140, 177, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")

--=============================================================================================
--=======================	LVARs	===================================================
--=============================================================================================
local ign_knob 		=	{"L:INI_IGNITION_KNOB", "enum"}
local integ_light	=	{"L:INI_CKPT_LT_INTEG", "enum"}
local light_powered	=	{"L:INI_EFB2_POWERED", "bool"}



--=============================================================================================
--=========================		Knob logic	===================================================
--=============================================================================================

--	Rotate knob image to correct position
function setPosition (position)
   if position == 1 then 			--LVAR for NORM
       rotate(rotary_knob_img, 0)
       rotate(rotary_knob_lighting_off, 0)
       rotate(rotary_knob_lighting_on, 0)
   elseif position == 2 then		--LVAR for IGN START
       rotate(rotary_knob_img, 60)
       rotate(rotary_knob_lighting_off, 60)
       rotate(rotary_knob_lighting_on, 60)
   elseif position == 0 then		--LVAR for CRANK
       rotate(rotary_knob_img, -60)
       rotate(rotary_knob_lighting_off, -60)
       rotate(rotary_knob_lighting_on, -60)
   end
   --switch_set_position (IngnitionPosition, position)
end


--write LVAR
function writeEngStart(NewPos)
	msfs_variable_write(ign_knob[1], ign_knob[2], NewPos)
end


--=============================================================================================
--=========================		Touch logic	===================================================
--=============================================================================================
function changeIgnition(position, direction)
	if direction == 1 then	--turning clockwise
		if position == 1 then	--turn from NORM to IGN START
			writeEngStart(2)
			switch_set_position (IngnitionPosition, 2)
			setPosition(2)
		elseif position == 0 then	--turn from CRANK to NORM
			writeEngStart(1)
			switch_set_position (IngnitionPosition, 1)
			setPosition(1)
		end
	else					--turning counterclockwise
		if  position == 2 then	--turn from IGN START to NORM
			writeEngStart(1)
			switch_set_position (IngnitionPosition, 1)
			setPosition(1)
		elseif  position == 1 then	--turn from NORM to CRANK
			writeEngStart(0)
			switch_set_position (IngnitionPosition, 0)
			setPosition(0)
		end
	end
end

setPosition(1)
msfs_variable_subscribe(ign_knob[1], ign_knob[2], setPosition)

--touch implementation
IngnitionPosition = switch_add(nil, nil, nil, 95, 298, 140, 142, changeIgnition)
switch_set_position (IngnitionPosition, 1)



--=============================================================================================
--========================	Lighting logic	===================================================
--=============================================================================================

function setLighting(percentage, light_powered)
	if light_powered then
		opacity(rotary_knob_lighting_on, (percentage/100)*1.1)
		opacity(lightingOn, (percentage/100)*1.1)
	else
		opacity(rotary_knob_lighting_on, 0)
		opacity(lightingOn, 0)
	end
end

setLighting(0)
msfs_variable_subscribe(integ_light[1], integ_light[2],
						light_powered[1], light_powered[2], setLighting)