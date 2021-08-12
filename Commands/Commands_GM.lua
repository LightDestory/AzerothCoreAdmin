-------------------------------------------------------------------------------------------------------------
--
-- MangAdmin Version 1.0
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
-- Official Forums: http://www.manground.org/forum/
-- GoogleCode Website: http://code.google.com/p/mangadmin/
-- Subversion Repository: http://mangadmin.googlecode.com/svn/
--
-------------------------------------------------------------------------------------------------------------
-- Generic Command Template
--[[
  [COMMAND_NAME_KEY] = {
    [GENERICS_isValueNeeded] = false|true,
    [GENERICS_isParametersNeeded] = false|true,
    [GENERICS_isTargetCheckNeeded] = false|true,
    [GENERICS_command] = "command",
    [GENERICS_message] = "messageID"
  }
]]
GM_genericCommands = {
  [GENERICS_parametersGet] = function()
    return GM_parameterInput:GetText()
  end,
  [GM_displayAccountGMLevelCommand] = {
    [GENERICS_command] = ".account",
    [GENERICS_message] = "logGM_displayAccountGMLevel"
  },
  [GM_flyModeCommand] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".gm fly ",
    [GENERICS_message] = "logGM_flyMode"
  },
  [GM_godModeCommand] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".cheat god ",
    [GENERICS_message] = "logGM_godMode"
  },
  [GM_acceptWhispersCommand] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".whispers ",
    [GENERICS_message] = "logGM_acceptWhispers"
  },
  [GM_visibilityCommand] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".gm visible ",
    [GENERICS_message] = "logGM_visibility"
  },
  [GM_cheatTaxiCommand] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_isTargetCheckNeeded] = true,
    [GENERICS_command] = ".cheat taxi ",
    [GENERICS_message] = "logGM_cheatTaxi"
  },
  [GM_cheatWaterWalkCommand] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_isTargetCheckNeeded] = true,
    [GENERICS_command] = ".cheat waterwalk ",
    [GENERICS_message] = "logGM_cheatWaterWalk"
  },
  [GM_cheatNoCastTimeCommand] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".cheat casttime ",
    [GENERICS_message] = "logGM_cheatNoCastTime"
  },
  [GM_cheatNoCooldownCommand] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".cheat cooldown ",
    [GENERICS_message] = "logGM_cheatNoCooldown"
  },
  [GM_accountIPLockCommand] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".account lock ip ",
    [GENERICS_message] = "logGM_accountIPLock"
  },
  [GM_GMListCommand] = {
    [GENERICS_command] = ".gm list",
    [GENERICS_message] = "logGM_GMList"
  },
  [GM_GMInGameCommand] = {
    [GENERICS_command] = ".gm ingame",
    [GENERICS_message] = "logGM_GMInGame"
  },
  [GM_GMNotifyCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".gmnotify ",
    [GENERICS_message] = "logGM_GMNotify"
  },
  [GM_GMMessageCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".gmnameannounce ",
    [GENERICS_message] = "logGM_GMMessage"
  },
  [GM_castCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast ",
    [GENERICS_message] = "logGM_cast"
  },
  [GM_castBackCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast back ",
    [GENERICS_message] = "logGM_castBack"
  },
  [GM_castDistCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast dist ",
    [GENERICS_message] = "logGM_castDist"
  },
  [GM_castSelfCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast self ",
    [GENERICS_message] = "logGM_castSelf"
  },
  [GM_castTargetCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast target ",
    [GENERICS_message] = "logGM_castTarget"
  },
  [GM_teleportToCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_isTargetCheckNeeded] = true,
    [GENERICS_command] = ".teleport ",
    [GENERICS_message] = "logGM_teleportTo"
  },
  [GM_teleportAddCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".teleport add ",
    [GENERICS_message] = "logGM_teleportAdd"
  },
  [GM_teleportDelCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".teleport del ",
    [GENERICS_message] = "logGM_teleportDel"
  },
  [GM_listItemCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".list item ",
    [GENERICS_message] = "logGM_listItem"
  },
  [GM_lookupTaxiCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".lookup taxi  ",
    [GENERICS_message] = "logGM_lookupTaxi"
  },
  [GM_lookupZoneCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".lookup area ",
    [GENERICS_message] = "logGM_lookupZone"
  },
  [GM_goTaxiNodeCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go taxinode ",
    [GENERICS_message] = "logGM_goTaxi"
  },
  [GM_goTriggerCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go trigger ",
    [GENERICS_message] = "logGM_goTrigger"
  },
  [GM_goXYCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go xy ",
    [GENERICS_message] = "logGM_goXY"
  },
  [GM_goXYZCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go xyz ",
    [GENERICS_message] = "logGM_goXYZ"
  },
  [GM_goZoneXYCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go zonexy ",
    [GENERICS_message] = "logGM_goZoneXY"
  },
  [GM_petCreateCommand] = {
    [GENERICS_command] = ".pet create",
    [GENERICS_message] = "logGM_petCreate"
  },
  [GM_petLearnCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".pet learn ",
    [GENERICS_message] = "logGM_petLearn"
  },
  [GM_petUnLearnCommand] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".pet unlearn ",
    [GENERICS_message] = "logGM_petUnLearn"
  },
  [GM_petTalentsLearnCommand] = {
    [GENERICS_command] = ".learn all my pettalents",
    [GENERICS_message] = "logGM_petTalentsLearn"
  },
  [GM_bankCommand] = {
    [GENERICS_command] = ".character check bank",
    [GENERICS_message] = "logGM_bank"
  },
  [GM_dismountPlayerCommand] = {
    [GENERICS_command] = ".dismount",
    [GENERICS_message] = "logGM_dismountPlayer"
  },
  [GM_playerSpeedCommand] = {
    [GENERICS_command] = ".modify speed",
    [GENERICS_message] = "logGM_setSpeed"
  },
  [GM_playerScaleCommand] = {
    [GENERICS_command] = ".modify scale",
    [GENERICS_message] = "logGM_setScale"
  },
  [GM_AllianceJailCommand] = {
    [GENERICS_command] = "ma_AllianceJail",
    [GENERICS_message] = "logGM_setJailAlliance"
  },
  [GM_HordeJailCommand] = {
    [GENERICS_command] = "ma_HordeJail",
    [GENERICS_message] = "logGM_setJailHorde"
  }
}

