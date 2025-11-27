local background	        = img_add_fullscreen("Background.png")
local lightingOff	        = img_add_fullscreen("Lighting_off.png")
local lightingOn	        = img_add_fullscreen("Lighting_on.png")
local DEFRD_selection_light_on  = img_add("Selection_lighting_on.png", 470, 80, 54, 23)
local ABN_selection_light_on    = img_add("Selection_lighting_on.png", 558, 80, 54, 23)
local DISPCH_selection_light_on = img_add("Selection_lighting_on.png", 419, 206, 54, 23)
local STS_selection_light_on    = img_add("Selection_lighting_on.png", 513, 206, 54, 23)
local MORE_selection_light_on   = img_add("Selection_lighting_on.png", 609, 206, 54, 23)
local LCLR_selection_light_on   = img_add("Selection_lighting_on.png", 81, 384, 54, 23)
local RCLR_selection_light_on   = img_add("Selection_lighting_on.png", 945, 383, 54, 23)

local SD_selection_light_on    = img_add("Selection_lighting_on.png", 251, 328, 54, 23)
local ENG_selection_light_on    = img_add("Selection_lighting_on.png", 373, 326, 54, 23)
local DOOR_selection_light_on   = img_add("Selection_lighting_on.png", 467, 326, 54, 23)
local WHEEL_selection_light_on  = img_add("Selection_lighting_on.png", 562, 326, 54, 23)
local FUEL_selection_light_on   = img_add("Selection_lighting_on.png", 655, 326, 54, 23)
local VIDEO_selection_light_on  = img_add("Selection_lighting_on.png", 813, 326, 54, 23)
local ELAC_selection_light_on   = img_add("Selection_lighting_on.png", 373, 421, 54, 23)
local ELDC_selection_light_on   = img_add("Selection_lighting_on.png", 467, 421, 54, 23)
local HYD_selection_light_on    = img_add("Selection_lighting_on.png", 562, 421, 54, 23)
local FCTL_selection_light_on   = img_add("Selection_lighting_on.png", 655, 421, 54, 23)
local APU_selection_light_on    = img_add("Selection_lighting_on.png", 373, 496, 54, 23)
local BLEED_selection_light_on  = img_add("Selection_lighting_on.png", 467, 496, 54, 23)
local COND_selection_light_on   = img_add("Selection_lighting_on.png", 562, 496, 54, 23)
local PRESS_selection_light_on  = img_add("Selection_lighting_on.png", 655, 496, 54, 23)

local panel                     = img_add_fullscreen("Panel.png")
local emer_canc_closed          = img_add_fullscreen("Emer_canc_closed.png")
local emer_canc_open            = img_add_fullscreen("Emer_canc_open.png")
local SdKnob                    = img_add("SD Knob.png", 230, 369, 96, 97)
local VideoGreaterKnob          = img_add("VIDEO greater knob.png", 789, 437, 103, 104)
local VideoSmallerKnob          = img_add("VIDEO smaller knob.png", 803, 451, 75, 75)



--=============================================================================================
--=======================	LVARs	===================================================
--=============================================================================================
local LVAR_EMER_CANC_GUARD    = {"L:INI_ECAM_EMER_CANCEL_GUARD", "bool"}

--light LVARS
local integ_light           = {"L:INI_CKPT_LT_INTEG", "enum"}
local light_powered	        = {"L:INI_EFB2_POWERED", "bool"}
local LVAR_ANNLT_SWITCH     = {"L:INI_ANNLT_SWITCH", "enum"}
local LVAR_ANNLT_powered    = {"L:INI_EFB1_POWERED", "bool"}
local lvar_DEFRD_sel_light  = {"L:INI_ECAM_DEFRD_LIGHT", "bool"}
local lvar_ABN_sel_light    = {"L:INI_ECAM_ABN_LIGHT", "bool"}
local lvar_DISPCH_sel_light = {"L:INI_ECAM_DISPCH_LIGHT", "bool"}
local lvar_STS_sel_light    = {"L:ECAM_CURRENT_STATUS", "bool"}
local lvar_MORE_sel_light   = {"L:INI_ECAM_MORE_STATUS", "bool"}
local lvar_CLR_sel_light    = {"L:INI_ECAM_CLR_LIGHT", "bool"}
local LVAR_Active_Page      = {"L:INI_ECAM_ACTIVE_PAGE", "enum"}

