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
  [GENERICS_parametersGet] = function() return ma_gmParametersInput:GetText() end,
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
  }
}

function ToggleGMMode(value)
  MangAdmin:ChatMsg(".gm " .. value)
  MangAdmin:ChatMsg(".gm chat " .. value)
  MangAdmin:LogAction(genericLogGenerator("ma_GMOnoutput",value))
end

function ToggleTaxicheat(value)
  if commandTargetCheck() then
    MangAdmin:ChatMsg(".cheat taxi " .. value)
    MangAdmin:LogAction(
      (value == "on" and Locale["genericEnabledText"] or Locale["genericDisabledText"]) ..
        Locale["ma_TaxiOnoutput"] .. getCommandTargetName()
    )
  else
    MangAdmin:Print(Locale["selectionError"])
  end
end

function ToggleMaps(value)
  if commandTargetCheck() then
    MangAdmin:ChatMsg(".cheat explore " .. value)
    MangAdmin:LogAction(
      (value == 1 and Locale["genericEnabledText"] or Locale["genericDisabledText"]) ..
        Locale["ma_mapsoutput"] .. getCommandTargetName()
    )
  else
    MangAdmin:Print(Locale["selectionError"])
  end
end

function ToggleWaterwalk(value)
  if commandTargetCheck() then
    MangAdmin:ChatMsg(".cheat waterwalk " .. value)
    MangAdmin:LogAction(
      (value == "on" and Locale["genericEnabledText"] or Locale["genericDisabledText"]) ..
        Locale["ma_waterwalkoutput"] .. getCommandTargetName()
    )
  else
    MangAdmin:Print(Locale["selectionError"])
  end
end

function ToggleNoCastTime(value)
  MangAdmin:ChatMsg(".cheat casttime " .. value)
  MangAdmin:LogAction(Locale["ma_NoCastTimeOnoutput"] .. value)
end

function ToggleNoCooldown(value)
  MangAdmin:ChatMsg(".cheat cooldown " .. value)
  MangAdmin:LogAction(Locale["ma_NoCooldownOnoutput"] .. value)
end

function ToggleAccountlockIP(value)
  MangAdmin:ChatMsg(".account lock ip " .. value)
  MangAdmin:LogAction(Locale["ma_accountlockipoutput"] .. value)
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

function GMList()
  MangAdmin:ChatMsg(".gm list")
  MangAdmin:LogAction(Locale["ma_gmListoutput"])
end

function GMInGame()
  MangAdmin:ChatMsg(".gm ingame")
  MangAdmin:LogAction(Locale["ma_gmInGameoutput"])
end

function GMNotify()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".gmnotify " .. param)
  MangAdmin:LogAction(Locale["ma_gmNotifyOutput"] .. param)
end

function GMMessage()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".gmnameannounce " .. param)
  MangAdmin:LogAction(Locale["ma_gmMessageOutput"] .. param)
end

function Cast()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".cast " .. param)
  MangAdmin:LogAction(Locale["ma_gmCastSpellOutput"] .. param)
end

function CastBack()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".cast back " .. param)
  MangAdmin:LogAction(Locale["ma_gmCastBackSpellOutput"] .. param)
end

function CastDist()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".cast dist " .. param)
  MangAdmin:LogAction(Locale["ma_gmCastDistSpellOutput"] .. param)
end

function CastSelf()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".cast self " .. param)
  MangAdmin:LogAction(Locale["ma_gmCastSelfSpellOutput"] .. param)
end

function CastTarget()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".cast target " .. param)
  MangAdmin:LogAction(Locale["ma_gmCastTargetSpellOutput"] .. param)
end

function TeleAddButton()
  local cname = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".tele add " .. cname)
  MangAdmin:LogAction(cname .. Locale["ma_gmTeleAddOutput"])
end

function TeleDelButton()
  local cname = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".tele del " .. cname)
  MangAdmin:LogAction(cname .. Locale["ma_gmTeleDelOutput"])
end

function ListItem()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".list item " .. param)
  MangAdmin:LogAction(Locale["ma_gmListItemOutput"] .. param)
end

function LookupTaxi()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".lookup taxi  " .. param)
  MangAdmin:LogAction(Locale["ma_gmLookTaxiOutput"] .. param)
end

function LookupZone()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".lookup area " .. param)
  MangAdmin:LogAction(Locale["ma_gmLookZoneOutput"] .. param)
end

function GoTaxiNode()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".go taxinode " .. param)
  MangAdmin:LogAction(Locale["ma_gmGoTaxiOutput"] .. param)
end

function GoTrigger()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".go trigger " .. param)
  MangAdmin:LogAction(Locale["ma_gmGoTriggerOutput"] .. param)
end

function GoXY()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".go xy " .. param)
  MangAdmin:LogAction(Locale["ma_gmGoXYOutput"] .. param)
end

function GoXYZ()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".go xyz " .. param)
  MangAdmin:LogAction(Locale["ma_gmGoXYZOutput"] .. param)
end

function GoZoneXY()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".go zonexy " .. param)
  MangAdmin:LogAction(Locale["ma_gmZoneXYOutput"] .. param)
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

function PetCreate()
  MangAdmin:ChatMsg(".pet create")
  MangAdmin:LogAction(Locale["ma_gmPetCreateOutput"])
end

function PetLearn()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".pet learn " .. param)
  MangAdmin:LogAction(Locale["ma_gmPetLearnOutput"] .. param)
end

function PetUnLearn()
  local param = ma_gmParametersInput:GetText()
  MangAdmin:ChatMsg(".pet unlearn " .. param)
  MangAdmin:LogAction(Locale["ma_gmPetUnlearnOutput"] .. param)
end

function PetTalentsLearn()
  MangAdmin:ChatMsg(".learn all my pettalents")
  MangAdmin:LogAction(Locale["ma_gmPetTalentsOutput"])
end

function ShowBank()
  MangAdmin:ChatMsg(".character check bank")
  MangAdmin:LogAction(Locale["ma_gmBankOutput"])
end

function Screenie()
  UIParent:Hide()
  Screenshot()
  UIParent:Show()
  MangAdmin:LogAction(Locale["ma_gmScreenieOutput"])
end

function DismountPlayer()
  MangAdmin:ChatMsg(".dismount")
  MangAdmin:LogAction(Locale["ma_gmDismountOutput"])
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
