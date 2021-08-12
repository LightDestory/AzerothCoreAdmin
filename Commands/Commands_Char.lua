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
-- Generic Command Template
--[[
  [COMMAND_NAME_KEY] = {
    [GENERICS_isValueNeeded] = false|true,
    [GENERICS_isParametersNeeded] = false|true,
    [GENERICS_isTargetCheckNeeded] = false|true,
    [GENERICS_canTargetBeACreature] = false|true,
    [GENERICS_command] = "command",
    [GENERICS_message] = "messageID"
  }
]]
CHAR_genericCommands = {
    [GENERICS_parametersGet] = function()
        return CHAR_parameterInput:GetText()
    end,
    [CHAR_reviveCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".revive",
        [GENERICS_message] = "logCHAR_revive"
    },
    [CHAR_saveCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".save",
        [GENERICS_message] = "logCHAR_save"
    },
    [CHAR_kickCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".kick",
        [GENERICS_message] = "logCHAR_kick"
    },
    [CHAR_cooldownCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".cooldown",
        [GENERICS_message] = "logCHAR_cooldown"
    },
    [CHAR_GUIDCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_command] = ".guid",
        [GENERICS_message] = "logCHAR_guid"
    },
    [CHAR_playerInfoCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".pinfo",
        [GENERICS_message] = "logCHAR_pInfo"
    },
    [CHAR_distanceCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_command] = ".distance",
        [GENERICS_message] = "logCHAR_distance"
    },
    [CHAR_killCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_command] = ".die",
        [GENERICS_message] = "logCHAR_kill"
    },
    [CHAR_recallCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".recall",
        [GENERICS_message] = "logCHAR_recall"
    },
    [CHAR_morphCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".morph target ",
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_message] = "logCHAR_morph"
    },
    [CHAR_morphResetCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".morph reset",
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_message] = "logCHAR_demorph"
    },
    [CHAR_gpsCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".gps",
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_message] = "logCHAR_gps"
    },
    [CHAR_bindSightCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".bindsight",
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_message] = "logCHAR_bindSight"
    },
    [CHAR_unbindSightCommand] = {
        [GENERICS_command] = ".unbindsight",
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_message] = "logCHAR_unbindSight"
    },
    [CHAR_renameCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".character rename",
        [GENERICS_message] = "logCHAR_rename"
    },
    [CHAR_customizeCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".character customize",
        [GENERICS_message] = "logCHAR_customize"
    },
    [CHAR_changeRaceCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".character changerace",
        [GENERICS_message] = "logCHAR_changeRace"
    },
    [CHAR_changeFactionCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".character changefaction",
        [GENERICS_message] = "logCHAR_changeFaction"
    },
    [CHAR_combatStopCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".combatstop",
        [GENERICS_message] = "logCHAR_combatStop"
    },
    [CHAR_maxSkillCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".maxskill",
        [GENERICS_message] = "logCHAR_maxSkill"
    },
    [CHAR_freezeCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".freeze",
        [GENERICS_message] = "logCHAR_freeze"
    },
    [CHAR_unfreezeCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".unfreeze",
        [GENERICS_message] = "logCHAR_unfreeze"
    },
    [CHAR_possessCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".possess",
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_message] = "logCHAR_possess"
    },
    [CHAR_unpossessCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_command] = ".unpossess",
        [GENERICS_message] = "logCHAR_unpossess"
    },
    [CHAR_repairItemsCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".repairitems",
        [GENERICS_message] = "logCHAR_repairItems"
    },
    [CHAR_banCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".ban ",
        [GENERICS_message] = "logCHAR_ban"
    },
    [CHAR_unbanCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".unban ",
        [GENERICS_message] = "logCHAR_unban"
    },
    [CHAR_banInfoCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".baninfo ",
        [GENERICS_message] = "logCHAR_banInfo"
    },
    [CHAR_banListCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".banlist ",
        [GENERICS_message] = "logCHAR_banList"
    },
    [CHAR_appearCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".appear ",
        [GENERICS_message] = "logCHAR_appear"
    },
    [CHAR_summonCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".summon ",
        [GENERICS_message] = "logCHAR_summon"
    },
    [CHAR_groupSummonCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".groupsummon ",
        [GENERICS_message] = "logCHAR_groupSummon"
    },
    [CHAR_teleportNameCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".teleport name ",
        [GENERICS_message] = "logCHAR_teleportName"
    },
    [CHAR_teleportGroupCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".teleport group ",
        [GENERICS_message] = "logCHAR_teleportGroup"
    },
    [CHAR_createGuildCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".guild create ",
        [GENERICS_message] = "logCHAR_createGuild"
    },
    [CHAR_deleteGuildCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".guild delete ",
        [GENERICS_message] = "logCHAR_deleteGuild"
    },
    [CHAR_inviteGuildCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".guild invite ",
        [GENERICS_message] = "logCHAR_inviteGuild"
    },
    [CHAR_uninviteGuildCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".guild uninvite ",
        [GENERICS_message] = "logCHAR_uninviteGuild"
    },
    [CHAR_rankGuildCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".guild rank ",
        [GENERICS_message] = "logCHAR_rankGuild"
    },
    [CHAR_muteCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".mute ",
        [GENERICS_message] = "logCHAR_mute"
    },
    [CHAR_unmuteCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".unmute ",
        [GENERICS_message] = "logCHAR_unmute"
    },
    [CHAR_auraCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".aura ",
        [GENERICS_message] = "logCHAR_aura"
    },
    [CHAR_unauraCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".unaura ",
        [GENERICS_message] = "logCHAR_unaura"
    },
    [CHAR_jailAllianceCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".teleport name _C_ ma_AllianceJail",
        [GENERICS_message] = "logCHAR_jail"
    },
    [CHAR_jailHordeCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".teleport name _C_ ma_HordeJail",
        [GENERICS_message] = "logCHAR_jail"
    },
    [CHAR_unjailCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_command] = ".recall ",
        [GENERICS_message] = "logCHAR_unjail"
    },
    [CHAR_questAddCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".quest add ",
        [GENERICS_message] = "logCHAR_questAdd"
    },
    [CHAR_questRemoveCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".quest remove ",
        [GENERICS_message] = "logCHAR_questRemove"
    },
    [CHAR_questCompleteCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".quest complete ",
        [GENERICS_message] = "logCHAR_questComplete"
    },
    [CHAR_damageCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_canTargetBeACreature] = true,
        [GENERICS_command] = ".damage ",
        [GENERICS_message] = "logCHAR_damage"
    },
    [CHAR_showAreaCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".showarea ",
        [GENERICS_message] = "logCHAR_showArea"
    },
    [CHAR_hideAreaCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".hidearea ",
        [GENERICS_message] = "logCHAR_hideArea"
    },
    [CHAR_honorAddCommand] = {
        [GENERICS_isParametersNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".honor add ",
        [GENERICS_message] = "logCHAR_honorAdd"
    },
    [CHAR_honorUpdateCommand] = {
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".honor update ",
        [GENERICS_message] = "logCHAR_honorUpdate"
    },
    [CHAR_resetCommand] = {
        [GENERICS_isValueNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".reset ",
        [GENERICS_message] = "logCHAR_reset"
    },
}
-- Delete
--

function InitModelFrame()
    ma_modelframe:SetScript("OnUpdate", function()
        MangAdminModelOnUpdate(arg1)
    end)
    ma_modelframe.rotation = 0.61;
    ma_modelframe:SetRotation(ma_modelframe.rotation)
    ma_modelframe:SetUnit("player")
end

function ModelRotateLeft()
    ma_modelframe.rotation = ma_modelframe.rotation - 0.03
    ma_modelframe:SetRotation(ma_modelframe.rotation)
    PlaySound("igInventoryRotateCharacter")
end

function ModelRotateRight()
    ma_modelframe.rotation = ma_modelframe.rotation + 0.03
    ma_modelframe:SetRotation(ma_modelframe.rotation)
    PlaySound("igInventoryRotateCharacter")
end

function CharModelZoomIn()
    ma_modelframe:SetCamera(0)
    --ma_modelframe:SetModelScale(ma_modelframe:GetModelScale() + .1)
    --ma_modelframe:SetPosition(1,ma_modelframe:GetModelScale()*3,0)
    --ma_modelframe:RefreshUnit()
end

function CharModelZoomOut()
    ma_modelframe:SetCamera(1)
    ma_modelframe:RefreshUnit()
    -- ma_modelframe:SetCamera(2)
    --ma_modelframe:SetModelScale(ma_modelframe:GetModelScale() * .5)
    --ma_modelframe:SetPosition(0,0,0)
    --ma_modelframe:RefreshUnit()
end

function MangAdminModelOnUpdate(elapsedTime)
    if (ma_modelrotatelbutton:GetButtonState() == "PUSHED") then
        this.rotation = this.rotation + (elapsedTime * 2 * PI * ROTATIONS_PER_SECOND)
        if (this.rotation < 0) then
            this.rotation = this.rotation + (2 * PI)
        end
        this:SetRotation(this.rotation);
    end
    if (ma_modelrotaterbutton:GetButtonState() == "PUSHED") then
        this.rotation = this.rotation - (elapsedTime * 2 * PI * ROTATIONS_PER_SECOND)
        if (this.rotation > (2 * PI)) then
            this.rotation = this.rotation - (2 * PI)
        end
        this:SetRotation(this.rotation);
    end
end

function ModelChanged()
    if not MangAdmin:Selection("none") then
        ma_modelframe:SetUnit("target")
    else
        ma_modelframe:SetUnit("player")
    end
    ma_modelframe:RefreshUnit()
end

function teleportToJail(jailCommand)
    local command = CHAR_genericCommands[jailCommand]
    local character = CHAR_genericCommands[GENERICS_parametersGet]()
    if (not character or character == '') then
        MangAdmin:Print(Locale["paramError"])
        return
    end
    MangAdmin:ChatMsg(string.gsub(command[GENERICS_command], "_C_", characterer))
    MangAdmin:LogAction(genericLogGenerator(command[GENERICS_message], { ['value'] = character }))
end

function LearnAndUnlearnSpell(isLearn, value)
    if (not value or value == '') then
        MangAdmin:Print(Locale["paramError"])
        return
    end
    if commandTargetCheck() then
        local command = (isLearn == true and ".learn" or ".unlearn")
        local log = (isLearn == true and "Learned" or "Unlearned")
        local player = UnitName("target") or UnitName("player")
        if value == "all_crafts" then
            MangAdmin:ChatMsg(command .. " all crafts")
            MangAdmin:LogAction(log .. " all professions and recipes to " .. player .. ".")
        elseif value == "all_gm" then
            MangAdmin:ChatMsg(command .. " all gm")
            MangAdmin:LogAction(log .. " all default spells for Game Masters to " .. player .. ".")
        elseif value == "all_lang" then
            MangAdmin:ChatMsg(command .. " all lang")
            MangAdmin:LogAction(log .. " all languages to " .. player .. ".")
        elseif value == "all_default" then
            MangAdmin:ChatMsg(command .. " all default")
            MangAdmin:LogAction(log .. " all defaults to " .. player .. ".")
        elseif value == "all_myclass" then
            MangAdmin:ChatMsg(command .. " all my class")
            MangAdmin:LogAction(log .. " all spells available to the "  .. "-class to " .. player .. ".")
        else
            MangAdmin:ChatMsg(command .. " " .. value)
            MangAdmin:LogAction(log .. " spell " .. value .. " to " .. player .. ".")
        end
    else
        MangAdmin:Print(Locale["selectionError"])
    end
end

function Modify(case, value)
    if (not value or value == '') then
        MangAdmin:Print(Locale["paramError"])
        return
    end
    if commandTargetCheck() then
        local player = UnitName("target") or UnitName("player")
        if case == "money" then
            MangAdmin:ChatMsg(".modify money " .. value)
            MangAdmin:LogAction("Give player " .. player .. " " .. value .. " copper).")
        elseif case == "levelup" then
            MangAdmin:ChatMsg(".levelup " .. value)
            MangAdmin:LogAction("Leveled up player " .. player .. " by " .. value .. " levels.")
        elseif case == "leveldown" then
            MangAdmin:ChatMsg(".levelup " .. value * (-1))
            MangAdmin:LogAction("Leveled down player " .. player .. " by " .. value .. " levels.")
        elseif case == "energy" then
            MangAdmin:ChatMsg(".modify energy " .. value)
            MangAdmin:LogAction("Modified energy for " .. player .. " to " .. value .. " energy.")
        elseif case == "rage" then
            MangAdmin:ChatMsg(".modify rage " .. value)
            MangAdmin:LogAction("Modified rage for " .. player .. " to " .. value .. " rage.")
        elseif case == "health" then
            MangAdmin:ChatMsg(".modify hp " .. value)
            MangAdmin:LogAction("Modified hp for " .. player .. " to " .. value .. " healthpoints")
        elseif case == "mana" then
            MangAdmin:ChatMsg(".modify mana " .. value)
            MangAdmin:LogAction("Modified mana for " .. player .. " to " .. value .. " mana")
        elseif case == "aspeed" then
            MangAdmin:ChatMsg(".modify speed all " .. value)
            MangAdmin:LogAction("Modified AllSpeeds for " .. player .. " to " .. value .. " mana")
        elseif case == "arena" then
            MangAdmin:ChatMsg(".modify arenapoints " .. value)
            MangAdmin:LogAction("Modified Arena Points for " .. player .. " to " .. value .. " mana")
        elseif case == "bwalk" then
            MangAdmin:ChatMsg(".modify speed backwalk " .. value)
            MangAdmin:LogAction("Modified BackWalk for " .. player .. " to " .. value .. " mana")
        elseif case == "drunk" then
            MangAdmin:ChatMsg(".modify drunk " .. value)
            MangAdmin:LogAction("Modified Drunk for " .. player .. " to " .. value .. " mana")
        elseif case == "fly" then
            MangAdmin:ChatMsg(".modify speed fly " .. value)
            MangAdmin:LogAction("Modified FlySpeed for " .. player .. " to " .. value .. " mana")
        elseif case == "gender" then
            MangAdmin:ChatMsg(".modify gender " .. value)
            MangAdmin:LogAction("Modified Gender for " .. player .. " to " .. value .. " mana")
        elseif case == "honor" then
            MangAdmin:ChatMsg(".modify honor " .. value)
            MangAdmin:LogAction("Modified Honor for " .. player .. " to " .. value .. " mana")
        elseif case == "mount" then
            MangAdmin:ChatMsg(".modify mount " .. value)
            MangAdmin:LogAction("Modified MountSpeed for " .. player .. " to " .. value .. " mana")
        elseif case == "phase" then
            MangAdmin:ChatMsg(".modify phase " .. value)
            MangAdmin:LogAction("Modified Phase for " .. player .. " to " .. value .. " mana")
        elseif case == "runicpower" then
            MangAdmin:ChatMsg(".modify runicpower " .. value)
            MangAdmin:LogAction("Modified RunicPower for " .. player .. " to " .. value .. " mana")
        elseif case == "standstate" then
            MangAdmin:ChatMsg(".modify standstate " .. value)
            MangAdmin:LogAction("Modified StandState for " .. player .. " to " .. value .. " mana")
        elseif case == "swim" then
            MangAdmin:ChatMsg(".modify speed swim " .. value)
            MangAdmin:LogAction("Modified SwimSpeed for " .. player .. " to " .. value .. " mana")
        elseif case == "tp" then
            MangAdmin:ChatMsg(".modify talentpoints " .. value)
            MangAdmin:LogAction("Modified TalentPoints for " .. player .. " to " .. value .. " mana")
        end
    else
        MangAdmin:Print(Locale["selectionError"])
    end
end

-- LEARN Spell Preset
function LearnPresetDropDownInitialize()
    local level = 1
    local info = UIDropDownMenu_CreateInfo()
    local buttons = {
        { Locale["labelCHAR_languageClass"], "all_lang" },
        { Locale["labelCHAR_defaultClass"], "all_default" },
        { Locale["labelCHAR_myClass"], "all_myclass" },
        { Locale["labelCHAR_craftClass"], "all_crafts" },
        { Locale["labelCHAR_GMClass"], "all_gm" },
        { Locale["labelCHAR_languageCommon"], "668" },
        { Locale["labelCHAR_languageOrcish"], "669" },
        { Locale["labelCHAR_languageTaurahe"], "670" },
        { Locale["labelCHAR_languageDarnassian"], "671" },
        { Locale["labelCHAR_languageDwarven"], "672" },
        { Locale["labelCHAR_languageThalassian"], "813" },
        { Locale["labelCHAR_languageDemon"], "815" },
        { Locale["labelCHAR_languageDraconic"], "814" },
        { Locale["labelCHAR_languageTitan"], "816" },
        { Locale["labelCHAR_languageOld"], "817" },
        { Locale["labelCHAR_languageGnomish"], "7340" },
        { Locale["labelCHAR_languageTroll"], "7341" },
        { Locale["labelCHAR_languageGutterspeak"], "17737" },
        { Locale["labelCHAR_languageDraenei"], "29932" }
    }
    for k, v in pairs(buttons) do
        info.text = v[1]
        info.value = v[2]
        info.func = function()
            UIDropDownMenu_SetSelectedValue(CHAR_learnPresetDropdown, this.value)
        end
        info.checked = nil
        info.icon = nil
        info.keepShownOnClick = nil
        UIDropDownMenu_AddButton(info, level)
    end
    UIDropDownMenu_SetSelectedValue(CHAR_learnPresetDropdown, "all_lang")
end

-- MODIFY
function ModifyDropDownInitialize()
    local level = 1
    local info = UIDropDownMenu_CreateInfo()
    local buttons = {
        { Locale["labelCHAR_modifyAllSpeedsOption"], "aspeed" },
        { Locale["labelCHAR_modifyArenaOption"], "arena" },
        { Locale["labelCHAR_modifyBackWalkOption"], "bwalk" },
        { Locale["labelCHAR_modifyDrunkOption"], "drunk" },
        { Locale["labelCHAR_modifyEnergyOption"], "energy" },
        { Locale["labelCHAR_modifyFlySpeedOption"], "fly" },
        { Locale["labelCHAR_modifyGenderOption"], "gender" },
        { Locale["labelCHAR_modifyHealthPointsOption"], "health" },
        { Locale["labelCHAR_modifyHonorOption"], "honor" },
        { Locale["labelCHAR_modifyLevelUPOption"], "levelup" },
        { Locale["labelCHAR_modifyLevelDownOption"], "leveldown" },
        { Locale["labelCHAR_modifyManaOption"], "mana" },
        { Locale["labelCHAR_modifyMoneyOption"], "money" },
        { Locale["labelCHAR_modifyMountSpeedOption"], "mount" },
        { Locale["labelCHAR_modifyPhaseOption"], "phase" },
        { Locale["labelCHAR_modifyRageOption"], "rage" },
        { Locale["labelCHAR_modifyRunicPowerOption"], "runicpower" },
        { Locale["labelCHAR_modifyStandSateOption"], "standstate" },
        { Locale["labelCHAR_modifySwimSpeedOption"], "swim" },
        { Locale["labelCHAR_resetTalentsOption"], "tp" }
    }
    for k, v in pairs(buttons) do
        info.text = v[1]
        info.value = v[2]
        info.func = function()
            UIDropDownMenu_SetSelectedValue(CHAR_modifyDropdown, this.value)
        end
        info.checked = nil
        info.icon = nil
        info.keepShownOnClick = nil
        UIDropDownMenu_AddButton(info, level)
    end
    UIDropDownMenu_SetSelectedValue(CHAR_modifyDropdown, "levelup")
end

-- RESET
function ResetDropDownInitialize()
    local level = 1
    local info = UIDropDownMenu_CreateInfo()
    local buttons = {
        { Locale["labelCHAR_resetHonorOption"], "honor" },
        { Locale["labelCHAR_resetLevelOption"], "level" },
        { Locale["labelCHAR_resetSpellsOption"], "spells" },
        { Locale["labelCHAR_resetStatsOption"], "stats" },
        { Locale["labelCHAR_resetTalentsOption"], "talents" }
    }
    for k, v in pairs(buttons) do
        info.text = v[1]
        info.value = v[2]
        info.func = function()
            UIDropDownMenu_SetSelectedValue(CHAR_resetDropdown, this.value)
        end
        info.checked = nil
        info.icon = nil
        info.keepShownOnClick = nil
        UIDropDownMenu_AddButton(info, level)
    end
    UIDropDownMenu_SetSelectedValue(CHAR_resetDropdown, "honor")
end