--button LVARS
local LChecklistButton          = {"L:INI_ECAM_CHECKLIST_LEFT", "bool"}
local RChecklistButton          = {"L:INI_ECAM_CHECKLIST_RIGHT", "bool"}
local TOConfigButton            = {"L:PUSH_ECAM_TOCONFIG", "bool"}
local DEFRDButton               = {"L:INI_ECAM_DEFRD", "bool"}
local LVAR_ABN_BUTTON           = {"L:INI_ECAM_ABN", "bool"}
local LVAR_EMER_CANCEL          = {"L:PUSH_ECAM_EMER_CANC", "bool"}
local LVAR_LScrollWheel_Up      = {"L:INI_ECAM_WHEEL_L_PLUS_COMMAND", "bool"}
local LVAR_LScrollWheel_Down    = {"L:INI_ECAM_WHEEL_L_MINUS_COMMAND", "bool"}
local LVAR_RScrollWheel_Up      = {"L:INI_ECAM_WHEEL_R_PLUS_COMMAND", "bool"}
local LVAR_RScrollWheel_Down    = {"L:INI_ECAM_WHEEL_R_MINUS_COMMAND", "bool"}
local LVAR_RCLLAST_Button       = {"L:PUSH_ECAM_RCL", "bool"}
local LVAR_RCLAll_Button        = {"L:INI_ECAM_RCL_ALL", "bool"}
local LVAR_Dispch_Button        = {"L:INI_ECAM_DISPCH", "bool"}
local LVAR_STS_Button           = {"L:PUSH_ECAM_STS", "bool"}
local LVAR_MORE_Button          = {"L:PUSH_ECAM_MORE", "bool"}
local LVAR_CLR_Button           = {"L:PUSH_ECAM_CLR", "bool"}
local LVAR_SD_INC               = {"L:INI_ECAM_SD_KNOB_INC", "bool"}
local LVAR_SD_DEC               = {"L:INI_ECAM_SD_KNOB_DEC", "bool"}
local LVAR_SD_PUSH              = {"L:INI_ECAM_SD_KNOB_PUSH", "bool"}

local LVAR_ENG                  = {"L:PUSH_ECAM_ENG", "bool"}
local LVAR_DOOR                 = {"L:PUSH_ECAM_DOOR", "bool"}
local LVAR_WHEEL                = {"L:PUSH_ECAM_WHEEL", "bool"}
local LVAR_FUEL                 = {"L:PUSH_ECAM_FUEL", "bool"}
local LVAR_VIDEO                = {"L:INI_ECAM_VIDEO", "bool"}
local LVAR_ELAC                 = {"L:PUSH_ECAM_ELEC_AC", "bool"}
local LVAR_ELDC                 = {"L:PUSH_ECAM_ELEC_DC", "bool"}
local LVAR_HYD                  = {"L:PUSH_ECAM_HYD", "bool"}
local LVAR_FCTL                 = {"L:PUSH_ECAM_FCTL", "bool"}
local LVAR_ALL                  = {"L:PUSH_ECAM_ALL", "bool"}
local LVAR_APU                  = {"L:INI_PUSH_ECAM_APU_RELEASE", "bool"}
local LVAR_BLEED                = {"L:PUSH_ECAM_BLEED", "bool"}
local LVAR_COND                 = {"L:PUSH_ECAM_COND", "bool"}
local LVAR_PRESS                = {"L:PUSH_ECAM_PRESS", "bool"}



--=============================================================================================
--========================	LUA LOCAl vars   ==================================================
--=============================================================================================
local isOpenedEmerCancGuard

