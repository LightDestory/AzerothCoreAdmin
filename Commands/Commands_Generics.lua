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

COMMAND_TARGET_PLAYERS_SELF_ONLY = 1

commandTargetChecks = {
    [COMMAND_TARGET_PLAYERS_SELF_ONLY] = function()
        return (MangAdmin:Selection("player") or MangAdmin:Selection("self") or MangAdmin:Selection("none"))
    end
}

function commandTargetCheck(checkType)
    return commandTargetChecks[checkType]()
end

function getCommandTargetName()
    return (UnitName("target") or UnitName("player"))
end

function clearParametersBox(caller)
    if(caller == "GM") then
        ma_gmParametersInput:SetText("")
    end
end

function ShowBag(caller)
    local player = UnitName("player") or UnitName("target")
    local param = nil
    if(caller == "GM") then
        param = ma_gmParametersInput:GetText()
    end
    MangAdmin:ChatMsg(".character check bag " .. param)
    MangAdmin:LogAction(Locale["ma_gmBagOutput"] .. player .. " " .. param)
  end

