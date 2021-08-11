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
            offY = -95 --charRowFour
        },
        text = Locale["labelCHAR_kickButton"]
    })

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
            offX = 140, --charColOne
            offY = -117 --charRowFive
        },
        text = Locale["labelCHAR_cooldownButton"]
    })

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
            offY = -117 --charRowFive
        },
        text = Locale["labelCHAR_demorphButton"]
    })

    FrameLib:BuildButton({
        name = "ma_showmapsbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_showmapsbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 303, --charColThree
            offY = -30 --charRowOne
        },
        text = Locale["ma_ShowMapsCharButton"]
    })

    FrameLib:BuildButton({
        name = "ma_hidemapsbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_hidemapsbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 385, --charColFour offX = 303, --charColThree
            offY = -30 --charRowOne offY = -52 --charRowTwo
        },
        text = Locale["ma_HideMapsButton"]
    })

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
            offX = 303, --charColThree
            offY = -74 --charRowThree
        },
        text = Locale["labelCHAR_gpsButton"]
    })

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
            offX = 222, --charColTwo
            offY = -30 --charRowOne
        },
        text = Locale["labelCHAR_guidButton"]
    })

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
            offX = 222, --charColTwo
            offY = -52 --charRowTwo
        },
        text = Locale["labelCHAR_pInfoButton"]
    })

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
            offX = 222, --charColTwo
            offY = -74 --charRowThree
        },
        text = Locale["labelCHAR_distanceButton"]
    })

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
            offX = 222, --charColTwo
            offY = -95 --charRowFour
        },
        text = Locale["labelCHAR_recallButton"]
    })

    FrameLib:BuildFrame({
        name = "ma_learnlangdropdown",
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

    FrameLib:BuildButton({
        name = "ma_learnlangbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_learnlangbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 40,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 120,
            offY = -4
        },
        text = Locale["ma_Learn"]
    })

    FrameLib:BuildFrame({
        name = "ma_modifydropdown",
        group = "char",
        parent = ma_midframe,
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 315,
            offY = 0
        },
        inherits = "UIDropDownMenuTemplate"
    })

    FrameLib:BuildFrame({
        type = "EditBox",
        name = "ma_modifyeditbox",
        group = "char",
        parent = ma_midframe,
        size = {
            width = 30,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 455,
            offY = -4
        },
        inherits = "InputBoxTemplate"
    })

    FrameLib:BuildButton({
        name = "ma_modifybutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_modifybutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 40,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 485,
            offY = -4
        },
        text = Locale["ma_Modify"]
    })

    FrameLib:BuildFrame({
        name = "ma_resetdropdown",
        group = "char",
        parent = ma_midframe,
        size = {
            width = 40,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 150,
            offY = 0
        },
        inherits = "UIDropDownMenuTemplate"
    })

    FrameLib:BuildButton({
        name = "ma_resetbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_resetbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 40,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 285,
            offY = -4
        },
        text = Locale["ma_Reset"]
    })

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
            offX = 303, --charColThree
            offY = -95 --charRowFour
        },
        text = Locale["labelCHAR_bindSightButton"]
    })

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
            offX = 303, --charColThree
            offY = -117 --charRowFive
        },
        text = Locale["labelCHAR_unbindSightButton"]
    })

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
            offX = 140, --charColOne
            offY = -139 --charRowSix
        },
        text = Locale["labelCHAR_renameButton"]
    })

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
            offY = -139 --charRowSix
        },
        text = Locale["labelCHAR_customizeButton"]
    })

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
            offX = 303, --charColThree
            offY = -139 --charRowSix
        },
        text = Locale["labelCHAR_changeRaceButton"]
    })

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
            offX = 140, --charColOne
            offY = -160 --charRowSeven
        },
        text = Locale["labelCHAR_changeFactionButton"]
    })

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
            offX = 222, --charColTwo
            offY = -160 --charRowSeven
        },
        text = Locale["labelCHAR_combatStopButton"]
    })

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
            offX = 303, --charColThree
            offY = -160 --charRowSeven
        },
        text = Locale["labelCHAR_maxSkillButton"]
    })

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
            offX = 140, --charColOne
            offY = -182 --charRowEight
        },
        text = Locale["labelCHAR_freezeButton"]
    })

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
            offY = -182 --charRowEight
        },
        text = Locale["labelCHAR_unfreezeButton"]
    })

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
            offX = 140, --charColOne
            offY = -204 --charRowNine
        },
        text = Locale["labelCHAR_possessButton"]
    })

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
            offX = 222, --charColTwo
            offY = -204 --charRowNine
        },
        text = Locale["labelCHAR_unpossessButton"]
    })

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
            offX = 303, --charColThree
            offY = -52 --charRowTwo [[offY = -225 --charRowTen]]
        },
        text = Locale["labelCHAR_repairItemsButton"]
    })

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
            offX = 385, --charColFour
            offY = -52 --charRowTwo
        },
        text = Locale["labelCHAR_banButton"]
    })

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
            offX = 385, --charColFour
            offY = -139 --charRowSix
        },
        text = Locale["labelCHAR_morphButton"]
    })

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
            offX = 467, --charColFive
            offY = -52 --charRowTwo
        },
        text = Locale["labelCHAR_appearButton"]
    })

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
            offX = 548, --charColSix
            offY = -52 --charRowTwo
        },
        text = Locale["labelCHAR_createGuildButton"]
    })

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
            offX = 385, --charColFour
            offY = -74  --charRowThree
        },
        text = Locale["labelCHAR_banInfoButton"]
    })

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
            offX = 467, --charColFive
            offY = -74  --charRowThree
        },
        text = Locale["labelCHAR_groupSummonButton"]
    })

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
            offX = 548, --charColSix
            offY = -74  --charRowThree
        },
        text = Locale["labelCHAR_inviteGuildButton"]
    })

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
            offX = 385, --charColFour
            offY = -95 --charRowFour
        },
        text = Locale["labelCHAR_banListButton"]
    })

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
            offX = 467, --charColFive
            offY = -95 --charRowFour
        },
        text = Locale["labelCHAR_summonButton"]
    })

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
            offX = 548, --charColSix
            offY = -95 --charRowFour
        },
        text = Locale["labelCHAR_rankGuildButton"]
    })

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
            offX = 630, --charColSeven
            offY = -30 --charRowOne
        },
        text = Locale["labelCHAR_teleportGroupButton"]
    })

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
            offX = 385, --charColFour
            offY = -117 --charRowFive
        },
        text = Locale["labelCHAR_unbanButton"]
    })

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
            offX = 467, --charColFive
            offY = -117 --charRowFive
        },
        text = Locale["labelCHAR_deleteGuildButton"]
    })

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
            offX = 548, --charColSix
            offY = -117 --charRowFive
        },
        text = Locale["labelCHAR_uninviteGuildButton"]
    })

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
            offX = 630, --charColSeven
            offY = -52 --charRowTwo
        },
        text = Locale["labelCHAR_teleportNameButton"]
    })

    FrameLib:BuildButton({
        name = "ma_mutebutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_mutebutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 630, --charColSeven
            offY = -74  --charRowThree
        },
        text = Locale["ma_mutebutton"]
    })

    FrameLib:BuildButton({
        name = "ma_charaurabutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_charaurabutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 467, --charColFive
            offY = -139 --charRowSix
        },
        text = Locale["ma_Aura"]
    })

    FrameLib:BuildButton({
        name = "ma_charunaurabutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_charunaurabutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 548, --charColSix
            offY = -139 --charRowSix
        },
        text = Locale["ma_UnAura"]
    })

    FrameLib:BuildButton({
        name = "ma_jailabutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_jailabutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 385, --charColFour
            offY = -160 --charRowSeven
        },
        text = Locale["ma_JailAButton"]
    })

    FrameLib:BuildButton({
        name = "ma_jailhbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_jailhbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 467, --charColFive
            offY = -160 --charRowSeven
        },
        text = Locale["ma_JailHButton"]
    })

    FrameLib:BuildButton({
        name = "ma_unjailbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_unjailbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 548, --charColSix
            offY = -160 --charRowSeven
        },
        text = Locale["ma_UnJailButton"]
    })

    FrameLib:BuildButton({
        name = "ma_unmutebutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_unmutebutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 630, --charColSeven
            offY = -95 --charRowFour
        },
        text = Locale["ma_UnMuteButton"]
    })

    FrameLib:BuildButton({
        name = "ma_questaddbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_questaddbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 385, --charColFour
            offY = -182 --charRowEight
        },
        text = Locale["ma_QuestAddButton"]
    })

    FrameLib:BuildButton({
        name = "ma_questcompletebutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_questcompletebutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 467, --charColFive
            offY = -182 --charRowEight
        },
        text = Locale["ma_QuestCompleteButton"]
    })

    FrameLib:BuildButton({
        name = "ma_questremovebutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_questremovebutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 548, --charColSix
            offY = -182 --charRowEight
        },
        text = Locale["ma_QuestRemoveButton"]
    })

    FrameLib:BuildButton({
        name = "ma_damagebutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_damagebutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 385, --charColFour
            offY = -204 --charRowNine
        },
        text = Locale["ma_DamageButton"]
    })

    FrameLib:BuildButton({
        name = "ma_hideareabutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_hideareabutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 548, --charColSix
            offY = -30 --charRowOne
        },
        text = Locale["ma_HideAreaButton"]
    })

    FrameLib:BuildButton({
        name = "ma_showareabutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_showareabutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 467, --charColFive
            offY = -30 --charRowOne
        },
        text = Locale["ma_ShowAreaButton"]
    })

    FrameLib:BuildButton({
        name = "ma_honoraddbutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_honoraddbutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 467, --charColFive
            offY = -204 --charRowNine
        },
        text = Locale["ma_HonorAddButton"]
    })

    FrameLib:BuildButton({
        name = "ma_honorupdatebutton",
        group = "char",
        parent = ma_midframe,
        texture = {
            name = "ma_honorupdatebutton_texture",
            color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
        },
        size = {
            width = 80,
            height = 20
        },
        setpoint = {
            pos = "TOPLEFT",
            offX = 548, --charColSix
            offY = -204 --charRowNine
        },
        text = Locale["ma_HonorUpdateButton"]
    })

    FrameLib:BuildFontString({
        name = "ma_parameterboxtext",
        group = "char",
        parent = ma_midframe,
        text = Locale["label_parameterText"],
        setpoint = {
            pos = "BOTTOMLEFT",
            offX = 222, --charColTwo
            offY = 8
        }
    })

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
            offX = 292,
            offY = 4
        },
        inherits = "InputBoxTemplate"
    })

end