--=============================================================================================
--========================	STATUS LIGHT LOGIC   ===========================================
--=============================================================================================
function toggleSelectionLight(ANNLT_Test, powered, ABN, CLR, DEFRD, DISPCH, MORE, STS, ActivePage)
    if ANNLT_Test == 0 and powered then
        opacity(ABN_selection_light_on, 100)
        opacity(LCLR_selection_light_on, 100)
        opacity(RCLR_selection_light_on, 100)
        opacity(DEFRD_selection_light_on, 100)
        opacity(DISPCH_selection_light_on, 100)
        opacity(MORE_selection_light_on, 100)
        opacity(STS_selection_light_on, 100)
        opacity(SD_selection_light_on, 100)
        opacity(ENG_selection_light_on, 100)
        opacity(DOOR_selection_light_on, 100)
        opacity(WHEEL_selection_light_on, 100)
        opacity(FUEL_selection_light_on, 100)
        opacity(VIDEO_selection_light_on, 100)
        opacity(ELAC_selection_light_on, 100)
        opacity(ELDC_selection_light_on, 100)
        opacity(HYD_selection_light_on, 100)
        opacity(FCTL_selection_light_on, 100)
        opacity(APU_selection_light_on, 100)
        opacity(BLEED_selection_light_on, 100)
        opacity(COND_selection_light_on, 100)
        opacity(PRESS_selection_light_on, 100)
        do return end
    else
        opacity(ABN_selection_light_on, 0)
        opacity(LCLR_selection_light_on, 0)
        opacity(RCLR_selection_light_on, 0)
        opacity(DEFRD_selection_light_on, 0)
        opacity(DISPCH_selection_light_on, 0)
        opacity(MORE_selection_light_on, 0)
        opacity(STS_selection_light_on, 0)
        opacity(SD_selection_light_on, 0)
        opacity(ENG_selection_light_on, 0)
        opacity(DOOR_selection_light_on, 0)
        opacity(WHEEL_selection_light_on, 0)
        opacity(FUEL_selection_light_on, 0)
        opacity(VIDEO_selection_light_on, 0)
        opacity(ELAC_selection_light_on, 0)
        opacity(ELDC_selection_light_on, 0)
        opacity(HYD_selection_light_on, 0)
        opacity(FCTL_selection_light_on, 0)
        opacity(APU_selection_light_on, 0)
        opacity(BLEED_selection_light_on, 0)
        opacity(COND_selection_light_on, 0)
        opacity(PRESS_selection_light_on, 0)
    end

    if not powered then
        do return end
    end


    if ABN then
        opacity(ABN_selection_light_on, 100)
    else
        opacity(ABN_selection_light_on, 0)
    end

    if CLR then
        opacity(LCLR_selection_light_on, 100)
        opacity(RCLR_selection_light_on, 100)
    else
        opacity(LCLR_selection_light_on, 0)
        opacity(RCLR_selection_light_on, 0)
    end

    if DEFRD then
        opacity(DEFRD_selection_light_on, 100)
    else
        opacity(DEFRD_selection_light_on, 0)
    end

    if DISPCH then
        opacity(DISPCH_selection_light_on, 100)
    else
        opacity(DISPCH_selection_light_on, 0)
    end

    if MORE then
        opacity(MORE_selection_light_on, 100)
    else
        opacity(MORE_selection_light_on, 0)
    end
    
    print("STS: ")
    print(STS)
    print("ActivePage: ")
    print(ActivePage)
    if STS then
        local activatePage = {
            [1] = function()
                opacity(ENG_selection_light_on, 100)
            end,

            [2] = function()
                opacity(HYD_selection_light_on, 100)
            end,

            [3] = function()
                opacity(ELDC_selection_light_on, 100)
            end,

            [4] = function()
                opacity(ELAC_selection_light_on, 100)
            end,

            [5] = function()
                opacity(BLEED_selection_light_on, 100)
            end,

            [6] = function()
                opacity(COND_selection_light_on, 100)
            end,

            [7] = function()
                opacity(PRESS_selection_light_on, 100)
            end,

            [8] = function()
                opacity(FUEL_selection_light_on, 100)
            end,

            [9] = function()
                opacity(APU_selection_light_on, 100)
            end,

            [10] = function()
                opacity(FCTL_selection_light_on, 100)
            end,

            [11] = function()
                opacity(DOOR_selection_light_on, 100)
            end,

            [12] = function()
                opacity(WHEEL_selection_light_on, 100)
            end,

            [14] = function()
                opacity(STS_selection_light_on, 100)
            end,

            [16] = function()
                opacity(VIDEO_selection_light_on, 100)
            end
        }

        if activatePage[ActivePage] then
            activatePage[ActivePage]()
        end
    end
