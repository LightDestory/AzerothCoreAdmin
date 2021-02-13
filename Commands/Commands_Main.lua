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
    [GENERICS_command] = "command",
    [GENERICS_message] = "messageID"
  }
]]
GM_genericCommands = {
  [GENERICS_parametersGet] = function()
    return ma_gmParametersInput:GetText()
  end,
  [GM_displayAccountGMLevel] = {
    [GENERICS_command] = ".account",
    [GENERICS_message] = "ma_displayleveloutput"
  },
  [GM_flyMode] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".gm fly ",
    [GENERICS_message] = "ma_FlyOnoutput"
  },
  [GM_godMode] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".cheat god ",
    [GENERICS_message] = "ma_GodOnoutput"
  },
  [GM_acceptWhispers] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".whispers ",
    [GENERICS_message] = "ma_WhisperOnoutput"
  },
  [GM_visibility] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".gm visible ",
    [GENERICS_message] = "ma_InvisOnoutput"
  },
  [GM_cheatTaxi] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_isTargetCheckNeeded] = true,
    [GENERICS_command] = ".cheat taxi ",
    [GENERICS_message] = "ma_TaxiOnoutput"
  },
  [GM_cheatExploreMaps] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_isTargetCheckNeeded] = true,
    [GENERICS_command] = ".cheat explore ",
    [GENERICS_message] = "ma_mapsoutput"
  },
  [GM_cheatWaterWalk] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_isTargetCheckNeeded] = true,
    [GENERICS_command] = ".cheat waterwalk ",
    [GENERICS_message] = "ma_waterwalkoutput"
  },
  [GM_cheatNoCastTime] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".cheat casttime ",
    [GENERICS_message] = "ma_NoCastTimeOnoutput"
  },
  [GM_cheatNoCooldown] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".cheat cooldown ",
    [GENERICS_message] = "ma_NoCooldownOnoutput"
  },
  [GM_accountIPLock] = {
    [GENERICS_isValueNeeded] = true,
    [GENERICS_command] = ".account lock ip ",
    [GENERICS_message] = "ma_accountlockipoutput"
  },
  [GM_GMList] = {
    [GENERICS_command] = ".gm list",
    [GENERICS_message] = "ma_gmListoutput"
  },
  [GM_GMInGame] = {
    [GENERICS_command] = ".gm ingame",
    [GENERICS_message] = "ma_gmInGameoutput"
  },
  [GM_GMNotify] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".gmnotify ",
    [GENERICS_message] = "ma_gmNotifyOutput"
  },
  [GM_GMMessage] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".gmnameannounce ",
    [GENERICS_message] = "ma_gmMessageOutput"
  },
  [GM_Cast] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast ",
    [GENERICS_message] = "ma_gmCastSpellOutput"
  },
  [GM_CastBack] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast back ",
    [GENERICS_message] = "ma_gmCastBackSpellOutput"
  },
  [GM_CastDist] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast dist ",
    [GENERICS_message] = "ma_gmCastDistSpellOutput"
  },
  [GM_CastSelf] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast self ",
    [GENERICS_message] = "ma_gmCastSelfSpellOutput"
  },
  [GM_CastTarget] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".cast target ",
    [GENERICS_message] = "ma_gmCastTargetSpellOutput"
  },
  [GM_TeleportAdd] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".tele add ",
    [GENERICS_message] = "ma_gmTeleAddOutput"
  },
  [GM_TeleportDel] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".tele del ",
    [GENERICS_message] = "ma_gmTeleDelOutput"
  },
  [GM_ListItem] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".list item ",
    [GENERICS_message] = "ma_gmListItemOutput"
  },
  [GM_LookupTaxi] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".lookup taxi  ",
    [GENERICS_message] = "ma_gmLookTaxiOutput"
  },
  [GM_LookupZone] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".lookup area ",
    [GENERICS_message] = "ma_gmLookZoneOutput"
  },
  [GM_GoTaxiNode] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go taxinode ",
    [GENERICS_message] = "ma_gmGoTaxiOutput"
  },
  [GM_GoTrigger] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go trigger ",
    [GENERICS_message] = "ma_gmGoTriggerOutput"
  },
  [GM_GoXY] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go xy ",
    [GENERICS_message] = "ma_gmGoXYOutput"
  },
  [GM_GoXYZ] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go xyz ",
    [GENERICS_message] = "ma_gmGoXYZOutput"
  },
  [GM_GoZoneXY] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".go zonexy ",
    [GENERICS_message] = "ma_gmZoneXYOutput"
  },
  [GM_PetCreate] = {
    [GENERICS_command] = ".pet create",
    [GENERICS_message] = "ma_gmPetCreateOutput"
  },
  [GM_PetLearn] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".pet learn ",
    [GENERICS_message] = "ma_gmPetLearnOutput"
  },
  [GM_PetUnLearn] = {
    [GENERICS_isParametersNeeded] = true,
    [GENERICS_command] = ".pet unlearn ",
    [GENERICS_message] = "ma_gmPetUnlearnOutput"
  },
  [GM_PetTalentsLearn] = {
    [GENERICS_command] = ".learn all my pettalents",
    [GENERICS_message] = "ma_gmPetTalentsOutput"
  },
  [GM_DismountPlayer] = {
    [GENERICS_command] = ".dismount",
    [GENERICS_message] = "ma_gmDismountOutput"
  }
}

