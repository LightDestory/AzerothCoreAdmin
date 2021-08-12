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

genericCommands = {
    [cheatExploreMapsCommand] = {
        [GENERICS_isValueNeeded] = true,
        [GENERICS_isTargetCheckNeeded] = true,
        [GENERICS_command] = ".cheat explore ",
        [GENERICS_message] = "log_cheatExploreMaps"
    },
}
function commandTargetCheck()
    return (MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none"))
end

function getCommandTargetName()
    return (UnitName("target") or UnitName("player"))
end

function getCallsDictionary(ID)
    if ID == GM_KEY then
        return GM_genericCommands
    elseif ID == CHAR_KEY then
        return CHAR_genericCommands
    elseif ID == GENERAL_KEY then
        return genericCommands
    end
end

function genericClearParametersBox(caller)
    if (caller == GM_KEY) then
        GM_parameterInput:SetText("")
    elseif (caller == CHAR_KEY) then
        CHAR_parameterInput:SetText("")
    end
end

function genericLogGenerator(textID, data)
    local log = Locale[textID]
    local params = {}
    if(textID ~= "logGM_GMNotify" and textID ~= "logGM_GMMessage") then
        for w in data['value']:gmatch("%w+") do
            table.insert(params, w)
        end
    else
        params[1] = data['value']
    end
    for i = #params, 1, -1 do
        local pattern = "_V" .. i .. "_"
        log = string.gsub(log, pattern, params[i])
    end
    if data['target'] ~=nil then
        log = string.gsub(log, "_T_", data['target'])
    end
    return log
end

function genericBagCommand(caller)
    local player = UnitName("player") or UnitName("target")
    local param = nil
    if (caller == GM_KEY) then
        param = GM_genericCommands[GENERICS_parametersGet]()
    elseif (caller == CHAR_KEY) then
        param = CHAR_genericCommands[GENERICS_parametersGet]()
    end
    param = (param == nil or param == "" and "0" or param)
    MangAdmin:ChatMsg(".character check bag " .. param)
    MangAdmin:LogAction(genericLogGenerator("log_bag", {['value'] = param, ['target'] = player}))
end

function genericCaller(dictionaryID, callID, value)
    local dictionary = getCallsDictionary(dictionaryID)
    local call = dictionary[callID]
    local data = {
        ["value"] = "",
        ["target"] = nil
    }
    if call[GENERICS_isValueNeeded] then
        data['value'] = value
    elseif call[GENERICS_isParametersNeeded] then
        local v = dictionary[GENERICS_parametersGet]()
        if (not v  or v == '') then
            MangAdmin:Print(Locale["paramError"])
            return
        else
            data['value'] = v
        end
    end
    if call[GENERICS_isTargetCheckNeeded] then
        if commandTargetCheck() or call[GENERICS_canTargetBeACreature] then
            data['target'] = getCommandTargetName()
        else
            MangAdmin:Print(Locale["selectionError"])
            return
        end
    end
    MangAdmin:ChatMsg(call[GENERICS_command].. data['value'])
    MangAdmin:LogAction(genericLogGenerator(call[GENERICS_message], data))
end