end



msfs_variable_subscribe(LVAR_ANNLT_SWITCH[1], LVAR_ANNLT_SWITCH[2],
                        LVAR_ANNLT_powered[1], LVAR_ANNLT_powered[2],
                        lvar_ABN_sel_light[1], lvar_ABN_sel_light[2],
                        lvar_CLR_sel_light[1], lvar_CLR_sel_light[2],
                        lvar_DEFRD_sel_light[1], lvar_DEFRD_sel_light[2],
                        lvar_DISPCH_sel_light[1], lvar_DISPCH_sel_light[2],
                        lvar_MORE_sel_light[1], lvar_MORE_sel_light[2],
                        lvar_STS_sel_light[1], lvar_STS_sel_light[2],
                        LVAR_Active_Page[1], LVAR_Active_Page[2],
                        toggleSelectionLight)

toggleSelectionLight(false, false, false, false, false, false, false, false)



--=============================================================================================
--========================	EMER CANC GUARD LOGIC   ===========================================
--=============================================================================================
function toggleEmergencyCancelGuard(opened)
    isOpenedEmerCancGuard = opened
    if opened then
        opacity(emer_canc_open, 100)
        opacity(emer_canc_closed, 0)
    else
        opacity(emer_canc_closed, 100)
        opacity(emer_canc_open, 0)
    end
end

msfs_variable_subscribe(LVAR_EMER_CANC_GUARD[1], LVAR_EMER_CANC_GUARD[2], toggleEmergencyCancelGuard)
toggleEmergencyCancelGuard(false)

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


--=============================================================================================
--========================	ECAM Functions logic	===========================================
--=============================================================================================

--Left Checklist Mark
function left_Checkmark_pressed()
    msfs_variable_write(LChecklistButton[1], LChecklistButton[2], true)
end

function left_Checkmark_unpressed()
    msfs_variable_write(LChecklistButton[1], LChecklistButton[2], false)
end

left_Checkmark = button_add(nil, nil, 83, 21, 82, 82, left_Checkmark_pressed, left_Checkmark_unpressed)


--Right Checklist Mark
function right_Checkmark_pressed()
    msfs_variable_write(RChecklistButton[1], RChecklistButton[2], true)
end

function right_Checkmark_unpressed()
    msfs_variable_write(RChecklistButton[1], RChecklistButton[2], false)
end

right_Checkmark = button_add(nil, nil, 915, 21, 82, 82, right_Checkmark_pressed, right_Checkmark_unpressed)



--TO CONFIG
function TOCONFIG_pressed()
    msfs_variable_write(TOConfigButton[1], TOConfigButton[2], true)
end

function TOCONFIG_unpressed()
    msfs_variable_write(TOConfigButton[1], TOConfigButton[2], false)
end

TOConfig = button_add(nil, nil, 279, 18, 74, 52, TOCONFIG_pressed, TOCONFIG_unpressed)


--DEFRD
function DEFRD_pressed()
    msfs_variable_write(DEFRDButton[1], DEFRDButton[2], true)
end

function DEFRD_unpressed()
    msfs_variable_write(DEFRDButton[1], DEFRDButton[2], false)
end

DEFRD = button_add(nil, nil, 460, 77, 74, 52, DEFRD_pressed, DEFRD_unpressed)