function GM_GMModeCommand(value)
  MangAdmin:ChatMsg(".gm " .. value)
  MangAdmin:ChatMsg(".gm chat " .. value)
  MangAdmin:LogAction(genericLogGenerator("logGM_GMMode", {["value"] = value}))
end

function GM_createAccountCommand()
  local input = GM_genericCommands[GENERICS_parametersGet]()
  local params = {}
  local fail = false
  for w in input:gmatch("%w+") do
    table.insert(params, w)
  end
  if (not (table.getn(params) == 2)) then
    print(Locale["invalidParams2"])
    return
  end
  if (string.len(params[1]) > 20) then
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["logGM_accountInvalidUsername"] .. "|r")
    fail = true
  end
  if (string.len(params[2]) > 16) then
    print("|cffFF0000" .. params[2] .. "|r" .. Locale["logGM_createAccountInvalidPassword"] .. "|r")
    fail = true
  end
  if (fail) then
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account create " .. params[1] .. " " .. params[2])
  MangAdmin:LogAction(genericLogGenerator("logGM_createAccountCompleted", {["value"] = input}))
  print(Locale["operationCompleted"])
end

function GM_deleteAccountCommand()
  local input = GM_genericCommands[GENERICS_parametersGet]()
  local params = {}
  for w in input:gmatch("%w+") do
    table.insert(params, w)
  end
  if (not (table.getn(params) == 1)) then
    print(Locale["invalidParams1"])
    return
  end
  if (string.len(params[1]) > 20) then
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["logGM_accountInvalidUsername"] .. "|r")
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account delete " .. params[1])
  MangAdmin:LogAction(genericLogGenerator("logGM_deleteAccountCompleted", {["value"] = input}))
  print(Locale["operationCompleted"])
end

function GM_setAccountGMLevelCommand()
  local input = GM_genericCommands[GENERICS_parametersGet]()
  local params = {}
  local fail = false
  for w in input:gmatch("%w+") do
    table.insert(params, w)
  end
  if (not (table.getn(params) == 2)) then
    print(Locale["invalidParams2"])
    return
  end
  if (string.len(params[1]) > 20) then
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["logGM_accountInvalidUsername"] .. "|r")
    fail = true
  end
  if (params[2] ~= "0" and params[2] ~= "1" and params[2] ~= "2" and params[2] ~= "3") then
    print("|cffFF0000" .. params[2] .. "|r" .. Locale["logGM_setAccountGMLevelInvalidID"] .. "|r")
    fail = true
  end
  if (fail) then
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account set gmlevel " .. params[1] .. " " .. params[2] .. " -1")
  MangAdmin:LogAction(genericLogGenerator("logGM_setAccountGMLevelCompleted", {["value"] = input}))
  print(Locale["operationCompleted"])
end

