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

function genericClearParametersBox(caller)
    if (caller == "GM") then
        ma_gmParametersInput:SetText("")
    end
end

function genericBagCommand(caller)
    local player = UnitName("player") or UnitName("target")
    local param = nil
    if (caller == "GM") then
        param = ma_gmParametersInput:GetText()
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
        data['value'] = dictionary[GENERICS_parametersGet]()
    end
    if call[GENERICS_isTargetCheckNeeded] then
        if commandTargetCheck() then
            data['target'] = getCommandTargetName()
        else
            MangAdmin:Print(Locale["selectionError"])
            return
        end
    end
    MangAdmin:ChatMsg(call[GENERICS_command].. data['value'])
    MangAdmin:LogAction(genericLogGenerator(call[GENERICS_message], data))
end