--ABN
function ABN_pressed()
    msfs_variable_write(LVAR_ABN_BUTTON[1], LVAR_ABN_BUTTON[2], true)
end

function ABN_unpressed()
    msfs_variable_write(LVAR_ABN_BUTTON[1], LVAR_ABN_BUTTON[2], false)
end

ABN = button_add(nil, nil, 548, 77, 74, 52, ABN_pressed, ABN_unpressed)



--EMER CANC Button
function toggleEmerCancBut(setStatus)
    if setStatus or isOpenedEmerCancGuard then
        move(EMERCANC, nil, nil, 71, 50)
    else
        move(EMERCANC, nil, nil, 0, 0)
    end
end


function pressEmerCancBut()
    msfs_variable_write(LVAR_EMER_CANCEL[1], LVAR_EMER_CANCEL[2], true)
end

function unpressEmerCancBut()
    msfs_variable_write(LVAR_EMER_CANCEL[1], LVAR_EMER_CANCEL[2], false)
end

EMERCANC = button_add(nil, nil, 731, 20, 71, 50, pressEmerCancBut, unpressEmerCancBut)
msfs_variable_subscribe(LVAR_EMER_CANC_GUARD[1], LVAR_EMER_CANC_GUARD[2], toggleEmerCancBut)



--EMER CANC GUARD
function moveEmerCancGuardPos(setStatus)
    if setStatus or isOpenedEmerCancGuard then
        move(EMERCANCGUARD, 603, 0, 120, 81)
    else
        move(EMERCANCGUARD, 699, 4, 128, 78)
    end
end


function pressEmerCancGuard()
    if isOpenedEmerCancGuard then
        msfs_variable_write(LVAR_EMER_CANC_GUARD[1], LVAR_EMER_CANC_GUARD[2], false)
        move(EMERCANCGUARD, 699, 4, 128, 78)
        toggleEmerCancBut(false)
    else
        msfs_variable_write(LVAR_EMER_CANC_GUARD[1], LVAR_EMER_CANC_GUARD[2], true)
        move(EMERCANCGUARD, 603, 0, 120, 81)
        toggleEmerCancBut(true)
    end
end

function unpressEmerCancGuard()
end

EMERCANCGUARD = button_add(nil, nil, 699, 4, 128, 78, pressEmerCancGuard, unpressEmerCancGuard)
msfs_variable_subscribe(LVAR_EMER_CANC_GUARD[1], LVAR_EMER_CANC_GUARD[2], moveEmerCancGuardPos)
moveEmerCancGuardPos()

--Left Scroll Wheel

function moveLeftScrollWheel(direction)
    if direction == 1 then
        msfs_variable_write(LVAR_LScrollWheel_Down[1], LVAR_LScrollWheel_Down[2], true)
    else
        msfs_variable_write(LVAR_LScrollWheel_Up[1], LVAR_LScrollWheel_Up[2], true)
    end
end

LeftScrollWheel = scrollwheel_add_ver("Scrollwheel.png", 100, 139, 61, 139, 61, 5, moveLeftScrollWheel)


--Right Scroll Wheel

function moveRightScrollWheel(direction)
    if direction == 1 then
        msfs_variable_write(LVAR_RScrollWheel_Down[1], LVAR_RScrollWheel_Down[2], true)
    else
        msfs_variable_write(LVAR_RScrollWheel_Up[1], LVAR_RScrollWheel_Up[2], true)
    end
end

RightScrollWheel = scrollwheel_add_ver("Scrollwheel.png", 919, 139, 62, 140, 62, 5, moveRightScrollWheel)

--RCL LAST
function pressRclLast()
    msfs_variable_write(LVAR_RCLLAST_Button[1], LVAR_RCLLAST_Button[2], true)
end

function unpressRclLast()
    msfs_variable_write(LVAR_RCLLAST_Button[1], LVAR_RCLLAST_Button[2], false)
end

RclLast = button_add(nil, nil, 279, 141, 75, 53, pressRclLast, unpressRclLast)

