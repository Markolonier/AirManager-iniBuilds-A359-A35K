userpropRudderTrim = user_prop_add_boolean("Correct Rudder Trim direction", true, "The Rudder trim is actually trimming into the wrong direction e.g. Rudder Trim to NOSE L is acutally trimming NOSE R. Turn this on to correct the Air Manager Instrument")
--=============================================================================================
--=======================	image imports	===================================================
--=============================================================================================
local imglightingOff    		= img_add_fullscreen("Lighting_off.png")
local imglightingOn				= img_add_fullscreen("Lighting_on.png")
local imgbackground             = img_add_fullscreen("Background.png")
local imgAccuGreenPointerLightOff   = img_add("ACCU GREEN POINTER light off.png", 755, 177, 105, 105, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local imgAccuGreenPointerLightOn    = img_add("ACCU GREEN POINTER light on.png", 755, 177, 105, 105, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local imgAccuGreenPointer       = img_add("ACCU GREEN POINTER.png", 755, 177, 105, 105, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local imgAccuYellowPointerLightOff  = img_add("ACCU Yellow POINTER light off.png", 755, 38, 105, 105, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local imgAccuYellowPointerLightOn   = img_add("ACCU Yellow POINTER light on.png", 755, 38, 105, 105, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local imgAccuYellowPointer      = img_add("ACCU Yellow POINTER.png", 755, 38, 105, 105, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local imgAccuReinflatePressed   = img_add("ButtonPressed.png", 482, 94, 60, 60)
local imgLgGrvtyExtnLeftGuard   = img_add("LGGrvtyExtnLeftGuard.png", 200, 456, 94, 108)
local imgLgGrvtyExtnRightGuard  = img_add("LGGrvtyExtnRightGuard.png", 410, 455, 94, 109)
local imgLgGrvtyExtnHandleReset = img_add("LGGrvtyExtnHandleReset.png", 243, 447, 219, 62)
local imgLgGrvtyExtnHandleDown  = img_add("LGGrvtyExtnHandleDown.png", 242, 503, 220, 66)
local imgLgGrvtyExtnHandleOff   = img_add("LGGrvtyExtnHandleOff.png", 242, 492, 221, 38)
local imgLgGrvtyExtnClosed      = img_add("LGGrvtyExtn_closed.png", 130, 359, 438, 309)
local imgLgGrvtyExtnOpen        = img_add("LGGrvtyExtn_open.png", -133, 336, 315, 393)
local imgParkingBrk             = img_add("Parkingbreak.png", 40, 66, 431, 255, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local imgRudderTrim             = img_add("RudderTrim.png", 1087, 296, 177, 208, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.05")
local imgRudderTrimResetpressed = img_add("ButtonPressed.png", 1332, 373, 60, 60)
local imgPitchLeftUp            = img_add("Pitch Left Up.png", 1106, 65, 67, 160)
local imgPitchLeftDown          = img_add("Pitch Left Down.png", 1107, 65, 67, 160)
local imgPitchRightUp           = img_add("Pitch Right Up.png", 1175, 65, 67, 160)
local imgPitchRightDown         = img_add("Pitch Right Down.png", 1175, 64, 67, 161)
local imgFloodLight             = img_add("LightRotator.png", 679, 376, 114, 114, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.1")
local imgIntegLight             = img_add("LightRotator.png", 895, 376, 114, 114, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.1")
local imgDomeLight              = img_add("LightRotator.png", 678, 585, 114, 114, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.1")
local imgDuMasterInhibit        = img_add("DuMasterInhibit.png", 899, 590, 102, 102, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.1")
local imgDuMasterInhibit_L_off  = img_add("DuMasterInhibit_Lighting_off.png", 899, 590, 102, 102, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.1")
local imgDuMasterInhibit_L_on   = img_add("DuMasterInhibit_Lighting_on.png", 899, 590, 102, 102, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.1")
local imgDuBrightness           = img_add("DuBrightness.png", 914, 603, 72, 73, "rotate_animation_type: LINEAR; rotate_animation_speed: 0.1")
local imgDoorLock               = img_add("DoorLock.png", 1298, 581, 68, 106)
local imgDoorUnlock             = img_add("DoorUnlock.png", 1298, 545, 68, 104)
local imgDoorOpen               = img_add("DoorOpen.png", 1074, 578, 73, 34)
local imgDoorFault              = img_add("DoorFault.png", 1074, 620, 73, 33)
--=============================================================================================
--=======================	LVARs	===================================================
--=============================================================================================
local lvarParkingBreak          = {"L:INI_PARKING_BRAKE_CMD", "bool"}
local lvarAccuReinflate         = {"L:INI_ACCU_REINFLATE", "bool"}
local lvarYellowAccuPress       = {"L:INI_ACCU_YELLOW_PRESSURE_PERCENT", "float"}
local lvarGreenAccuPress        = {"L:INI_ACCU_GREEN_PRESSURE_PERCENT", "float"}
local lvarLgGrvtyExtnCover      = {"L:INI_GRAVITY_GEAR_COVER", "bool"}
local lvarLgGrvtyExtnHandle     = {"L:INI_GRAVITY_GEAR_HANDLE_STATE", "float"}
local lvarLgGrvtyExtnLeftGuard  = {"L:INI_GRAVITY_GEAR_GUARD_2", "bool"}
local lvarLgGrvtyExtnRightGuard = {"L:INI_GRAVITY_GEAR_GUARD_1", "bool"}
local lvarRudderTrim            = {"L:XMLVAR_RUDDERTRIM_SWITCH_1", "float"}
local lvarRudderTrimReset       = {"L:RESETTING_RUDDER_TRIM", "bool"}
local lvarLeftPitchTrim         = {"L:INI_PITCH_TRIM_LEFT", "float"}
local lvarRightPitchTrim        = {"L:INI_PITCH_TRIM_RIGHT", "float"}
local lvarFloodLight            = {"L:INI_CKPT_LT_FLOOD", "percent"}
local lvarIntegLight            = {"L:INI_CKPT_LT_INTEG", "percent"}
local lvarDomeLight             = {"L:INI_CKPT_LT_DOME", "percent"}
local lvarDuMasterInhibit       = {"L:INI_CKPT_LT_DU_MASTER_INHIBIT", "float"}
local lvarDuBrightnessInc       = {"L:INI_CKPT_LT_DU_MASTER_BRT_INC", "float"}
local lvarDuBrightnessDec       = {"L:INI_CKPT_LT_DU_MASTER_BRT_DEC", "float"}
local lvarCkptDoor              = {"L:INI_CKPT_DOOR", "float"}
local lvarCkptDoorFault         = {"L:INI_CKPT_DOOR_FAULT", "float"}
local lvarCkptDoorOpen          = {"L:INI_COCKPIT_DOOR", "float"}
local integ_light	            = {"L:INI_CKPT_LT_INTEG", "enum"}
local light_powered	            = {"L:INI_EFB2_POWERED", "bool"}
--=============================================================================================
--========================================logic================================================
--=============================================================================================

--+++++++++++++++++++++++++
-- Parking break
--+++++++++++++++++++++++++
function rotateParkBrkImage(released)
    if released then
        switch_set_position(touchParkBrk, 0)
        rotate(imgParkingBrk, 0)
    else
        switch_set_position(touchParkBrk, 1)
        rotate(imgParkingBrk, 90)
    end
end

function changeParkBrk(position, direction)
    if position+direction == 1 then
        msfs_event("PARKING_BRAKES", 0)
    else
        msfs_event("PARKING_BRAKES", 1)
    end
end

touchParkBrk = switch_add(nil, nil, 128, 65, 257, 257, "CIRCULAIR", changeParkBrk)
touch_setting(touchParkBrk, "ROTATE_TICK", 90)
switch_set_position(touchParkBrk, 0)
msfs_variable_subscribe(lvarParkingBreak[1], lvarParkingBreak[2], rotateParkBrkImage)



--+++++++++++++++++++++++++
-- ACCU REINFLATE
--+++++++++++++++++++++++++
function AccuReinflatePress()
    msfs_variable_write(lvarAccuReinflate[1], lvarAccuReinflate[2], true)
    visible(imgAccuReinflatePressed, false)
end

function AccuReinflateUnpress()
    visible(imgAccuReinflatePressed, true)
    msfs_variable_write(lvarAccuReinflate[1], lvarAccuReinflate[2], false)
end

touchAccuReinflate = button_add(nil, nil, 479, 91, 67, 67, AccuReinflatePress, AccuReinflateUnpress)
visible(imgAccuReinflatePressed, false)



--+++++++++++++++++++++++++
-- Green ACCU PRESS
--+++++++++++++++++++++++++
function rotateGreenAccuPress(percentage)
    rotate(imgAccuGreenPointer, -70*(1-percentage))
    rotate(imgAccuGreenPointerLightOff, -70*(1-percentage))
    rotate(imgAccuGreenPointerLightOn, -70*(1-percentage))
end

msfs_variable_subscribe(lvarGreenAccuPress[1], lvarGreenAccuPress[2], rotateGreenAccuPress)

--+++++++++++++++++++++++++
-- Yellow ACCU PRESS
--+++++++++++++++++++++++++
function rotateYellowAccuPress(percentage)
    rotate(imgAccuYellowPointer, 70*(1-percentage))
    rotate(imgAccuYellowPointerLightOff, -70*(1-percentage))
    rotate(imgAccuYellowPointerLightOn, -70*(1-percentage))
end

msfs_variable_subscribe(lvarYellowAccuPress[1], lvarYellowAccuPress[2], rotateYellowAccuPress)


--+++++++++++++++++++++++++
-- L/G GRVTY EXTND
--+++++++++++++++++++++++++
--Left Guard
function moveLeftGuard(isOpened)
    if isOpened then
        move(touchLgGrvtyExtnLeftGuard, 200, 456, 43, 108)
    else
        move(touchLgGrvtyExtnLeftGuard, 200, 456, 94, 108)
    end
end

function toggleLgGrvtyExtnLeftGuard(open)
    if open then
        opacity(imgLgGrvtyExtnLeftGuard, 100)
    else
        opacity(imgLgGrvtyExtnLeftGuard, 0)
    end
    moveLeftGuard(open)
end

function changeSwitchLgGrvtyExtnLeftGuard(open)
    if open then
        switch_set_position(touchLgGrvtyExtnLeftGuard, 0)
    else
        switch_set_position(touchLgGrvtyExtnLeftGuard, 1)
    end
    toggleLgGrvtyExtnLeftGuard(open)
end

function pressLgGrvtyExtnLeftGuard(position, direction)
    if position == 1 then
        msfs_variable_write(lvarLgGrvtyExtnLeftGuard[1], lvarLgGrvtyExtnLeftGuard[2], true)
        changeSwitchLgGrvtyExtnLeftGuard(true)
    else
        msfs_variable_write(lvarLgGrvtyExtnLeftGuard[1], lvarLgGrvtyExtnLeftGuard[2], false)
        changeSwitchLgGrvtyExtnLeftGuard(false)
    end
end

touchLgGrvtyExtnLeftGuard = switch_add(nil, nil, 410, 455, 91, 109, pressLgGrvtyExtnLeftGuard)
changeSwitchLgGrvtyExtnLeftGuard(false)
msfs_variable_subscribe(lvarLgGrvtyExtnLeftGuard[1], lvarLgGrvtyExtnLeftGuard[2], changeSwitchLgGrvtyExtnLeftGuard)

--Right Guard
function moveRightGuard(isOpened)
    if isOpened then
        move(touchLgGrvtyExtnRightGuard, 462, 455, 42, 109)
    else
        move(touchLgGrvtyExtnRightGuard, 410, 455, 91, 109)
    end
end

function toggleLgGrvtyExtnRightGuard(open)
    if open then
        opacity(imgLgGrvtyExtnRightGuard, 100)
    else
        opacity(imgLgGrvtyExtnRightGuard, 0)
    end
    moveRightGuard(open)
end

function changeSwitchLgGrvtyExtnRightGuard(open)
    if open then
        switch_set_position(touchLgGrvtyExtnRightGuard, 0)
    else
        switch_set_position(touchLgGrvtyExtnRightGuard, 1)
    end
    toggleLgGrvtyExtnRightGuard(open)
end

function pressLgGrvtyExtnRightGuard(position, direction)
    if position == 1 then
        msfs_variable_write(lvarLgGrvtyExtnRightGuard[1], lvarLgGrvtyExtnRightGuard[2], true)
        changeSwitchLgGrvtyExtnRightGuard(true)
    else
        msfs_variable_write(lvarLgGrvtyExtnRightGuard[1], lvarLgGrvtyExtnRightGuard[2], false)
        changeSwitchLgGrvtyExtnRightGuard(false)
    end
end

touchLgGrvtyExtnRightGuard = switch_add(nil, nil, 410, 455, 91, 109, pressLgGrvtyExtnRightGuard)
changeSwitchLgGrvtyExtnRightGuard(false)
msfs_variable_subscribe(lvarLgGrvtyExtnRightGuard[1], lvarLgGrvtyExtnRightGuard[2], changeSwitchLgGrvtyExtnRightGuard)

--Handle Logic
function toggleLgGrvtyExtnHandle(newSimPosition)
    if newSimPosition == 0 then
        opacity(imgLgGrvtyExtnHandleReset, 100)
        opacity(imgLgGrvtyExtnHandleOff, 0)
        opacity(imgLgGrvtyExtnHandleDown, 0)
    elseif newSimPosition == 1 then
        opacity(imgLgGrvtyExtnHandleReset, 0)
        opacity(imgLgGrvtyExtnHandleOff, 100)
        opacity(imgLgGrvtyExtnHandleDown, 0)
    elseif newSimPosition == 2 then
        opacity(imgLgGrvtyExtnHandleReset, 0)
        opacity(imgLgGrvtyExtnHandleOff, 0)
        opacity(imgLgGrvtyExtnHandleDown, 100)
    end
end

function changeSwitchLgGrvtyExtnHandle(newSimPosition)
    switch_set_position(touchLgGrvtyExtnHandle, 2 - newSimPosition)
    toggleLgGrvtyExtnHandle(newSimPosition)
end

function pressLgGrvtyExtnHandle(position, direction)
    local leftGuard=switch_get_position(touchLgGrvtyExtnLeftGuard)
    local rightGuard=switch_get_position(touchLgGrvtyExtnRightGuard)
    local newAMPosition = position + direction
    local newSimPosition = 2 - newAMPosition
    if ((newAMPosition == 0 and leftGuard == 0 and rightGuard == 0) or newAMPosition == 1 or newAMPosition == 2) then
        msfs_variable_write(lvarLgGrvtyExtnHandle[1], lvarLgGrvtyExtnHandle[2], newSimPosition)
        changeSwitchLgGrvtyExtnHandle(newSimPosition)
    end
end

touchLgGrvtyExtnHandle = switch_add(nil, nil, nil, 242, 447, 221, 122, 'VERTICAL', pressLgGrvtyExtnHandle)
changeSwitchLgGrvtyExtnHandle(1)
msfs_variable_subscribe(lvarLgGrvtyExtnHandle[1], lvarLgGrvtyExtnHandle[2], changeSwitchLgGrvtyExtnHandle)

--Cover logic
function moveLgGrvtyExtn(isOpened) --moves the clickspot of the L/G GRVTY EXTN Cover (used every time)
    if isOpened then
        move(touchLgGrvtyExtnCover, -133, 336, 315, 393)
    else
        move(touchLgGrvtyExtnCover, 127, 356, 448, 317)
    end
end

function toggleLgGrvtyExtnCover(open) --changes the Picture of the L/G GRVTY EXTN Cover (used every time)
    if open then
        opacity(imgLgGrvtyExtnClosed, 0)
        opacity(imgLgGrvtyExtnOpen, 100)
    else
        opacity(imgLgGrvtyExtnClosed, 100)
        opacity(imgLgGrvtyExtnOpen, 0)
    end
    moveLgGrvtyExtn(open)
end

function changeSwitchLgGrvtyPos(open) --changes the switch position in AM internally (logic entry after lvar change, used every time)
    if open then
        switch_set_position(touchLgGrvtyExtnCover, 0)
    else
        switch_set_position(touchLgGrvtyExtnCover, 1)
    end
    toggleLgGrvtyExtnCover(open)
end

function pressLgGrvtyExtnCover(position, direction) --changes the lvar (entry when AM-switch is pressed, only used when AM-switch is pressed)
    if position == 1 then
        msfs_variable_write(lvarLgGrvtyExtnCover[1], lvarLgGrvtyExtnCover[2], true)
        changeSwitchLgGrvtyPos(true)
    else
        msfs_variable_write(lvarLgGrvtyExtnCover[1], lvarLgGrvtyExtnCover[2], false)
        changeSwitchLgGrvtyPos(false)
    end
end

touchLgGrvtyExtnCover = switch_add(nil, nil, 127, 356, 448, 317, pressLgGrvtyExtnCover)
changeSwitchLgGrvtyPos(false)
msfs_variable_subscribe(lvarLgGrvtyExtnCover[1], lvarLgGrvtyExtnCover[2], changeSwitchLgGrvtyPos)


--+++++++++++++++++++++++++
-- RUDDER TRIM
--+++++++++++++++++++++++++
-- Rudder Trim
function changeRudderTrim(rotation)
    correctRudderTrim = user_prop_get(userpropRudderTrim)
    if correctRudderTrim then
        rotation = 2 - rotation
    end
    if rotation == 0 then
        switch_set_position(touchRudderTrim, 0)
        rotate(imgRudderTrim, -29)
    elseif rotation == 1 then
        switch_set_position(touchRudderTrim, 1)
        rotate(imgRudderTrim, 0)
    elseif rotation == 2 then
        switch_set_position(touchRudderTrim, 2)
        rotate(imgRudderTrim, 29)
    end
end

function releaseRudderTrim()
    switch_set_position(touchRudderTrim, 1)
    rotate(imgRudderTrim, 0)
    msfs_variable_write(lvarRudderTrim[1], lvarRudderTrim[2], 1)
end

function moveRudderTrim(position, direction)
    local rotation = position + direction
    correctRudderTrim = user_prop_get(userpropRudderTrim)
    if correctRudderTrim then
        rotation = 2 - rotation
    end
    changeRudderTrim(rotation)
    msfs_variable_write(lvarRudderTrim[1], lvarRudderTrim[2], rotation)
end

touchRudderTrim = switch_add(nil, nil, nil, 1088, 316, 176, 178, "CIRCULAIR", moveRudderTrim, nil, releaseRudderTrim)
touch_setting(touchRudderTrim, "ROTATE_TICK", 29)
switch_set_position(touchRudderTrim, 1)
msfs_variable_subscribe(lvarRudderTrim[1], lvarRudderTrim[2], changeRudderTrim)

-- Rudder Trim Reset
function unpressRudderTrimReset()
    visible(imgRudderTrimResetpressed, false)
end
function pressRudderTrimReset()
    visible(imgRudderTrimResetpressed, true)
    msfs_event("INI.RUDDER_TRIM_RESET")
end

touchRudderTrimReset = button_add(nil, nil, 1329, 370, 67, 67, pressRudderTrimReset, unpressRudderTrimReset)
visible(imgRudderTrimResetpressed, false)


--+++++++++++++++++++++++++
-- PITCH TRIM
--+++++++++++++++++++++++++
-- Left Pitch Trim
function moveLeftPitchTrim(trim)
    if trim == 0 then
        visible(imgPitchLeftDown, false)
        visible(imgPitchLeftUp, true)
    elseif trim == 1 then
        visible(imgPitchLeftDown, false)
        visible(imgPitchLeftUp, false)
    elseif trim == 2 then
        visible(imgPitchLeftDown, true)
        visible(imgPitchLeftUp, false)
    end
end

function unpressLeftPitch()
    msfs_variable_write(lvarLeftPitchTrim[1], lvarLeftPitchTrim[2], 1)
    switch_set_position(touchLeftPitchTrim, 1)
end

function pressLeftPitch(position, direction)
    local trim = position + direction
    switch_set_position(touchLeftPitchTrim, trim)
    msfs_variable_write(lvarLeftPitchTrim[1], lvarLeftPitchTrim[2], trim)
end

touchLeftPitchTrim = switch_add(nil, nil, nil, 1106, 65, 68, 160, "VERTICAL", pressLeftPitch, nil, unpressLeftPitch)
switch_set_position(touchLeftPitchTrim, 1)
msfs_variable_subscribe(lvarLeftPitchTrim[1], lvarLeftPitchTrim[2], moveLeftPitchTrim)


-- Right Pitch Trim
function moveRightPitchTrim(trim)
    if trim == 0 then
        visible(imgPitchRightDown, false)
        visible(imgPitchRightUp, true)
    elseif trim == 1 then
        visible(imgPitchRightDown, false)
        visible(imgPitchRightUp, false)
    elseif trim == 2 then
        visible(imgPitchRightDown, true)
        visible(imgPitchRightUp, false)
    end
end

function unpressRightPitch()
    msfs_variable_write(lvarRightPitchTrim[1], lvarRightPitchTrim[2], 1)
    switch_set_position(touchRightPitchTrim, 1)
end

function pressRightPitch(position, direction)
    local trim = position + direction
    switch_set_position(touchRightPitchTrim, trim)
    msfs_variable_write(lvarRightPitchTrim[1], lvarRightPitchTrim[2], trim)
end

touchRightPitchTrim = switch_add(nil, nil, nil, 1175, 64, 67, 161, "VERTICAL", pressRightPitch, nil, unpressRightPitch)
switch_set_position(touchRightPitchTrim, 1)
msfs_variable_subscribe(lvarRightPitchTrim[1], lvarRightPitchTrim[2], moveRightPitchTrim)


--+++++++++++++++++++++++++
-- CKPT LT
--+++++++++++++++++++++++++
-- Flood Light
local PositionFloodLight = 0
function rotatedFloodLight(direction)
    local newPositionFloodLight = PositionFloodLight + direction
    if not(((newPositionFloodLight) > 20) or ((newPositionFloodLight) < 0)) then
        PositionFloodLight = PositionFloodLight + direction
        msfs_variable_write(lvarFloodLight[1], lvarFloodLight[2], PositionFloodLight*5)
    end
end

function rotateFloodLight(value)
    PositionFloodLight = value/5
    rotate(imgFloodLight, PositionFloodLight*13.5)
end
touchFloodLight = dial_add(nil, 679, 376, 114, 114, rotatedFloodLight)
msfs_variable_subscribe(lvarFloodLight[1], lvarFloodLight[2], rotateFloodLight)

-- Integ Light
local PositionIntegLight = 0
function rotatedIntegLight(direction)
    local newPositionIntegLight = PositionIntegLight + direction
    if not(((newPositionIntegLight) > 20) or ((newPositionIntegLight) < 0)) then
        PositionIntegLight = PositionIntegLight + direction
        msfs_variable_write(lvarIntegLight[1], lvarIntegLight[2], PositionIntegLight*5)
    end
end

function rotateIntegLight(value)
    PositionIntegLight = value/5
    rotate(imgIntegLight, PositionIntegLight*13.5)
end
touchIntegLight = dial_add(nil, 895, 376, 114, 114, rotatedIntegLight)
msfs_variable_subscribe(lvarIntegLight[1], lvarIntegLight[2], rotateIntegLight)

-- Dome Light
local PositionDomeLight = 0
function rotatedDomeLight(direction)
    local newPositionDomeLight = PositionDomeLight + direction
    if not(((newPositionDomeLight) > 20) or ((newPositionDomeLight) < 0)) then
        PositionDomeLight = PositionDomeLight + direction
        msfs_variable_write(lvarDomeLight[1], lvarDomeLight[2], PositionDomeLight*5)
    end
end

function rotateDomeLight(value)
    PositionDomeLight = value/5
    if PositionDomeLight == 20 then
        rotate(imgDomeLight, 305)
    else
        rotate(imgDomeLight, PositionDomeLight*14.2)
    end
end
touchDomeLight = dial_add(nil, 678, 585, 114, 114, rotatedDomeLight)
msfs_variable_subscribe(lvarDomeLight[1], lvarDomeLight[2], rotateDomeLight)

-- DU Master Inhibit
function rotatedDuInhibit(position, direction)
    local newPos = position + direction
    switch_set_position(touchDuInhibit, newPos)
    msfs_variable_write(lvarDuMasterInhibit[1], lvarDuMasterInhibit[2], 1 - newPos)
end

function rotateDuMasterInhibit(value)
    rotatedToInhibit = 1 - value
    switch_set_position(touchDuInhibit, rotatedToInhibit)
    rotate(imgDuMasterInhibit, rotatedToInhibit * (-60))
    rotate(imgDuMasterInhibit_L_off, rotatedToInhibit * (-60))
    rotate(imgDuMasterInhibit_L_on, rotatedToInhibit * (-60))
end
touchDuInhibit = switch_add(nil, nil, 886, 575, 128, 128, rotatedDuInhibit)
msfs_variable_subscribe(lvarDuMasterInhibit[1], lvarDuMasterInhibit[2], rotateDuMasterInhibit)

-- DU Brightness
local DuBrightness = 0
function rotatedDuBrightness(direction)
    DuBrightness = DuBrightness + direction
    if direction > 0 then
        msfs_variable_write(lvarDuBrightnessInc[1], lvarDuBrightnessInc[2], 1)
        rotate(imgDuBrightness, DuBrightness*7.5)
    elseif direction < 0 then
        msfs_variable_write(lvarDuBrightnessDec[1], lvarDuBrightnessDec[2], 1)
        rotate(imgDuBrightness, DuBrightness*7.5)
    end
end

function rotateDuBrightnessINC(value)
    DuBrightness = DuBrightness + 1
    rotate(imgDuBrightness, DuBrightness*7.5)
end

function rotateDuBrightnessDEC(value)
    DuBrightness = DuBrightness - 1
    rotate(imgDuBrightness, DuBrightness*7.5)
end
touchDuBrightness = dial_add(nil, 914, 603, 72, 73, rotatedDuBrightness)
msfs_variable_subscribe(lvarDuBrightnessDec[1], lvarDuBrightnessDec[2], rotateDuBrightnessDEC)
msfs_variable_subscribe(lvarDuBrightnessInc[1], lvarDuBrightnessInc[2], rotateDuBrightnessINC)

--+++++++++++++++++++++++++
-- CKPT DOOR
--+++++++++++++++++++++++++
-- Door Lock
function releasedCkptDoorLock()
    local newPos = 1
    switch_set_position(touchCkptDoorLock, newPos)
    msfs_variable_write(lvarCkptDoor[1], lvarCkptDoor[2], newPos)
end

function movedCkptDoorLock(position, direction)
    local newPos = position + direction
    switch_set_position(touchCkptDoorLock, newPos)
    msfs_variable_write(lvarCkptDoor[1], lvarCkptDoor[2], newPos)
end

function setCkptDoorPos(newPos)
    switch_set_position(touchCkptDoorLock, newPos)
    if newPos == 0 then
        visible(imgDoorLock, true)
        visible(imgDoorUnlock, false)
    elseif newPos == 1 then
        visible(imgDoorLock, false)
        visible(imgDoorUnlock, false)
    elseif newPos == 2 then
        visible(imgDoorLock, false)
        visible(imgDoorUnlock, true)
    end
end

touchCkptDoorLock = switch_add(nil, nil, nil, 1298, 545, 68, 142, "VERTICAL", movedCkptDoorLock, nil, releasedCkptDoorLock)

switch_set_position(touchCkptDoorLock, 1)
visible(imgDoorLock, false)
visible(imgDoorUnlock, false)

msfs_variable_subscribe(lvarCkptDoor[1], lvarCkptDoor[2], setCkptDoorPos)

-- Door Open
function doorOpen(value)
    visible(imgDoorOpen, value)
end
msfs_variable_subscribe(lvarCkptDoorOpen[1], lvarCkptDoorOpen[2], doorOpen)
visible(imgDoorOpen, false)

-- Door Fault
function doorFault(value)
    visible(imgDoorFault, value)
end
msfs_variable_subscribe(lvarCkptDoorFault[1], lvarCkptDoorFault[2], doorFault)
visible(imgDoorFault, false)


--=============================================================================================
--========================================lighting=============================================
--=============================================================================================
function setLighting(percentage, light_powered)
	if light_powered then
		opacity(imglightingOn, (percentage/100)*1.1)
        opacity(imgDuMasterInhibit_L_on, (percentage/100)*1.1)
        opacity(imgAccuGreenPointerLightOn, (percentage/100)*1.1)
        opacity(imgAccuYellowPointerLightOn, (percentage/100)*1.1)
	else
		opacity(imglightingOn, 0)
        opacity(imgDuMasterInhibit_L_on, 0)
        opacity(imgAccuGreenPointerLightOn, 0)
        opacity(imgAccuYellowPointerLightOn, 0)
	end
end

setLighting(0)
msfs_variable_subscribe(integ_light[1], integ_light[2],
						light_powered[1], light_powered[2], setLighting)