function ToggleGMMode(value)
  MangAdmin:ChatMsg(".gm " .. value)
  MangAdmin:ChatMsg(".gm chat " .. value)
  MangAdmin:LogAction(genericLogGenerator("ma_GMOnoutput", value))
end

function AcctCreate()
  local input = ma_gmParametersInput:GetText()
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
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["ma_invalidUsername"] .. "|r")
    fail = true
  end
  if (string.len(params[2]) > 16) then
    print("|cffFF0000" .. params[2] .. "|r" .. Locale["ma_invalidPassword"] .. "|r")
    fail = true
  end
  if (fail) then
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account create " .. params[1] .. " " .. params[2])
  MangAdmin:LogAction(Locale["ma_accountCreateCompleted"] .. params[1] .. " " .. params[2])
  print(Locale["operationCompleted"])
end

function AcctDelete()
  local input = ma_gmParametersInput:GetText()
  local params = {}
  local fail = false
  for w in input:gmatch("%w+") do
    table.insert(params, w)
  end
  if (not (table.getn(params) == 1)) then
    print(Locale["invalidParams1"])
    return
  end
  if (string.len(params[1]) > 20) then
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["ma_invalidUsername"] .. "|r")
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account delete " .. params[1])
  MangAdmin:LogAction(Locale["ma_accountDeleteCompleted"] .. params[1])
  print(Locale["operationCompleted"])
end

function AcctGMLvl()
  local input = ma_gmParametersInput:GetText()
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
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["ma_invalidUsername"] .. "|r")
    fail = true
  end
  if (params[2] ~= "0" and params[2] ~= "1" and params[2] ~= "2" and params[2] ~= "3") then
    print("|cffFF0000" .. params[2] .. "|r" .. Locale["ma_invalidGMLvlID"] .. "|r")
    fail = true
  end
  if (fail) then
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account set gmlevel " .. params[1] .. " " .. params[2] .. " -1")
  MangAdmin:LogAction(params[1] .. Locale["ma_accountGMLevelCompleted"] .. params[2])
  print(Locale["operationCompleted"])
end

function AcctPasswd()
  local input = ma_gmParametersInput:GetText()
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
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["ma_invalidUsername"] .. "|r")
    fail = true
  end
  if (string.len(params[2]) > 16) then
    print("|cffFF0000" .. params[2] .. "|r" .. Locale["ma_invalidPassword"] .. "|r")
    fail = true
  end
  if (not (params[2] == params[3])) then
    print("|cffFF0000" .. Locale["ma_invalidPasswordEQUCheck"] .. "|r")
    fail = true
  end
  if (fail) then
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account set password " .. params[1] .. " " .. params[2] .. " " .. params[3])
  MangAdmin:LogAction(params[1] .. Locale["ma_accountPasswordChangeCompleted"] .. params[2])
  print(Locale["operationCompleted"])