--RCL ALL
function pressRclAll()
    msfs_variable_write(LVAR_RCLAll_Button[1], LVAR_RCLAll_Button[2], true)
end

function unpressRclAll()
    msfs_variable_write(LVAR_RCLAll_Button[1], LVAR_RCLAll_Button[2], false)
end

RclAll = button_add(nil, nil, 728, 141, 75, 53, pressRclAll, unpressRclAll)

--DISPCH
function pressDispch()
    msfs_variable_write(LVAR_Dispch_Button[1], LVAR_Dispch_Button[2], true)
end

function unpressDispch()
    msfs_variable_write(LVAR_Dispch_Button[1], LVAR_Dispch_Button[2], false)
end

DISPCH = button_add(nil, nil, 407, 203, 75, 53, pressDispch, unpressDispch)

--STS
function pressSTS()
    msfs_variable_write(LVAR_STS_Button[1], LVAR_STS_Button[2], true)
end

function unpressSTS()
    msfs_variable_write(LVAR_STS_Button[1], LVAR_STS_Button[2], false)
end

STS = button_add(nil, nil, 503, 203, 75, 53, pressSTS, unpressSTS)

--MORE
function pressMORE()
    msfs_variable_write(LVAR_MORE_Button[1], LVAR_MORE_Button[2], true)
end

function unpressMORE()
    msfs_variable_write(LVAR_MORE_Button[1], LVAR_MORE_Button[2], false)
end

MORE = button_add(nil, nil, 598, 203, 75, 53, pressMORE, unpressMORE)

--CLR
function pressCLR()
    msfs_variable_write(LVAR_CLR_Button[1], LVAR_CLR_Button[2], true)
end

function unpressCLR()
    msfs_variable_write(LVAR_CLR_Button[1], LVAR_CLR_Button[2], false)
end

CLRLeft = button_add(nil, nil, 72, 383, 72, 50, pressCLR, unpressCLR)
CLRRight = button_add(nil, nil, 935, 383, 72, 50, pressCLR, unpressCLR)






--=============================================================================================
--===========================	ECAM Pages logic	===========================================
--=============================================================================================
function rotateSdDial(direction)
    if direction == 1 then
        msfs_variable_write(LVAR_SD_INC[1], LVAR_SD_INC[2], true)
    else
        print("Decrement")
        msfs_variable_write(LVAR_SD_DEC[1], LVAR_SD_DEC[2], true)
    end
end


function pushSdDial()
    msfs_variable_write(LVAR_SD_PUSH[1], LVAR_SD_PUSH[2], true)
end

function releaseSdDial()
    msfs_variable_write(LVAR_SD_PUSH[1], LVAR_SD_PUSH[2], false)
end

SdDial = dial_add(nil, 230, 369, 96, 97, rotateSdDial, pushSdDial, releaseSdDial)



---
---ROW 1
---



--ENGButton
function pressENG()
    msfs_variable_write(LVAR_ENG[1], LVAR_ENG[2], true)
end

function unpressENG()
    msfs_variable_write(LVAR_ENG[1], LVAR_ENG[2], false)
end

ENGButton = button_add(nil, nil, 364, 323, 72, 51, pressENG, unpressENG)


--DOORButton
function pressDOOR()
    msfs_variable_write(LVAR_DOOR[1], LVAR_DOOR[2], true)
end

function unpressDOOR()
    msfs_variable_write(LVAR_DOOR[1], LVAR_DOOR[2], false)
end

DOORButton = button_add(nil, nil, 458, 323, 72, 51, pressDOOR, unpressDOOR)


--WHEELButton
function pressWHEEL()
    msfs_variable_write(LVAR_WHEEL[1], LVAR_WHEEL[2], true)
end

function unpressWHEEL()
    msfs_variable_write(LVAR_WHEEL[1], LVAR_WHEEL[2], false)
end

WHEELButton = button_add(nil, nil, 553, 323, 72, 51, pressWHEEL, unpressWHEEL)


--WHEELButton
function pressFUEL()
    msfs_variable_write(LVAR_FUEL[1], LVAR_FUEL[2], true)