function GM_setAccountPasswordCommand()
  local input = GM_genericCommands[GENERICS_parametersGet]()
  local params = {}
  local fail = false
  for w in input:gmatch("%w+") do
    table.insert(params, w)
  end
  if (not (table.getn(params) == 3)) then
    print(Locale["invalidParams3"])
    return
  end
  if (string.len(params[1]) > 20) then
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["logGM_accountInvalidUsername"] .. "|r")
    fail = true
  end
  if (string.len(params[2]) > 16) then
    print("|cffFF0000" .. params[2] .. "|r" .. Locale["logGM_createAccountInvalidPassword"] .. "|r")
    fail = true
  end
  if (not (params[2] == params[3])) then
    print("|cffFF0000" .. Locale["logGM_setAccountPasswordInvalidEquality"] .. "|r")
    fail = true
  end
  if (fail) then
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account set password " .. params[1] .. " " .. params[2] .. " " .. params[3])
  MangAdmin:LogAction(genericLogGenerator("logGM_setAccountPasswordCompleted", {["value"] = params[1] .. " " .. params[2]}))
  print(Locale["operationCompleted"])
end

function GM_setAccountAddonCommand()
  local input = GM_genericCommands[GENERICS_parametersGet]()
  local params = {}
  local fail = false
  for w in input:gmatch("%w+") do
    table.insert(params, w)
  end
  if (not (table.getn(params) == 2)) then
    print(Locale["invalidParams2"])
    return
  end
  if (string.len(params[1]) > 20) then
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["logGM_accountInvalidUsername"] .. "|r")
    fail = true
  end
  if (params[2] ~= "0" and params[2] ~= "1" and params[2] ~= "2") then
    print("|cffFF0000" .. params[2] .. "|r" .. Locale["logGM_setAccountAddonInvalidID"] .. "|r")
    fail = true
  end
  if (fail) then
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account set addon " .. params[1] .. " " .. params[2])
  MangAdmin:LogAction(genericLogGenerator("logGM_setAccountAddonCompleted", {["value"] = input}))
  print(Locale["operationCompleted"])
end

function GM_setJailCommand(factionCommand)
  local command = GM_genericCommands[factionCommand][GENERICS_command]
  MangAdmin:ChatMsg(".tele del " .. command)
  local i = 1
  while i < 100 do
    i = i + 1
    MangAdmin:ChatMsg(".")
  end
  MangAdmin:ChatMsg(".tele add " .. command)
  MangAdmin:LogAction(Locale[GM_genericCommands[factionCommand][GENERICS_message]])
end

function screen()
  UIParent:Hide()
  Screenshot()
  UIParent:Show()
  MangAdmin:LogAction(Locale["logGM_screen"])
end

function GM_instantKillModeCommand()
  MangAdmin.db.char.instantKillMode = GM_instantKillModeCheckBox:GetChecked()
  MangAdmin:LogAction(
    (GM_instantKillModeCheckBox:GetChecked() and Locale["genericEnabledText"] or Locale["genericDisabledText"]) ..
      Locale["logGM_instantKillMode"]
  )
end

function GM_setSpeedOrScaleCommand(sliderControl, sliderCommand)
  local command = GM_genericCommands[sliderCommand][GENERICS_command]
  local value = string.format("%.1f", sliderControl:GetValue())
  if commandTargetCheck() then
    MangAdmin:ChatMsg(command .. " " .. value)
    MangAdmin:LogAction(getCommandTargetName() .. Locale[GM_genericCommands[sliderCommand][GENERICS_message]] .. value)
  else
    MangAdmin:Print(Locale["selectionError"])
    sliderControl:SetValue(1)
  end
end

function GM_resetSpeedOrScaleSlider(sliderControl, sliderText, sliderCommand)
  local command = GM_genericCommands[sliderCommand][GENERICS_command]
  local title = (command:find('scale') and "Scale" or "Speed")
  sliderControl:SetValue(1)
  sliderText:SetText(title .. ": 1.0")
  MangAdmin:ChatMsg(command .." 1")
  MangAdmin:LogAction(Locale["log_resetSlider"])
end

function GridNavigate(x, y)
  local way = MangAdmin.db.char.nextGridWay
  if not x and not y then
    table.insert(MangAdmin.db.char.functionQueue, "GridNavigate")
    MangAdmin:ChatMsg(".gps")
  else
    if
      pcall(
        function()
          return ma_gridnavieditbox:GetText() + 10
        end
      )
     then
      local step = ma_gridnavieditbox:GetText()
      local newy
      local newx
      if way == "east" then --East
        newy = y - step
        newx = x
      elseif way == "north" then --North
        newy = y
        newx = x + step
      elseif way == "south" then --South
        newy = y
        newx = x - step
      else --Wast
        newy = y + step
        newx = x
      end
      MangAdmin:ChatMsg(".go xy " .. newx .. " " .. newy)
      MangAdmin:LogAction(genericLogGenerator("logGM_gridNavigator", {["value"] = newx .. " " .. newy}))
    else
      MangAdmin:Print(Locale["mustBeANumber"])
    end
  end
end
