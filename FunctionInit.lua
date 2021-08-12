-------------------------------------------------------------------------------------------------------------
--
-- AzerothCoreAdmin is a derivative of TrinityAdmin and MangAdmin.
--
-- Copyright (C) 2018 Free Software Foundation, Inc.
-- License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
-- This is free software: you are free to change and redistribute it.
-- There is NO WARRANTY, to the extent permitted by law.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
-- Official repository: https://github.com/LightDestory/AzerothCoreAdmin
--
-------------------------------------------------------------------------------------------------------------

--Convention:
-- MangAdmin:PrepareScript(*nameofbutton*                    , Locale["*tooltiplocalisation*"]         , function() *functionnameandparameters()* end)

function InitControls()
    --[[GM Tab]]
    MangAdmin:PrepareScript(
            GM_displayAccountGMLevelButton,
            Locale["ttGM_displayAccountGMLevel"],
            function()
                genericCaller(GM_KEY, GM_displayAccountGMLevelCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_GMModeOnButton,
            Locale["ttGM_GMModeOn"],
            function()
                GM_GMModeCommand(ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_GMModeOffButton,
            Locale["ttGM_GMModeOff"],
            function()
                GM_GMModeCommand(OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_flyModeOnButton,
            Locale["ttGM_flyModeOn"],
            function()
                genericCaller(GM_KEY, GM_flyModeCommand, ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_flyModeOffButton,
            Locale["ttGM_flyModeOff"],
            function()
                genericCaller(GM_KEY, GM_flyModeCommand, OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_godModeOnButton,
            Locale["ttGM_GodOnButton"],
            function()
                genericCaller(GM_KEY, GM_godModeCommand, ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_godModeOffButton,
            Locale["ttGM_GodOffButton"],
            function()
                genericCaller(GM_KEY, GM_godModeCommand, OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_acceptWhispersOnButton,
            Locale["ttGM_acceptWhispersOn"],
            function()
                genericCaller(GM_KEY, GM_acceptWhispersCommand, ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_acceptWhispersOffButton,
            Locale["ttGM_acceptWhispersOff"],
            function()
                genericCaller(GM_KEY, GM_acceptWhispersCommand, OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_visibilityOnButton,
            Locale["ttGM_visibilityOn"],
            function()
                genericCaller(GM_KEY, GM_visibilityCommand, OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_visibilityOffButton,
            Locale["ttGM_visibilityOff"],
            function()
                genericCaller(GM_KEY, GM_visibilityCommand, ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatTaxiOnButton,
            Locale["ttGM_cheatTaxiOn"],
            function()
                genericCaller(GM_KEY, GM_cheatTaxiCommand, ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatTaxiOffButton,
            Locale["ttGM_cheatTaxiOff"],
            function()
                genericCaller(GM_KEY, GM_cheatTaxiCommand, OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatExploreMapsOnButton,
            Locale["tt_cheatExploreMapsOn"],
            function()
                genericCaller(GENERAL_KEY, cheatExploreMapsCommand, "1")
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatExploreMapsOffButton,
            Locale["tt_cheatExploreMapsOff"],
            function()
                genericCaller(GENERAL_KEY, cheatExploreMapsCommand, "0")
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatWaterWalkOnButton,
            Locale["ttGM_cheatWaterWalkOn"],
            function()
                genericCaller(GM_KEY, GM_cheatWaterWalkCommand, ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatWaterWalkOffButton,
            Locale["ttGM_cheatWaterWalkOff"],
            function()
                genericCaller(GM_KEY, GM_cheatWaterWalkCommand, OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatNoCastTimeOnButton,
            Locale["ttGM_cheatNoCastTimeOn"],
            function()
                genericCaller(GM_KEY, GM_cheatNoCastTimeCommand, ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatNoCastTimeOffButton,
            Locale["ttGM_cheatNoCastTimeOff"],
            function()
                genericCaller(GM_KEY, GM_cheatNoCastTimeCommand, OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatNoCooldownOnButton,
            Locale["ttGM_cheatNoCooldownOn"],
            function()
                genericCaller(GM_KEY, GM_cheatNoCooldownCommand, ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_cheatNoCooldownOffButton,
            Locale["ttGM_cheatNoCooldownOff"],
            function()
                genericCaller(GM_KEY, GM_cheatNoCooldownCommand, OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_accountIPLockOnButton,
            Locale["ttGM_accountIPLockOn"],
            function()
                genericCaller(GM_KEY, GM_accountIPLockCommand, ON_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_accountIPLockOffButton,
            Locale["ttGM_accountIPLockOff"],
            function()
                genericCaller(GM_KEY, GM_accountIPLockCommand, OFF_OPTION)
            end
    )
    MangAdmin:PrepareScript(
            GM_createAccountButton,
            Locale["ttGM_createAccount"],
            function()
                GM_createAccountCommand()
            end
    )
    MangAdmin:PrepareScript(
            GM_deleteAccountButton,
            Locale["ttGM_deleteAccount"],
            function()
                GM_deleteAccountCommand()
            end
    )
    MangAdmin:PrepareScript(
            GM_setAccountGMLevelButton,
            Locale["ttGM_setAccountGMLevel"],
            function()
                GM_setAccountGMLevelCommand()
            end
    )
    MangAdmin:PrepareScript(
            GM_setAccountPasswordButton,
            Locale["ttGM_setAccountPassword"],
            function()
                GM_setAccountPasswordCommand()
            end
    )
    MangAdmin:PrepareScript(
            GM_setAccountAddonButton,
            Locale["ttGM_setAccountAddon"],
            function()
                GM_setAccountAddonCommand()
            end
    )
    MangAdmin:PrepareScript(
            GM_GMListButton,
            Locale["ttGM_GMList"],
            function()
                genericCaller(GM_KEY, GM_GMListCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_GMInGameButton,
            Locale["ttGM_GMInGame"],
            function()
                genericCaller(GM_KEY, GM_GMInGameCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_GMNotifyButton,
            Locale["ttGM_GMNotify"],
            function()
                genericCaller(GM_KEY, GM_GMNotifyCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_GMMessageButton,
            Locale["ttGM_GMMessage"],
            function()
                genericCaller(GM_KEY, GM_GMMessageCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_castButton,
            Locale["ttGM_cast"],
            function()
                genericCaller(GM_KEY, GM_castCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_castBackButton,
            Locale["ttGM_castBack"],
            function()
                genericCaller(GM_KEY, GM_castBackCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_castDistButton,
            Locale["ttGM_castDist"],
            function()
                genericCaller(GM_KEY, GM_castDistCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_castSelfButton,
            Locale["ttGM_castSelf"],
            function()
                genericCaller(GM_KEY, GM_castSelfCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_castTargetButton,
            Locale["ttGM_castTarget"],
            function()
                genericCaller(GM_KEY, GM_castTargetCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_teleportToButton,
            Locale["ttGM_teleportTo"],
            function()
                genericCaller(GM_KEY, GM_teleportToCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_teleportAddButton,
            Locale["ttGM_teleportAdd"],
            function()
                genericCaller(GM_KEY, GM_teleportAddCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_teleportDelButton,
            Locale["ttGM_teleportDel"],
            function()
                genericCaller(GM_KEY, GM_teleportDelCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_listItemButton,
            Locale["ttGM_listItem"],
            function()
                genericCaller(GM_KEY, GM_listItemCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_lookupTaxiButton,
            Locale["ttGM_lookupTaxi"],
            function()
                genericCaller(GM_KEY, GM_lookupTaxiCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_lookupZoneButton,
            Locale["ttGM_lookupZone"],
            function()
                genericCaller(GM_KEY, GM_lookupZoneCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_goTaxiButton,
            Locale["ttGM_goTaxi"],
            function()
                genericCaller(GM_KEY, GM_goTaxiNodeCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_goTriggerButton,
            Locale["ttGM_goTrigger"],
            function()
                genericCaller(GM_KEY, GM_goTriggerCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_goXYButton,
            Locale["ttGM_goXY"],
            function()
                genericCaller(GM_KEY, GM_goXYCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_goXYZButton,
            Locale["ttGM_goXYZ"],
            function()
                genericCaller(GM_KEY, GM_goXYZCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_goZoneXYButton,
            Locale["ttGM_goZoneXY"],
            function()
                genericCaller(GM_KEY, GM_goZoneXYCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_setJailAllianceButton,
            Locale["ttGM_setJailAlliance"],
            function()
                GM_setJailCommand(GM_AllianceJailCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_setJailHordeButton,
            Locale["ttGM_setJailHorde"],
            function()
                GM_setJailCommand(GM_HordeJailCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_petCreateButton,
            Locale["ttGM_petCreate"],
            function()
                genericCaller(GM_KEY, GM_petCreateCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_petLearnButton,
            Locale["ttGM_petLearn"],
            function()
                genericCaller(GM_KEY, GM_petLearnCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_petUnLearnButton,
            Locale["ttGM_petUnLearn"],
            function()
                genericCaller(GM_KEY, GM_petUnLearnCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_petTalentsLearnButton,
            Locale["ttGM_petTalentsLearn"],
            function()
                genericCaller(GM_KEY, GM_petTalentsLearnCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_bankButton,
            Locale["ttGM_bank"],
            function()
                genericCaller(GM_KEY, GM_bankCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_bagButton,
            Locale["tt_bag"],
            function()
                genericBagCommand(GM_KEY)
            end
    )
    MangAdmin:PrepareScript(
            GM_screenButton,
            Locale["ttGM_screen"],
            function()
                screen()
            end
    )
    MangAdmin:PrepareScript(
            GM_dismountPlayerButton,
            Locale["ttGM_dismountPlayer"],
            function()
                genericCaller(GM_KEY, GM_dismountPlayerCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_instantKillModeCheckBox,
            Locale["ttGM_instantKillMode"],
            function()
                GM_instantKillModeCommand()
            end
    )
    MangAdmin:PrepareScript(
            GM_setSpeedSlider,
            Locale["ttGM_setSpeed"],
            {
                {
                    "OnMouseUp",
                    function()
                        GM_setSpeedOrScaleCommand(GM_setSpeedSlider, GM_playerSpeedCommand)
                    end
                },
                {
                    "OnValueChanged",
                    function()
                        GM_setSpeedSliderText:SetText(
                                Locale["labelGM_setSpeedDesc"] .. string.format("%.1f", GM_setSpeedSlider:GetValue())
                        )
                    end
                }
            }
    )
    MangAdmin:PrepareScript(
            GM_setScaleSlider,
            Locale["ttGM_setScale"],
            {
                {
                    "OnMouseUp",
                    function()
                        GM_setSpeedOrScaleCommand(GM_setScaleSlider, GM_playerScaleCommand)
                    end
                },
                {
                    "OnValueChanged",
                    function()
                        GM_setScaleSliderText:SetText(
                                Locale["labelGM_setScaleDesc"] .. string.format("%.1f", GM_setScaleSlider:GetValue())
                        )
                    end
                }
            }
    )
    MangAdmin:PrepareScript(
            GM_resetSpeedButton,
            Locale["ttGM_resetSpeed"],
            function()
                GM_resetSpeedOrScaleSlider(GM_setSpeedSlider, GM_setSpeedSliderText, GM_playerSpeedCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_resetScaleButton,
            Locale["ttGM_resetScale"],
            function()
                GM_resetSpeedOrScaleSlider(GM_setScaleSlider, GM_setScaleSliderText, GM_playerScaleCommand)
            end
    )
    MangAdmin:PrepareScript(
            GM_gridNavigatorAheadButton,
            Locale["ttGM_gridNavigatorAhead"],
            function()
                GridNavigate(nil, nil)
                MangAdmin.db.char.nextGridWay = "north"
            end
    )
    MangAdmin:PrepareScript(
            GM_gridNavigatorBackButton,
            Locale["ttGM_gridNavigatorBack"],
            function()
                GridNavigate(nil, nil)
                MangAdmin.db.char.nextGridWay = "south"
            end
    )
    MangAdmin:PrepareScript(
            GM_gridNavigatorRightButton,
            Locale["ttGM_gridNavigatorRight"],
            function()
                GridNavigate(nil, nil)
                MangAdmin.db.char.nextGridWay = "east"
            end
    )
    MangAdmin:PrepareScript(
            GM_gridNavigatorLeftButton,
            Locale["ttGM_gridNavigatorLeft"],
            function()
                GridNavigate(nil, nil)
                MangAdmin.db.char.nextGridWay = "west"
            end
    )
    MangAdmin:PrepareScript(
            GM_clearParameterBoxButton,
            Locale["tt_clearParameterBox"],
            function()
                genericClearParametersBox(GM_KEY)
            end
    )

    -- Speed Slider
    GM_setSpeedSlider:SetOrientation("HORIZONTAL")
    GM_setSpeedSlider:SetMinMaxValues(.5, 30)
    GM_setSpeedSlider:SetValueStep(0.5)
    GM_setSpeedSlider:SetValue(1)
    GM_setSpeedSliderText:SetText(Locale["labelGM_setSpeedDesc"] .. "1.0")
    -- Scale Slider
    GM_setScaleSlider:SetOrientation("HORIZONTAL")
    GM_setScaleSlider:SetMinMaxValues(0.1, 10)
    GM_setScaleSlider:SetValueStep(0.1)
    GM_setScaleSlider:SetValue(1)
    GM_setScaleSliderText:SetText(Locale["labelGM_setScaleDesc"] .. "1.0")

    --[[Char Tab]]
    InitModelFrame()
    MangAdmin:PrepareScript(
            ma_modelrotatelbutton,
            Locale["tt_RotateLeft"],
            function()
                ModelRotateLeft()
            end
    )
    MangAdmin:PrepareScript(
            ma_modelrotaterbutton,
            Locale["tt_RotateRight"],
            function()
                ModelRotateRight()
            end
    )
    MangAdmin:PrepareScript(
            CHAR_killButton,
            Locale["ttCHAR_kill"],
            function()
                genericCaller(CHAR_KEY, CHAR_killCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_reviveButton,
            Locale["ttCHAR_reviveplayer"],
            function()
                genericCaller(CHAR_KEY, CHAR_reviveCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_saveButton,
            Locale["ttCHAR_saveplayer"],
            function()
                genericCaller(CHAR_KEY, CHAR_saveCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_kickButton,
            Locale["ttCHAR_kick"],
            function()
                genericCaller(CHAR_KEY, CHAR_kickCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_cooldownButton,
            Locale["ttCHAR_cooldown"],
            function()
                genericCaller(CHAR_KEY, CHAR_cooldownCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_guidButton,
            Locale["ttCHAR_guid"],
            function()
                genericCaller(CHAR_KEY, CHAR_GUIDCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_pInfoButton,
            Locale["ttCHAR_pInfo"],
            function()
                genericCaller(CHAR_KEY, CHAR_playerInfoCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_distanceButton,
            Locale["ttCHAR_distance"],
            function()
                genericCaller(CHAR_KEY, CHAR_distanceCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_recallButton,
            Locale["ttCHAR_recall"],
            function()
                genericCaller(CHAR_KEY, CHAR_recallCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_demorphButton,
            Locale["ttCHAR_demorph"],
            function()
                genericCaller(CHAR_KEY, CHAR_morphResetCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_showMapsButton,
            Locale["tt_cheatExploreMapsOn"],
            function()
                genericCaller(GENERAL_KEY, cheatExploreMapsCommand, "1")
            end
    )
    MangAdmin:PrepareScript(
            CHAR_hideMapsButton,
            Locale["tt_cheatExploreMapsOff"],
            function()
                genericCaller(GENERAL_KEY, cheatExploreMapsCommand, "0")
            end
    )
    MangAdmin:PrepareScript(
            CHAR_gpsButton,
            Locale["ttCHAR_gps"],
            function()
                genericCaller(CHAR_KEY, CHAR_gpsCommand)
            end
    )
    MangAdmin:PrepareScript(
            ma_modelzoominbutton,
            Locale["tt_modelzoominbutton"],
            function()
                CharModelZoomIn()
            end
    )
    MangAdmin:PrepareScript(
            ma_modelzoomoutbutton,
            Locale["tt_modelzoomoutbutton"],
            function()
                CharModelZoomOut()
            end
    )
    MangAdmin:PrepareScript(
            CHAR_bindSightButton,
            Locale["ttCHAR_bindSight"],
            function()
                genericCaller(CHAR_KEY, CHAR_bindSightCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_unbindSightButton,
            Locale["ttCHAR_unbindSight"],
            function()
                genericCaller(CHAR_KEY, CHAR_unbindSightCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_renameButton,
            Locale["ttCHAR_rename"],
            function()
                genericCaller(CHAR_KEY, CHAR_renameCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_customizeButton,
            Locale["ttCHAR_customize"],
            function()
                genericCaller(CHAR_KEY, CHAR_customizeCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_changeRaceButton,
            Locale["ttCHAR_changeRace"],
            function()
                genericCaller(CHAR_KEY, CHAR_changeRaceCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_changeFactionButton,
            Locale["ttCHAR_changeFaction"],
            function()
                genericCaller(CHAR_KEY, CHAR_changeFactionCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_combatStopButton,
            Locale["ttCHAR_combatStop"],
            function()
                genericCaller(CHAR_KEY, CHAR_combatStopCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_maxSkillButton,
            Locale["ttCHAR_maxSkill"],
            function()
                genericCaller(CHAR_KEY, CHAR_maxSkillCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_freezeButton,
            Locale["ttCHAR_freeze"],
            function()
                genericCaller(CHAR_KEY, CHAR_freezeCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_unfreezeButton,
            Locale["ttCHAR_unfreeze"],
            function()
                genericCaller(CHAR_KEY, CHAR_unfreezeCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_unpossessButton,
            Locale["ttCHAR_unpossess"],
            function()
                genericCaller(CHAR_KEY, CHAR_unpossessCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_possessButton,
            Locale["ttCHAR_possess"],
            function()
                genericCaller(CHAR_KEY, CHAR_possessCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_repairItemsButton,
            Locale["ttCHAR_repairItems"],
            function()
                genericCaller(CHAR_KEY, CHAR_repairItemsCommand)
            end
    )

    MangAdmin:PrepareScript(
            CHAR_learnSpellButton,
            Locale["ttCHAR_learnSpell"],
            function()
                LearnAndUnlearnSpell(true, CHAR_genericCommands[GENERICS_parametersGet]())
            end
    )

    MangAdmin:PrepareScript(
            CHAR_unlearnSpellButton,
            Locale["ttCHAR_unlearnSpell"],
            function()
                LearnAndUnlearnSpell(false, CHAR_genericCommands[GENERICS_parametersGet]())
            end
    )

    MangAdmin:PrepareScript(
            CHAR_learnPresetButton,
            Locale["ttCHAR_learnPreset"],
            function()
                LearnAndUnlearnSpell(true, UIDropDownMenu_GetSelectedValue(CHAR_learnPresetDropdown))
            end
    )
    MangAdmin:PrepareScript(
            CHAR_modifyButton,
            Locale["ttCHAR_modify"],
            function()
                Modify(UIDropDownMenu_GetSelectedValue(CHAR_modifyDropdown), CHAR_modifyInputBox:GetText())
            end
    )
    MangAdmin:PrepareScript(
            CHAR_resetButton,
            Locale["ttCHAR_reset"],
            function()
                genericCaller(CHAR_KEY, CHAR_resetCommand, UIDropDownMenu_GetSelectedValue(CHAR_resetDropdown))
            end
    )
    LearnPresetDropDownInitialize()
    UIDropDownMenu_Initialize(CHAR_learnPresetDropdown, LearnPresetDropDownInitialize)
    UIDropDownMenu_SetWidth(CHAR_learnPresetDropdown, 100)
    UIDropDownMenu_SetButtonWidth(CHAR_learnPresetDropdown, 20)
    ModifyDropDownInitialize()
    UIDropDownMenu_Initialize(CHAR_modifyDropdown, ModifyDropDownInitialize)
    UIDropDownMenu_SetWidth(CHAR_modifyDropdown, 100)
    UIDropDownMenu_SetButtonWidth(CHAR_modifyDropdown, 20)
    ResetDropDownInitialize()
    UIDropDownMenu_Initialize(CHAR_resetDropdown, ResetDropDownInitialize)
    UIDropDownMenu_SetWidth(CHAR_resetDropdown, 100)
    UIDropDownMenu_SetButtonWidth(CHAR_resetDropdown, 20)

    MangAdmin:PrepareScript(
            CHAR_banButton,
            Locale["ttCHAR_ban"],
            function()
                genericCaller(CHAR_KEY, CHAR_banCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_appearButton,
            Locale["ttCHAR_appear"],
            function()
                genericCaller(CHAR_KEY, CHAR_appearCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_createGuildButton,
            Locale["ttCHAR_createGuild"],
            function()
                genericCaller(CHAR_KEY, CHAR_createGuildCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_banInfoButton,
            Locale["ttCHAR_banInfo"],
            function()
                genericCaller(CHAR_KEY, CHAR_banInfoCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_groupSummonButton,
            Locale["ttCHAR_groupSummon"],
            function()
                genericCaller(CHAR_KEY, CHAR_groupSummonCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_inviteGuildButton,
            Locale["ttCHAR_inviteGuild"],
            function()
                genericCaller(CHAR_KEY, CHAR_inviteGuildCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_banListButton,
            Locale["ttCHAR_banList"],
            function()
                genericCaller(CHAR_KEY, CHAR_banListCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_summonButton,
            Locale["ttCHAR_summon"],
            function()
                genericCaller(CHAR_KEY, CHAR_summonCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_rankGuildButton,
            Locale["ttCHAR_rankGuild"],
            function()
                genericCaller(CHAR_KEY, CHAR_rankGuildCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_teleportGroupButton,
            Locale["ttCHAR_teleportGroup"],
            function()
                genericCaller(CHAR_KEY, CHAR_teleportGroupCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_unbanButton,
            Locale["ttCHAR_unban"],
            function()
                genericCaller(CHAR_KEY, CHAR_unbanCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_deleteGuildButton,
            Locale["ttCHAR_deleteGuild"],
            function()
                genericCaller(CHAR_KEY, CHAR_deleteGuildCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_uninviteGuildButton,
            Locale["ttCHAR_uninviteGuild"],
            function()
                genericCaller(CHAR_KEY, CHAR_uninviteGuildCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_teleportNameButton,
            Locale["ttCHAR_teleportName"],
            function()
                genericCaller(CHAR_KEY, CHAR_teleportNameCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_muteButton,
            Locale["ttCHAR_mute"],
            function()
                genericCaller(CHAR_KEY, CHAR_muteCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_morphButton,
            Locale["ttCHAR_morph"],
            function()
                genericCaller(CHAR_KEY, CHAR_morphCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_auraButton,
            Locale["ttCHAR_aura"],
            function()
                genericCaller(CHAR_KEY, CHAR_auraCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_unauraButton,
            Locale["ttCHAR_unaura"],
            function()
                genericCaller(CHAR_KEY, CHAR_unauraCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_jailAllianceButton,
            Locale["ttCHAR_jailAlliance"],
            function()
                teleportToJail(CHAR_jailAllianceCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_jailHordeButton,
            Locale["ttCHAR_jailHorde"],
            function()
                teleportToJail(CHAR_jailHordeCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_unjailButton,
            Locale["ttCHAR_unjail"],
            function()
                genericCaller(CHAR_KEY, CHAR_unjailCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_unmuteButton,
            Locale["ttCHAR_unmute"],
            function()
                genericCaller(CHAR_KEY, CHAR_unmuteCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_questAddButton,
            Locale["ttCHAR_questAdd"],
            function()
                genericCaller(CHAR_KEY, CHAR_questAddCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_questCompleteButton,
            Locale["ttCHAR_questComplete"],
            function()
                genericCaller(CHAR_KEY, CHAR_questCompleteCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_questRemoveButton,
            Locale["ttCHAR_questRemove"],
            function()
                genericCaller(CHAR_KEY, CHAR_questRemoveCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_damageButton,
            Locale["ttCHAR_damage"],
            function()
                genericCaller(CHAR_KEY, CHAR_damageCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_hideAreaButton,
            Locale["ttCHAR_hideArea"],
            function()
                genericCaller(CHAR_KEY, CHAR_hideAreaCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_showAreaButton,
            Locale["ttCHAR_showArea"],
            function()
                genericCaller(CHAR_KEY, CHAR_showAreaCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_honorAddButton,
            Locale["ttCHAR_honorAdd"],
            function()
                genericCaller(CHAR_KEY, CHAR_honorAddCommand)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_honorUpdateButton,
            Locale["ttCHAR_honorUpdate"],
            function()
                genericCaller(CHAR_KEY, CHAR_honorUpdateCommand)
            end
    )

    MangAdmin:PrepareScript(
            CHAR_clearParameterBoxButton,
            Locale["tt_clearParameterBox"],
            function()
                genericClearParametersBox(CHAR_KEY)
            end
    )
    MangAdmin:PrepareScript(
            CHAR_bagButton,
            Locale["tt_bag"],
            function()
                genericBagCommand(CHAR_KEY)
            end
    )
    --[[NPC Tab]]
    InitModelFrameNPC()
    MangAdmin:PrepareScript(
            ma_npcmodelrotatelbutton,
            Locale["tt_NPCRotateLeft"],
            function()
                NpcModelRotateLeft()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcmodelrotaterbutton,
            Locale["tt_NPCRotateRight"],
            function()
                NpcModelRotateRight()
            end
    )
    MangAdmin:PrepareScript(
            ma_npckillbutton,
            Locale["tt_NPCKillButton"],
            function()
                NPCKillSomething()
            end
    )
    MangAdmin:PrepareScript(
            ma_respawnbutton,
            Locale["tt_npcrespawn"],
            function()
                Respawn()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcdistancebutton,
            Locale["tt_NPCDistanceButton"],
            function()
                NPCDistance()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcguidbutton,
            Locale["tt_NPCGUIDButton"],
            function()
                NPCShowGUID()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcinfobutton,
            Locale["tt_NPCInfoButton"],
            function()
                NPCInfo()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcdemorphbutton,
            Locale["tt_NPCDemorph"],
            function()
                NPCDemorph()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcmovebutton,
            Locale["tt_NPCMove"],
            function()
                NPCMove()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcdelbutton,
            Locale["tt_NPCDel"],
            function()
                NPCDel()
            end
    )
    MangAdmin:PrepareScript(
            ma_NPC_guidgetbutton,
            Locale["tt_getguid"],
            function()
                NPC_GUID_Get()
            end
    )
    MangAdmin:PrepareScript(
            ma_NPC_addbutton,
            Locale["tt_NPCAdd"],
            function()
                NPC_Add()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcgobutton,
            Locale["tt_NPCGo"],
            function()
                NPCGo()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcmorphbutton,
            Locale["tt_NPCMorph"],
            function()
                NPCMorph()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcsaybutton,
            Locale["tt_NPCSay"],
            function()
                NPCSay()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcyellbutton,
            Locale["tt_NPCYell"],
            function()
                NPCYell()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcaurabutton,
            Locale["tt_NPCAura"],
            function()
                NPCAura()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcunaurabutton,
            Locale["tt_NPCUnaura"],
            function()
                NPCUnaura()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcemotebutton,
            Locale["tt_PlayEmote"],
            function()
                NpcEmote(UIDropDownMenu_GetSelectedValue(ma_npcemotedropdown))
            end
    )
    MangAdmin:PrepareScript(
            ma_npcemotebutton_a,
            Locale["tt_PlayEmote"],
            function()
                NpcEmote(UIDropDownMenu_GetSelectedValue(ma_npcemotedropdown_a))
            end
    )
    MangAdmin:PrepareScript(
            ma_npcdisplayupbutton,
            Locale["tt_DisplayUp"],
            function()
                DisplayUP()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcdisplaydownbutton,
            Locale["tt_DisplayDown"],
            function()
                DisplayDown()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcID_UPbutton,
            Locale["tt_IDUp"],
            function()
                ID_UP()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcID_DOWNbutton,
            Locale["tt_IDDown"],
            function()
                ID_DOWN()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcmodelzoominbutton,
            Locale["tt_npcmodelzoominbutton"],
            function()
                NPCModelZoomIn()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcmodelzoomoutbutton,
            Locale["tt_npcmodelzoomoutbutton"],
            function()
                NPCModelZoomOut()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcbindsight,
            Locale["tt_npcbindsight"],
            function()
                NPCBindSight()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcunbindsight,
            Locale["tt_npcunbindsight"],
            function()
                NPCUnBindSight()
            end
    )
    MangAdmin:PrepareScript(
            ma_npccometomebutton,
            Locale["tt_npccometome"],
            function()
                NPCComeToMe()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcpossessbutton,
            Locale["tt_npcpossess"],
            function()
                NPCPossess()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcunpossessbutton,
            Locale["tt_npcunpossess"],
            function()
                NPCUnPossess()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcfreezebutton,
            Locale["tt_NPCFreezeButton"],
            function()
                NPCFreeze()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcfreezedelbutton,
            Locale["tt_NPCFreezeDelButton"],
            function()
                NPCFreezeDEL()
            end
    )
    MangAdmin:PrepareScript(
            ma_way_endaddbutton,
            Locale["tt_WayEndAdd"],
            function()
                WayEndAdd()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcunfreeze_addwaybutton,
            Locale["tt_NPCAddWay"],
            function()
                NPCAdd_Way()
            end
    )
    MangAdmin:PrepareScript(
            ma_way_modifyaddbutton,
            Locale["tt_WayMAdd"],
            function()
                WayModifyAdd()
            end
    )
    MangAdmin:PrepareScript(
            ma_way_modifydelbutton,
            Locale["tt_WayModifyDel"],
            function()
                WayModifyDel()
            end
    )
    MangAdmin:PrepareScript(
            ma_way_showonbutton,
            Locale["tt_WayShow1"],
            function()
                WayShowOn()
            end
    )
    MangAdmin:PrepareScript(
            ma_way_showoffbutton,
            Locale["tt_WayShow0"],
            function()
                WayShowOff()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcunfreeze_addway_showonbutton,
            Locale["tt_NPCAdd_WayShowOn"],
            function()
                NPCAdd_WayShowOn()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcunfreeze_waybutton,
            Locale["tt_NPCUnFreeze_WayButton"],
            function()
                NPCUnFreeze_Way()
            end
    )
    MangAdmin:PrepareScript(
            ma_npcunfreeze_randombutton,
            Locale["tt_NPCUnFreeze_RandomButton"],
            function()
                NPCUnFreeze_Random()
            end
    )
    MangAdmin:PrepareScript(
            ma_movestackbutton,
            Locale["tt_MoveStackButton"],
            function()
                ShowMove()
            end
    )

    --[[Gob Tab]]
    MangAdmin:PrepareScript(
            ma_objgobutton,
            Locale["tt_ObjGo"],
            function()
                OBJGo()
            end
    )
    MangAdmin:PrepareScript(
            ma_objaddbutton,
            Locale["tt_ObjAdd"],
            function()
                OBJAdd()
            end
    )
    MangAdmin:PrepareScript(
            ma_objmovebutton,
            Locale["tt_ObjMove"],
            function()
                OBJMove()
            end
    )
    MangAdmin:PrepareScript(
            ma_objturnbutton,
            Locale["tt_ObjTurn"],
            function()
                OBJTurn()
            end
    )
    MangAdmin:PrepareScript(
            ma_objdelbutton,
            Locale["tt_ObjDel"],
            function()
                OBJDel()
            end
    )
    MangAdmin:PrepareScript(
            ma_objnearbutton,
            Locale["tt_ObjNear"],
            function()
                OBJNear()
            end
    )
    MangAdmin:PrepareScript(
            ma_objtargetbutton,
            Locale["tt_ObjTarget"],
            function()
                OBJTarget()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobactivatebutton,
            Locale["tt_ObjActivate"],
            function()
                OBJActivate()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobaddtempbutton,
            Locale["tt_ObjAddTemp"],
            function()
                OBJAddTemp()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobinfobutton,
            Locale["tt_ObjInfo"],
            function()
                OBJInfo()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobsetphasebutton,
            Locale["tt_ObjSetPhase"],
            function()
                OBJSetPhase()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobshowmodel,
            "Shows the model",
            function()
                ShowGobModel()
            end
    )
    InitGobModelFrame()
    MangAdmin:PrepareScript(
            ma_gobmodelrotatelbutton,
            Locale["tt_RotateLeft"],
            function()
                GobModelRotateLeft()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobmodelrotaterbutton,
            Locale["tt_RotateRight"],
            function()
                GobModelRotateRight()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobmodelzoominbutton,
            Locale["tt_modelzoominbutton"],
            function()
                GobModelZoomIn()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobmodelzoomoutbutton,
            Locale["tt_modelzoomoutbutton"],
            function()
                GobModelZoomOut()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobmoveforwardbutton,
            "Move forward",
            function()
                DMFront()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobmovebackbutton,
            "Move back",
            function()
                DMBack()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobmoveleftbutton,
            "Move left",
            function()
                DMLeft()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobmoverightbutton,
            "Move right",
            function()
                DMRight()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobmoveupbutton,
            "Move up",
            function()
                DMUP()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobmovedownbutton,
            "Move down",
            function()
                DMDown()
            end
    )
    MangAdmin:PrepareScript(
            ma_gobspawnherebutton,
            "Spawn here",
            function()
                DMSS2()
            end
    )
    MangAdmin:PrepareScript(
            ma_spawnonmovecheck,
            "",
            function()
                CheckToggle("spawn")
            end
    )
    MangAdmin:PrepareScript(
            ma_moveonmovecheck,
            "",
            function()
                CheckToggle("move")
            end
    )

    --[[Tele Tab]]
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry1,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "EK_N"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry2,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "EK_S"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry3,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "K"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry4,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "Ou"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry5,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "N_A"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry6,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "N_H"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry7,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "BG"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry8,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "I_EK"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry9,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "I_K"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry10,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "I_O"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry11,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "I_N"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )
    MangAdmin:PrepareScript(
            ma_ContScrollBarEntry12,
            nil,
            function()
                MangAdmin.db.char.selectedCont = "OT"
                cont = MangAdmin.db.char.selectedCont
                TeleScrollUpdate()
            end
    )

    --[[Tickets Tab]]
    MangAdmin:PrepareScript(
            ma_tabbutton_ticket,
            Locale["tt_TicketButton"],
            function()
                ShowTicketTab()
            end
    )

    MangAdmin:PrepareScript(
            ma_resetticketsbutton,
            "Not working? Click REFRESH!",
            function()
                ResetTickets()
            end
    )
    MangAdmin:PrepareScript(
            ma_showticketsbutton,
            nil,
            function()
                RefreshTickets()
            end
    )
    MangAdmin:PrepareScript(
            ma_showonlineticketsbutton,
            nil,
            function()
                RefreshOnlineTickets()
            end
    )
    MangAdmin:PrepareScript(
            ma_deleteticketbutton,
            nil,
            function()
                Ticket("delete")
            end
    )
    MangAdmin:PrepareScript(
            ma_answerticketbutton,
            nil,
            function()
                Ticket("answer")
            end
    )
    MangAdmin:PrepareScript(
            ma_getcharticketbutton,
            nil,
            function()
                Ticket("getchar")
            end
    )
    MangAdmin:PrepareScript(
            ma_gocharticketbutton,
            nil,
            function()
                Ticket("gochar")
            end
    )
    MangAdmin:PrepareScript(
            ma_whisperticketbutton,
            nil,
            function()
                Ticket("whisper")
            end
    )
    MangAdmin:PrepareScript(
            ma_goticketbutton,
            nil,
            function()
                Ticket("goticket")
            end
    )
    MangAdmin:PrepareScript(
            ma_showbutton,
            nil,
            function()
                ShowTickets()
            end
    )

    --[[Misc Tab]]
    MangAdmin:PrepareScript(
            ma_bgcolorshowbutton,
            nil,
            function()
                ShowColorPicker("bg")
            end
    )
    MangAdmin:PrepareScript(
            ma_frmcolorshowbutton,
            nil,
            function()
                ShowColorPicker("frm")
            end
    )
    MangAdmin:PrepareScript(
            ma_btncolorshowbutton,
            nil,
            function()
                ShowColorPicker("btn")
            end
    )
    MangAdmin:PrepareScript(
            ma_linkifiercolorbutton,
            nil,
            function()
                ShowColorPicker("linkifier")
            end
    )
    MangAdmin:PrepareScript(
            ma_applystylebutton,
            nil,
            function()
                ApplyStyleChanges()
            end
    )
    --MangAdmin:PrepareScript(ma_windowismovable                 , nil                                     , function() AllowMovableWindow() end)
    MangAdmin:PrepareScript(
            ma_changeweatherbutton,
            nil,
            function()
                ChangeWeather(UIDropDownMenu_GetSelectedValue(ma_weatherdropdown))
            end
    )

    --[[Server Tab]]
    MangAdmin:PrepareScript(
            ma_announcebutton,
            Locale["tt_AnnounceButton"],
            function()
                Announce(ma_announceeditbox:GetText())
            end
    )
    MangAdmin:PrepareScript(
            ma_resetannouncebutton,
            nil,
            function()
                ma_announceeditbox:SetText("")
            end
    )
    MangAdmin:PrepareScript(
            ma_shutdownbutton,
            Locale["tt_ShutdownButton"],
            function()
                Shutdown(ma_shutdowneditbox:GetText())
            end
    )
    MangAdmin:PrepareScript(
            ma_loadtablebutton,
            nil,
            function()
                ReloadTable(UIDropDownMenu_GetSelectedValue(ma_reloadtabledropdown))
            end
    )
    MangAdmin:PrepareScript(
            ma_loadscriptsbutton,
            nil,
            function()
                ReloadScripts()
            end
    )

    --[[Log Tab]]
    --[[Who Tab]]
    MangAdmin:PrepareScript(
            ma_resetwhobutton,
            nil,
            function()
                ResetWho()
            end
    )
    MangAdmin:PrepareScript(
            ma_deletewhobutton,
            nil,
            function()
                Who("delete")
            end
    )
    MangAdmin:PrepareScript(
            ma_answerwhobutton,
            nil,
            function()
                Who("answer")
            end
    )
    MangAdmin:PrepareScript(
            ma_summonwhobutton,
            nil,
            function()
                Who("getchar")
            end
    )
    MangAdmin:PrepareScript(
            ma_gocharwhobutton,
            nil,
            function()
                Who("gochar")
            end
    )
    MangAdmin:PrepareScript(
            ma_whisperwhobutton,
            nil,
            function()
                Who("whisper")
            end
    )
    MangAdmin:PrepareScript(
            ma_who_customizebutton,
            Locale["tt_who_customize"],
            function()
                Who("customize")
            end
    )
    MangAdmin:PrepareScript(
            ma_who_chardeletebutton,
            Locale["tt_who_chardelete"],
            function()
                Who("chardelete")
            end
    )
    MangAdmin:PrepareScript(
            ma_who_charrenamebutton,
            Locale["tt_who_charrename"],
            function()
                Who("charrename")
            end
    )
    MangAdmin:PrepareScript(
            ma_who_1daybanbutton,
            Locale["tt_who_1daybanbutton"],
            function()
                Who("1dayban")
            end
    )
    MangAdmin:PrepareScript(
            ma_who_permbanbutton,
            Locale["tt_who_permbanbutton"],
            function()
                Who("permban")
            end
    )
    MangAdmin:PrepareScript(
            ma_who_jailabutton,
            Locale["tt_who_jailabutton"],
            function()
                Who("jaila")
            end
    )
    MangAdmin:PrepareScript(
            ma_who_jailhbutton,
            Locale["tt_who_jailhbutton"],
            function()
                Who("jailh")
            end
    )
    MangAdmin:PrepareScript(
            ma_who_unjailbutton,
            Locale["tt_who_unjailbutton"],
            function()
                Who("unjail")
            end
    )
end