end

function unpressFUEL()
    msfs_variable_write(LVAR_FUEL[1], LVAR_FUEL[2], false)
end

FUELButton = button_add(nil, nil, 646, 323, 72, 51, pressFUEL, unpressFUEL)


--VIDEOButton
function pressVIDEO()
    msfs_variable_write(LVAR_VIDEO[1], LVAR_VIDEO[2], true)
end

function unpressVIDEO()
    msfs_variable_write(LVAR_VIDEO[1], LVAR_VIDEO[2], false)
end

VIDEOButton = button_add(nil, nil, 804, 323, 72, 51, pressVIDEO, unpressVIDEO)



---
---ROW 2
---



--ELACButton
function pressELAC()
    msfs_variable_write(LVAR_ELAC[1], LVAR_ELAC[2], true)
end

function unpressELAC()
    msfs_variable_write(LVAR_ELAC[1], LVAR_ELAC[2], false)
end

ELACButton = button_add(nil, nil, 364, 420, 72, 51, pressELAC, unpressELAC)


--ELDCButton
function pressELDC()
    msfs_variable_write(LVAR_ELDC[1], LVAR_ELDC[2], true)
end

function unpressELDC()
    msfs_variable_write(LVAR_ELDC[1], LVAR_ELDC[2], false)
end

ELDCButton = button_add(nil, nil, 458, 420, 72, 51, pressELDC, unpressELDC)


--HYDButton
function pressHYD()
    msfs_variable_write(LVAR_HYD[1], LVAR_HYD[2], true)
end

function unpressHYD()
    msfs_variable_write(LVAR_HYD[1], LVAR_HYD[2], false)
end

HYDButton = button_add(nil, nil, 553, 420, 72, 51, pressHYD, unpressHYD)


--FCTLButton
function pressFCTL()
    msfs_variable_write(LVAR_FCTL[1], LVAR_FCTL[2], true)
end

function unpressFCTL()
    msfs_variable_write(LVAR_FCTL[1], LVAR_FCTL[2], false)
end

FCTLButton = button_add(nil, nil, 646, 420, 72, 51, pressFCTL, unpressFCTL)



---
---ROW 3
---


--ALLButton
function pressALL()
    msfs_variable_write(LVAR_ALL[1], LVAR_ALL[2], true)
end

function unpressALL()
    msfs_variable_write(LVAR_ALL[1], LVAR_ALL[2], false)
end

ALLButton = button_add(nil, nil, 243, 493, 72, 51, pressALL, unpressALL)


--ALLButton
function pressAPU()
    msfs_variable_write(LVAR_APU[1], LVAR_APU[2], true)
end

function unpressAPU()
    msfs_variable_write(LVAR_APU[1], LVAR_APU[2], false)
end

APUButton = button_add(nil, nil, 364, 493, 72, 51, pressAPU, unpressAPU)


--BLEEDButton
function pressBLEED()
    msfs_variable_write(LVAR_BLEED[1], LVAR_BLEED[2], true)
end

function unpressBLEED()
    msfs_variable_write(LVAR_BLEED[1], LVAR_BLEED[2], false)
end

BLEEDButton = button_add(nil, nil, 458, 493, 72, 51, pressBLEED, unpressBLEED)


--CONDButton
function pressCOND()
    msfs_variable_write(LVAR_COND[1], LVAR_COND[2], true)
end

function unpressCOND()
    msfs_variable_write(LVAR_COND[1], LVAR_COND[2], false)
end

CONDButton = button_add(nil, nil, 553, 493, 72, 51, pressCOND, unpressCOND)


--PRESSButton
function pressPRESS()
    msfs_variable_write(LVAR_PRESS[1], LVAR_PRESS[2], true)
end

function unpressPRESS()
    msfs_variable_write(LVAR_PRESS[1], LVAR_PRESS[2], false)
end

PRESSButton = button_add(nil, nil, 646, 493, 72, 51, pressPRESS, unpressPRESS)