end

function AcctAddon()
  local input = ma_gmParametersInput:GetText()
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
    print("|cffFF0000" .. params[1] .. "|r" .. Locale["ma_invalidUsername"] .. "|r")
    fail = true
  end
  if (params[2] ~= "0" and params[2] ~= "1" and params[2] ~= "2") then
    print("|cffFF0000" .. params[2] .. "|r" .. Locale["ma_invalidAddonID"] .. "|r")
    fail = true
  end
  if (fail) then
    print(Locale["operationAborted"])
    return
  end
  MangAdmin:ChatMsg(".account set addon " .. params[1] .. " " .. params[2])
  MangAdmin:LogAction(params[1] .. Locale["ma_accountAddonChangeCompleted"] .. params[2])
  print(Locale["operationCompleted"])
end

function SetJail_A()
  MangAdmin:ChatMsg(".tele del ma_AllianceJail")
  local i = 1
  while i < 100 do
    i = i + 1
    MangAdmin:ChatMsg(".")
  end
  MangAdmin:ChatMsg(".tele add ma_AllianceJail")
  MangAdmin:LogAction(Locale["ma_gmSetJailAOutput"])
end

function SetJail_H()
  MangAdmin:ChatMsg(".tele del ma_HordeJail")
  local i = 1
  while i < 100 do
    i = i + 1
    MangAdmin:ChatMsg(".")
  end
  MangAdmin:ChatMsg(".tele add ma_HordeJail")
  MangAdmin:LogAction(Locale["ma_gmSetJailHOutput"])
end
function Screenie()
  UIParent:Hide()
  Screenshot()
  UIParent:Show()
  MangAdmin:LogAction(Locale["ma_gmScreenieOutput"])
end

function InstantKill()
  MangAdmin.db.char.instantKillMode = ma_instantkillbutton:GetChecked()
  MangAdmin:LogAction(
    (ma_instantkillbutton:GetChecked() and Locale["genericEnabledText"] or Locale["genericDisabledText"]) ..
      Locale["ma_gmInstaKillOutput"]
  )
end

function SetSpeed()
  local value = string.format("%.1f", ma_speedslider:GetValue())
  if commandTargetCheck() then
    MangAdmin:ChatMsg(".modify speed " .. value)
    MangAdmin:LogAction(getCommandTargetName() .. Locale["ma_gmSpeedOutput"] .. value)
  else
    MangAdmin:Print(Locale["selectionError"])
    ma_speedslider:SetValue(1)
  end
end

function SetScale()
  local value = string.format("%.1f", ma_scaleslider:GetValue())
  if commandTargetCheck() then
    MangAdmin:ChatMsg(".modify scale " .. value)
    MangAdmin:LogAction(getCommandTargetName() .. Locale["ma_gmScaleOutput"] .. value)
  else
    MangAdmin:Print(Locale["selectionError"])
    ma_scaleslider:SetValue(1)
  end
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
      MangAdmin:LogAction(Locale["ma_gmGridXYOutput"] .. newx .. " " .. newy)
    else
      MangAdmin:Print(Locale["mustBeANumber"])
    end
  end
end

function ResetSpeed()
  ma_speedslider:SetValue(1)
  ma_speedsliderText:SetText("Speed: 1.0")
  MangAdmin:ChatMsg(".mod speed 1")
  MangAdmin:LogAction(Locale["log_resetSlider"])
end

function ResetScale()
  ma_scaleslider:SetValue(1)
  ma_scalesliderText:SetText("Scale: 1.0")
  MangAdmin:ChatMsg(".mod scale 1")
  MangAdmin:LogAction(Locale["log_resetSlider"])
end
