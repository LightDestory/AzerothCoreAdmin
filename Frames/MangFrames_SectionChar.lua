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

-- Initializing dynamic frames with LUA and FrameLib
-- This script must be listed in the .toc after "MangFrames_SectionLog.lua"
-- Also some variables are globally taken from MangAdmin.lua

function MangAdmin:CreateCharSection()
    local transparency = {
        bg = MangAdmin.db.account.style.transparency.backgrounds,
        btn = MangAdmin.db.account.style.transparency.buttons,
        frm = MangAdmin.db.account.style.transparency.frames
    }
    local color = {
        bg = MangAdmin.db.account.style.color.backgrounds,
        btn = MangAdmin.db.account.style.color.buttons,
        frm = MangAdmin.db.account.style.color.frames
    }

    FrameLib:BuildFrame({
        type = "PlayerModel",
        name = "ma_modelframe",
        group = "char",
        parent = ma_midframe,
        size = {
            width = 140,
            height = 200
        },
        setpoint = {
            pos = "BOTTOMLEFT",
            offX = 0,
            offY = 0
        },
        inherits = nil
    })

    FrameLib:BuildButton({
        name = "ma_modelrotatelbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_modelrotatelbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 25,
            height = 15
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 28,
            offY = -35
        },
        text = "<<="
    })

    FrameLib:BuildButton({
        name = "ma_modelrotaterbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_modelrotaterbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 25,
            height = 15
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 54,
            offY = -35
        },
        text = "=>>"
    })

    FrameLib:BuildButton({
        name = "ma_modelzoominbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_modelzoominbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 15,
            height = 15
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 81,
            offY = -35
        },
        text = "+"
    })

    FrameLib:BuildButton({
        name = "ma_modelzoomoutbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_modelzoomoutbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 15,
            height = 15
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 97,
            offY = -35
        },
        text = "-"
    })

    -- Kill Button
    FrameLib:BuildButton({
        name = "CHAR_killButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_killButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 140, --charColOne
            offY = -30 --charRowOne
        },
        text = Locale["labelCHAR_killButton"]
    })
    -- Revive Button
    FrameLib:BuildButton({
        name = "CHAR_reviveButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_reviveButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 140, --charColOne
            offY = -52 --charRowTwo
        },
        text = Locale["labelCHAR_reviveButton"]
    })
    -- Save Button
    FrameLib:BuildButton({
        name = "CHAR_saveButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_saveButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 140, --charColOne
            offY = -74  --charRowThree
        },
        text = Locale["labelCHAR_saveButton"]
    })
    -- Kick Button
    FrameLib:BuildButton({
        name = "CHAR_kickButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_kickButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 140, --charColOne
            offY = -96 --charRowFour
        },
        text = Locale["labelCHAR_kickButton"]
    })
    -- Ban Button
    FrameLib:BuildButton({
        name = "CHAR_banButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_banButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 140, --charColFour
            offY = -118 --charRowTwo
        },
        text = Locale["labelCHAR_banButton"]
    })
    -- Unban Button
    FrameLib:BuildButton({
        name = "CHAR_unbanButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_unbanButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 140, --charColFour
            offY = -140 --charRowFive
        },
        text = Locale["labelCHAR_unbanButton"]
    })
    -- BanInfo Button
    FrameLib:BuildButton({
        name = "CHAR_banInfoButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_banInfoButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 140, --charColFour
            offY = -162  --charRowThree
        },
        text = Locale["labelCHAR_banInfoButton"]
    })
    -- Ban List Button
    FrameLib:BuildButton({
        name = "CHAR_banListButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_banListButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 140, --charColFour
            offY = -184 --charRowFour
        },
        text = Locale["labelCHAR_banListButton"]
    })
    -- CombatStop Button
    FrameLib:BuildButton({
        name = "CHAR_combatStopButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_combatStopButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 140, --charColTwo
            offY = -206 --charRowSeven
        },
        text = Locale["labelCHAR_combatStopButton"]
    })
    -- Rename Button
    FrameLib:BuildButton({
        name = "CHAR_renameButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_renameButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 222, --charColOne
            offY = -30 --charRowSix
        },
        text = Locale["labelCHAR_renameButton"]
    })
    -- Customize Button
    FrameLib:BuildButton({
        name = "CHAR_customizeButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_customizeButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 222, --charColTwo
            offY = -52 --charRowSix
        },
        text = Locale["labelCHAR_customizeButton"]
    })
    -- Change Race Button
    FrameLib:BuildButton({
        name = "CHAR_changeRaceButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_changeRaceButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 222, --charColThree
            offY = -74 --charRowSix
        },
        text = Locale["labelCHAR_changeRaceButton"]
    })
    -- Change Faction Button
    FrameLib:BuildButton({
        name = "CHAR_changeFactionButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_changeFactionButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 222, --charColOne
            offY = -96 --charRowSeven
        },
        text = Locale["labelCHAR_changeFactionButton"]
    })
    -- Morph Button
    FrameLib:BuildButton({
        name = "CHAR_morphButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_morphButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 222, --charColFour
            offY = -118 --charRowSix
        },
        text = Locale["labelCHAR_morphButton"]
    })
    -- Demorph Button
    FrameLib:BuildButton({
        name = "CHAR_demorphButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_demorphButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 222, --charColTwo
            offY = -140 --charRowFive
        },
        text = Locale["labelCHAR_demorphButton"]
    })
    -- Freeze Button
    FrameLib:BuildButton({
        name = "CHAR_freezeButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_freezeButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 222, --charColOne
            offY = -162 --charRowEight
        },
        text = Locale["labelCHAR_freezeButton"]
    })
    -- Unfreeze Button
    FrameLib:BuildButton({
        name = "CHAR_unfreezeButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_unfreezeButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 222, --charColTwo
            offY = -184 --charRowEight
        },
        text = Locale["labelCHAR_unfreezeButton"]
    })
    -- Cooldown Button
    FrameLib:BuildButton({
        name = "CHAR_cooldownButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_cooldownButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 222, --charColOne
            offY = -206 --charRowFive
        },
        text = Locale["labelCHAR_cooldownButton"]
    })
    -- PlayerInfo Button
    FrameLib:BuildButton({
        name = "CHAR_pInfoButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_pInfoButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 304, --charColTwo
            offY = -30 --charRowTwo
        },
        text = Locale["labelCHAR_pInfoButton"]
    })
    -- GUID Button
    FrameLib:BuildButton({
        name = "CHAR_guidButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_guidButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 304, --charColTwo
            offY = -52 --charRowOne
        },
        text = Locale["labelCHAR_guidButton"]
    })
    -- GPS Button
    FrameLib:BuildButton({
        name = "CHAR_gpsButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_gpsButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 304, --charColThree
            offY = -74 --charRowThree
        },
        text = Locale["labelCHAR_gpsButton"]
    })
    -- Bindsight Button
    FrameLib:BuildButton({
        name = "CHAR_bindSightButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_bindSightButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 304, --charColThree
            offY = -96 --charRowFour
        },
        text = Locale["labelCHAR_bindSightButton"]
    })
    -- Unbindsight Button
    FrameLib:BuildButton({
        name = "CHAR_unbindSightButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_unbindSightButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 304, --charColThree
            offY = -118 --charRowFive
        },
        text = Locale["labelCHAR_unbindSightButton"]
    })
    -- Possess Button
    FrameLib:BuildButton({
        name = "CHAR_possessButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_possessButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 304, --charColOne
            offY = -140 --charRowNine
        },
        text = Locale["labelCHAR_possessButton"]
    })
    -- Unpossess Button
    FrameLib:BuildButton({
        name = "CHAR_unpossessButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_unpossessButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 304, --charColTwo
            offY = -162 --charRowNine
        },
        text = Locale["labelCHAR_unpossessButton"]
    })
    --  MaxSkill Button
    FrameLib:BuildButton({
        name = "CHAR_maxSkillButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_maxSkillButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 304, --charColThree
            offY = -184 --charRowSeven
        },
        text = Locale["labelCHAR_maxSkillButton"]
    })
    -- Repair Items Button
    FrameLib:BuildButton({
        name = "CHAR_repairItemsButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_repairItemsButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 304, --charColThree
            offY = -206 --charRowTwo [[offY = -225 --charRowTen]]
        },
        text = Locale["labelCHAR_repairItemsButton"]
    })
    -- Show Maps Button
    FrameLib:BuildButton({
        name = "CHAR_showMapsButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_showMapsButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 386, --charColThree
            offY = -30 --charRowOne
        },
        text = Locale["labelCHAR_showMapsButton"]
    })
    -- Hide Maps Button
    FrameLib:BuildButton({
        name = "CHAR_hideMapsButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_hideMapsButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 386, --charColFour offX = 303, --charColThree
            offY = -52 --charRowOne offY = -52 --charRowTwo
        },
        text = Locale["labelCHAR_hideMapsButton"]
    })
    -- Show Area Button
    FrameLib:BuildButton({
        name = "CHAR_showAreaButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_showAreaButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 386, --charColFive
            offY = -74 --charRowOne
        },
        text = Locale["labelCHAR_showAreaButton"]
    })
    -- Hide Area Button
    FrameLib:BuildButton({
        name = "CHAR_hideAreaButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_hideAreaButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 386, --charColSix
            offY = -96 --charRowOne
        },
        text = Locale["labelCHAR_hideAreaButton"]
    })
    -- Guild Create Button
    FrameLib:BuildButton({
        name = "CHAR_createGuildButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_createGuildButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 386, --charColSix
            offY = -118 --charRowTwo
        },
        text = Locale["labelCHAR_createGuildButton"]
    })
    -- Guild Delete Button
    FrameLib:BuildButton({
        name = "CHAR_deleteGuildButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_deleteGuildButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 386, --charColFive
            offY = -140 --charRowFive
        },
        text = Locale["labelCHAR_deleteGuildButton"]
    })
    -- Guild Invite Button
    FrameLib:BuildButton({
        name = "CHAR_inviteGuildButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_inviteGuildButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 386, --charColSix
            offY = -162  --charRowThree
        },
        text = Locale["labelCHAR_inviteGuildButton"]
    })
    -- Guild Uninvite Button
    FrameLib:BuildButton({
        name = "CHAR_uninviteGuildButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_uninviteGuildButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 386, --charColSix
            offY = -184 --charRowFive
        },
        text = Locale["labelCHAR_uninviteGuildButton"]
    })
    -- Build Rank Button
    FrameLib:BuildButton({
        name = "CHAR_rankGuildButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_rankGuildButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 386, --charColSix
            offY = -206 --charRowFour
        },
        text = Locale["labelCHAR_rankGuildButton"]
    })
    -- Appear Button
    FrameLib:BuildButton({
        name = "CHAR_appearButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_appearButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 468, --charColFive
            offY = -30 --charRowTwo
        },
        text = Locale["labelCHAR_appearButton"]
    })
    -- Summon Button
    FrameLib:BuildButton({
        name = "CHAR_summonButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_summonButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 468, --charColFive
            offY = -52 --charRowFour
        },
        text = Locale["labelCHAR_summonButton"]
    })
    -- Group Summon Button
    FrameLib:BuildButton({
        name = "CHAR_groupSummonButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_groupSummonButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 468, --charColFive
            offY = -74  --charRowThree
        },
        text = Locale["labelCHAR_groupSummonButton"]
    })
    -- Teleport Name Button
    FrameLib:BuildButton({
        name = "CHAR_teleportNameButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_teleportNameButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 468, --charColSeven
            offY = -96 --charRowTwo
        },
        text = Locale["labelCHAR_teleportNameButton"]
    })
    -- Teleport Group Button
    FrameLib:BuildButton({
        name = "CHAR_teleportGroupButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_teleportGroupButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 468, --charColSeven
            offY = -118 --charRowOne
        },
        text = Locale["labelCHAR_teleportGroupButton"]
    })
    -- Jail Alliance Button
    FrameLib:BuildButton({
        name = "CHAR_jailAllianceButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_jailAllianceButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 468, --charColFour
            offY = -140 --charRowSeven
        },
        text = Locale["labelCHAR_jailAllianceButton"]
    })
    -- Jail Horde Button
    FrameLib:BuildButton({
        name = "CHAR_jailHordeButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_jailHordeButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 468, --charColFive
            offY = -162 --charRowSeven
        },
        text = Locale["labelCHAR_jailHordeButton"]
    })
    -- Unjail Button
    FrameLib:BuildButton({
        name = "CHAR_unjailButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_unjailButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 468, --charColSix
            offY = -184 --charRowSeven
        },
        text = Locale["labelCHAR_unjailButton"]
    })
    -- Damage Button
    FrameLib:BuildButton({
        name = "CHAR_damageButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_damageButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 468, --charColFour
            offY = -206 --charRowNine
        },
        text = Locale["labelCHAR_damageButton"]
    })
    -- Distance Button
    FrameLib:BuildButton({
        name = "CHAR_distanceButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_distanceButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 550, --charColTwo
            offY = -30 --charRowThree
        },
        text = Locale["labelCHAR_distanceButton"]
    })
    -- Recall Button
    FrameLib:BuildButton({
        name = "CHAR_recallButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_recallButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 550, --charColTwo
            offY = -52 --charRowFour
        },
        text = Locale["labelCHAR_recallButton"]
    })
    -- Mute Button
    FrameLib:BuildButton({
        name = "CHAR_muteButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_muteButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 550, --charColSeven
            offY = -74  --charRowThree
        },
        text = Locale["labelCHAR_muteButton"]
    })
    -- Unmute Button
    FrameLib:BuildButton({
        name = "CHAR_unmuteButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_unmuteButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 550, --charColSeven
            offY = -96 --charRowFour
        },
        text = Locale["labelCHAR_unmuteButton"]
    })
    -- Aura Button
    FrameLib:BuildButton({
        name = "CHAR_auraButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_auraButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 550, --charColFive
            offY = -118 --charRowSix
        },
        text = Locale["labelCHAR_auraButton"]
    })
    -- unAura Button
    FrameLib:BuildButton({
        name = "CHAR_unauraButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_unauraButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 550, --charColSix
            offY = -140 --charRowSix
        },
        text = Locale["labelCHAR_unauraButton"]
    })
    -- Quest Add Button
    FrameLib:BuildButton({
        name = "CHAR_questAddButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_questAddButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 550, --charColFour
            offY = -162 --charRowEight
        },
        text = Locale["labelCHAR_questAddButton"]
    })
    -- Quest Remove Button
    FrameLib:BuildButton({
        name = "CHAR_questRemoveButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_questRemoveButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 550, --charColSix
            offY = -184 --charRowEight
        },
        text = Locale["labelCHAR_questRemoveButton"]
    })
    -- Quest Complete Button
    FrameLib:BuildButton({
        name = "CHAR_questCompleteButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_questCompleteButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 550, --charColFive
            offY = -206 --charRowEight
        },
        text = Locale["labelCHAR_questCompleteButton"]
    })
    -- Honor Add Button
    FrameLib:BuildButton({
        name = "CHAR_honorAddButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_honorAddButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 632, --charColFive
            offY = -30 --charRowNine
        },
        text = Locale["labelCHAR_honorAddButton"]
    })
    -- Honor Update Button
    FrameLib:BuildButton({
        name = "CHAR_honorUpdateButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_honorUpdateButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 632, --charColSix
            offY = -52 --charRowNine
        },
        text = Locale["labelCHAR_honorUpdateButton"]
    })
    -- Bag Button
    FrameLib:BuildButton({
        name = "CHAR_bagButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_bagButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 632, --charColSix
            offY = -74 --charRowNine
        },
        text = Locale["label_bagButton"]
    })
    -- Learn Button
    FrameLib:BuildButton({
        name = "CHAR_learnSpellButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_learnSpellButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 632, --charColSix
            offY = -96 --charRowNine
        },
        text = Locale["labelCHAR_learnSpellButton"]
    })
    -- Unlearn Button
    FrameLib:BuildButton({
        name = "CHAR_unlearnSpellButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_unlearnSpellButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 632, --charColSix
            offY = -118 --charRowNine
        },
        text = Locale["labelCHAR_unlearnSpellButton"]
    })
    -- Learn Preset Dropdown
    FrameLib:BuildFrame({
        name = "CHAR_learnPresetDropdown",
        group = "char",
        parent = ma_midframe,
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = -15,
            offY = 0
        },
        inherits = "UIDropDownMenuTemplate"
    })
    -- Learn Preset Button
    FrameLib:BuildButton({
        name = "CHAR_learnPresetButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_learnPresetButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 120,
            offY = -4
        },
        text = Locale["labelCHAR_learnPresetButton"]
    })
    -- Reset Dropdown
    FrameLib:BuildFrame({
        name = "CHAR_resetDropdown",
        group = "char",
        parent = ma_midframe,
        size = {
            width = 40,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 190,
            offY = 0
        },
        inherits = "UIDropDownMenuTemplate"
    })
    -- Reset Button
    FrameLib:BuildButton({
        name = "CHAR_resetButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_resetButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 40,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 330,
            offY = -4
        },
        text = Locale["labelCHAR_resetButton"]
    })
    -- Modify Dropdown
    FrameLib:BuildFrame({
        name = "CHAR_modifyDropdown",
        group = "char",
        parent = ma_midframe,
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 365,
            offY = 0
        },
        inherits = "UIDropDownMenuTemplate"
    })
    -- Modify Input Box
    FrameLib:BuildFrame({
        type = "EditBox",
        name = "CHAR_modifyInputBox",
        group = "char",
        parent = ma_midframe,
        size = {
            width = 60,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 505,
            offY = -4
        },
        inherits = "InputBoxTemplate"
    })
    -- Modify Button
    FrameLib:BuildButton({
        name = "CHAR_modifyButton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "CHAR_modifyButton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 50,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 570,
            offY = -4
        },
        text = Locale["labelCHAR_modifyButton"]
    })

    -- Input Box Label
    FrameLib:BuildFontString({
        name = "ma_parameterboxtext",
        group = "char",
        parent = ma_midframe,
        text = Locale["label_parameterText"],
        setpoint = {
            pos = "BOTTOMLEFT",
            offX = 150, --charColTwo
            offY = 8
        }
    })
    -- Input Box
    FrameLib:BuildFrame({
        type = "EditBox",
        name = "CHAR_parameterInput",
        group = "char",
        parent = ma_midframe,
        size = {
            width = 260,
            height = 20
        },
        setpoint = {
            pos = "BOTTOMLEFT",
            offX = 250,
            offY = 4
        },
        inherits = "InputBoxTemplate"
    })
    -- Clear Button
    FrameLib:BuildButton({
                name = "CHAR_clearParameterBoxButton",
                group = "char",
                parent = ma_midframe,
                texture = {
                    name = "CHAR_clearParameterBoxButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 15
                },
                setpoint = {
                    pos = "BOTTOMLEFT", ---Correct This Location
                    offX = 520,
                    offY = 6
                },
                text = Locale["label_paramaterClearButton"]
            })

end
