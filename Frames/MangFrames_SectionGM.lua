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

-- Initializing dynamic frames with LUA and FrameLib
-- This script must be listed in the .toc after "MangFrames_PopupFrames.lua"
-- Also some variables are globally taken from MangAdmin.lua

function MangAdmin:CreateMainSection()
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

    -- DisplayAccountGMLevel
    FrameLib:BuildButton(
            {
                name = "GM_displayAccountGMLevelButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_displayAccountGMLevelButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 164,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -10
                },
                text = Locale["labelGM_displayAccountGMLevelButton"]
            }
    )

    -- GM-mode om
    FrameLib:BuildButton(
            {
                name = "GM_GMModeOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_GMModeOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -30
                },
                text = Locale["labelGM_GMOnButton"]
            }
    )

    -- GM-mode off
    FrameLib:BuildButton(
            {
                name = "GM_GMModeOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_GMModeOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -30
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- Fly-mode on
    FrameLib:BuildButton(
            {
                name = "GM_flyModeOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_flyModeOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -50
                },
                text = Locale["labelGM_flyModeOnButton"]
            }
    )

    -- Fly-mode off
    FrameLib:BuildButton(
            {
                name = "GM_flyModeOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_flyModeOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -50
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- God-mode on
    FrameLib:BuildButton(
            {
                name = "GM_godModeOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_godModeOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -70
                },
                text = Locale["labelGM_godModeOnButton"]
            }
    )

    -- God-mode off
    FrameLib:BuildButton(
            {
                name = "GM_godModeOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_godModeOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -70
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- Whispers on
    FrameLib:BuildButton(
            {
                name = "GM_acceptWhispersOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_acceptWhispersOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -90
                },
                text = Locale["labelGM_acceptWhispersOnButton"]
            }
    )

    -- Whispers off
    FrameLib:BuildButton(
            {
                name = "GM_acceptWhispersOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_acceptWhispersOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -90
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- Invisibility on
    FrameLib:BuildButton(
            {
                name = "GM_visibilityOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_visibilityOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -110
                },
                text = Locale["labelGM_visibilityOffButton"]
            }
    )

    -- Invisibility off
    FrameLib:BuildButton(
            {
                name = "GM_visibilityOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_visibilityOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -110
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- Taxicheat on
    FrameLib:BuildButton(
            {
                name = "GM_cheatTaxiOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatTaxiOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -130
                },
                text = Locale["labelGM_cheatTaxiOnButton"]
            }
    )

    -- Taxicheat off
    FrameLib:BuildButton(
            {
                name = "GM_cheatTaxiOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatTaxiOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -130
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- Explore cheat on
    FrameLib:BuildButton(
            {
                name = "GM_cheatExploreMapsOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatExploreMapsOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -150
                },
                text = Locale["labelGM_cheatExploreMapsOnButton"]
            }
    )

    -- Explore cheat off
    FrameLib:BuildButton(
            {
                name = "GM_cheatExploreMapsOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatExploreMapsOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -150
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- Waterwalk on
    FrameLib:BuildButton(
            {
                name = "GM_cheatWaterWalkOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatWaterWalkOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -170
                },
                text = Locale["labelGM_cheatWaterWalkOnButton"]
            }
    )

    -- Waterwalk off
    FrameLib:BuildButton(
            {
                name = "GM_cheatWaterWalkOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatWaterWalkOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -170
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- No casting time on
    FrameLib:BuildButton(
            {
                name = "GM_cheatNoCastTimeOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatNoCastTimeOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -190
                },
                text = Locale["labelGM_cheatNoCastTimeOnButton"]
            }
    )

    -- No casting time off
    FrameLib:BuildButton(
            {
                name = "GM_cheatNoCastTimeOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatNoCastTimeOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -190
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- No cooldown on
    FrameLib:BuildButton(
            {
                name = "GM_cheatNoCooldownOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatNoCooldownOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -210
                },
                text = Locale["labelGM_cheatNoCooldownOnButton"]
            }
    )

    -- No cooldown off
    FrameLib:BuildButton(
            {
                name = "GM_cheatNoCooldownOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_cheatNoCooldownOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -210
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- Account IP Lock on
    FrameLib:BuildButton(
            {
                name = "GM_accountIPLockOnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_accountIPLockOnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 120,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 10,
                    offY = -230
                },
                text = Locale["labelGM_accountIPLockOnButton"]
            }
    )

    -- Account IP Lock off
    FrameLib:BuildButton(
            {
                name = "GM_accountIPLockOffButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_accountIPLockOffButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 40,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 134,
                    offY = -230
                },
                text = Locale["labelGM_offButton"]
            }
    )

    -- GM 4 Level Warning
    FrameLib:BuildFontString(
            {
                name = "ma_gm4warningtext",
                group = "main",
                parent = ma_midframe,
                text = Locale["labelGM_GMLevel4Warning"],
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 310,
                    offY = 0
                }
            }
    )

    -- Account Create
    FrameLib:BuildButton(
            {
                name = "GM_createAccountButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_createAccountButton_texture",
                    color = { 0.5, 0, 0, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 195,
                    offY = -15
                },
                text = Locale["labelGM_createAccountButton"]
            }
    )

    -- Account Delete
    FrameLib:BuildButton(
            {
                name = "GM_deleteAccountButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_deleteAccountButton_texture",
                    color = { 0.5, 0, 0, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 195,
                    offY = -38
                },
                text = Locale["labelGM_deleteAccountButton"]
            }
    )

    -- Account GM Level
    FrameLib:BuildButton(
            {
                name = "GM_setAccountGMLevelButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_setAccountGMLevelButton_texture",
                    color = { 0.5, 0, 0, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 195,
                    offY = -61
                },
                text = Locale["labelGM_setAccountGMLevelButton"]
            }
    )

    -- Account Password
    FrameLib:BuildButton(
            {
                name = "GM_setAccountPasswordButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_setAccountPasswordButton_texture",
                    color = { 0.5, 0, 0, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 195,
                    offY = -84
                },
                text = Locale["labelGM_setAccountPasswordButton"]
            }
    )

    -- Account Addon
    FrameLib:BuildButton(
            {
                name = "GM_setAccountAddonButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_setAccountAddonButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 195,
                    offY = -107
                },
                text = Locale["labelGM_setAccountAddonButton"]
            }
    )

    -- GM List
    FrameLib:BuildButton(
            {
                name = "GM_GMListButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_GMListButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 195,
                    offY = -130
                },
                text = Locale["labelGM_GMListButton"]
            }
    )

    -- GM In-Game
    FrameLib:BuildButton(
            {
                name = "GM_GMInGameButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_GMInGameButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 195,
                    offY = -153
                },
                text = Locale["labelGM_GMInGameButton"]
            }
    )

    -- GM Notify
    FrameLib:BuildButton(
            {
                name = "GM_GMNotifyButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_GMNotifyButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 195,
                    offY = -176
                },
                text = Locale["labelGM_GMNotifyButton"]
            }
    )

    -- GM Message
    FrameLib:BuildButton(
            {
                name = "GM_GMMessageButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_GMMessageButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 288,
                    offY = -15
                },
                text = Locale["labelGM_GMMessageButton"]
            }
    )

    -- Cast
    FrameLib:BuildButton(
            {
                name = "GM_castButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_castButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 288,
                    offY = -38
                },
                text = Locale["labelGM_castButton"]
            }
    )

    -- Cast Back
    FrameLib:BuildButton(
            {
                name = "GM_castBackButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_castBackButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 288,
                    offY = -61
                },
                text = Locale["labelGM_castBackButton"]
            }
    )

    -- Cast Distance
    FrameLib:BuildButton(
            {
                name = "GM_castDistButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_castDistButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 288,
                    offY = -84
                },
                text = Locale["labelGM_castDistButton"]
            }
    )

    -- Cast Self
    FrameLib:BuildButton(
            {
                name = "GM_castSelfButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_castSelfButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 288,
                    offY = -107
                },
                text = Locale["labelGM_castSelfButton"]
            }
    )

    -- Cast Target
    FrameLib:BuildButton(
            {
                name = "GM_castTargetButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_castTargetButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 288,
                    offY = -130
                },
                text = Locale["labelGM_castTargetButton"]
            }
    )

    -- TeleportTo
    FrameLib:BuildButton(
            {
                name = "GM_teleportToButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_listItemButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 288,
                    offY = -153
                },
                text = Locale["labelGM_teleportToButton"]
            }
    )

    -- Teleport Add
    FrameLib:BuildButton(
            {
                name = "GM_teleportAddButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_teleportAddButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 288,
                    offY = -176
                },
                text = Locale["labelGM_teleportAddButton"]
            }
    )

    -- Teleport Delete
    FrameLib:BuildButton(
            {
                name = "GM_teleportDelButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_teleportDelButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 381,
                    offY = -15
                },
                text = Locale["labelGM_teleportDelButton"]
            }
    )

    -- Lookup Taxi
    FrameLib:BuildButton(
            {
                name = "GM_lookupTaxiButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_lookupTaxiButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 381,
                    offY = -38
                },
                text = Locale["labelGM_lookupTaxiButton"]
            }
    )

    -- Lookup Zone
    FrameLib:BuildButton(
            {
                name = "GM_lookupZoneButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_lookupZoneButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 381,
                    offY = -61
                },
                text = Locale["labelGM_lookupZoneButton"]
            }
    )

    -- GoTaxi
    FrameLib:BuildButton(
            {
                name = "GM_goTaxiButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_goTaxiButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 381,
                    offY = -84
                },
                text = Locale["labelGM_goTaxiButton"]
            }
    )

    -- GoTrigger
    FrameLib:BuildButton(
            {
                name = "GM_goTriggerButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_goTriggerButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 381,
                    offY = -107
                },
                text = Locale["labelGM_goTriggerButton"]
            }
    )

    -- GoXY
    FrameLib:BuildButton(
            {
                name = "GM_goXYButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_goXYButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 381,
                    offY = -130
                },
                text = Locale["labelGM_goXYButton"]
            }
    )

    -- GoXYZ
    FrameLib:BuildButton(
            {
                name = "GM_goXYZButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_goXYZButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 381,
                    offY = -153
                },
                text = Locale["labelGM_goXYZButton"]
            }
    )

    --GoZoneXY
    FrameLib:BuildButton(
            {
                name = "GM_goZoneXYButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_goZoneXYButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 381,
                    offY = -176
                },
                text = Locale["labelGM_goZoneXYButton"]
            }
    )

    -- SetJail Alliance
    FrameLib:BuildButton(
            {
                name = "GM_setJailAllianceButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_setJailAllianceButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 474,
                    offY = -15
                },
                text = Locale["labelGM_setJailAllianceButton"]
            }
    )

    -- SetJail Horde
    FrameLib:BuildButton(
            {
                name = "GM_setJailHordeButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_setJailHordeButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 474,
                    offY = -38
                },
                text = Locale["labelGM_setJailHordeButton"]
            }
    )

    -- Pet Create
    FrameLib:BuildButton(
            {
                name = "GM_petCreateButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_petCreateButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 474,
                    offY = -61
                },
                text = Locale["labelGM_petCreateButton"]
            }
    )

    -- Pet Learn
    FrameLib:BuildButton(
            {
                name = "GM_petLearnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_petLearnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 474,
                    offY = -84
                },
                text = Locale["labelGM_petLearnButton"]
            }
    )

    -- Pet UnLearn
    FrameLib:BuildButton(
            {
                name = "GM_petUnLearnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_petUnLearnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 474,
                    offY = -107
                },
                text = Locale["labelGM_petUnLearnButton"]
            }
    )

    -- Pet Talents
    FrameLib:BuildButton(
            {
                name = "GM_petTalentsLearnButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_petTalentsLearnButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 474,
                    offY = -130
                },
                text = Locale["labelGM_petTalentsLearnButton"]
            }
    )

    -- Bank
    FrameLib:BuildButton(
            {
                name = "GM_bankButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_bankButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 474,
                    offY = -153
                },
                text = Locale["labelGM_bankButton"]
            }
    )

    -- Bag
    FrameLib:BuildButton(
            {
                name = "GM_bagButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_bagButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 474,
                    offY = -176
                },
                text = Locale["label_bagButton"]
            }
    )

    -- Screenshot
    FrameLib:BuildButton(
            {
                name = "GM_screenButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_screenButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 567,
                    offY = -15
                },
                text = Locale["labelGM_screenButton"]
            }
    )

    -- Dismount
    FrameLib:BuildButton(
            {
                name = "GM_dismountPlayerButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_dismountPlayerButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 567,
                    offY = -38
                },
                text = Locale["labelGM_dismountPlayerButton"]
            }
    )
    -- List Item
    FrameLib:BuildButton(
            {
                name = "GM_listItemButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_listItemButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 567,
                    offY = -61
                },
                text = Locale["labelGM_listItemButton"]
            }
    )
    -- GridNagivator Title
    FrameLib:BuildFontString(
            {
                name = "ma_gridnavigatortext",
                group = "main",
                parent = ma_midframe,
                text = Locale["labelGM_gridNavigatorText"],
                setpoint = {
                    pos = "TOPRIGHT",
                    offX = -2,
                    offY = 0
                }
            }
    )

    -- GridNavigator Input
    FrameLib:BuildFrame(
            {
                type = "EditBox",
                name = "ma_gridnavieditbox",
                group = "main",
                parent = ma_midframe,
                size = {
                    width = 20,
                    height = 20
                },
                setpoint = {
                    pos = "TOPRIGHT",
                    offX = -29,
                    offY = -41
                },
                maxLetters = 2,
                inherits = "InputBoxTemplate"
            }
    )

    -- GridNavigator North
    FrameLib:BuildButton(
            {
                name = "GM_gridNavigatorAheadButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_gridNavigatorAheadButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 20,
                    height = 20
                },
                setpoint = {
                    pos = "TOPRIGHT",
                    offX = -32,
                    offY = -62
                },
                text = Locale["labelGM_northGridNavigator"]
            }
    )

    -- GridNavigator South
    FrameLib:BuildButton(
            {
                name = "GM_gridNavigatorBackButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_gridNavigatorBackButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 20,
                    height = 20
                },
                setpoint = {
                    pos = "TOPRIGHT",
                    offX = -32,
                    offY = -20
                },
                text = Locale["labelGM_southGridNavigator"]
            }
    )

    -- GridNavigator East
    FrameLib:BuildButton(
            {
                name = "GM_gridNavigatorRightButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_gridNavigatorRightButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 20,
                    height = 20
                },
                setpoint = {
                    pos = "TOPRIGHT",
                    offX = -55,
                    offY = -41
                },
                text = Locale["labelGM_eastGridNavigator"]
            }
    )

    -- GridNavigator West
    FrameLib:BuildButton(
            {
                name = "GM_gridNavigatorLeftButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_gridNavigatorLeftButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 20,
                    height = 20
                },
                setpoint = {
                    pos = "TOPRIGHT",
                    offX = -8,
                    offY = -41
                },
                text = Locale["labelGM_westGridNavigator"]
            }
    )

    -- Parameters Text Info
    FrameLib:BuildFontString(
            {
                name = "ma_parametertext",
                group = "main",
                parent = ma_midframe,
                text = Locale["label_parameterText"],
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 500,
                    offY = -210
                }
            }
    )

    -- Clear Button
    FrameLib:BuildButton(
            {
                name = "GM_clearParameterBoxButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_clearParameterBoxButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 90,
                    height = 15
                },
                setpoint = {
                    pos = "TOPLEFT", ---Correct This Location
                    offX = 620,
                    offY = -208
                },
                text = Locale["label_paramaterClearButton"]
            }
    )

    -- GM Parameters Input
    FrameLib:BuildFrame(
            {
                type = "EditBox",
                name = "GM_parameterInput",
                group = "main",
                parent = ma_midframe,
                size = {
                    width = 260,
                    height = 20
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 470,
                    offY = -225
                },
                inherits = "InputBoxTemplate"
            }
    )

    -- Insta-kill checkbox
    FrameLib:BuildButton(
            {
                type = "CheckButton",
                name = "GM_instantKillModeCheckBox",
                group = "main",
                parent = ma_midframe,
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 567,
                    offY = -174
                },
                text = Locale["labelGM_instantKillModeCheckBox"],
                inherits = "OptionsCheckButtonTemplate"
            }
    )

    -- Speed Slider
    FrameLib:BuildFrame(
            {
                type = "Slider",
                name = "GM_setSpeedSlider",
                group = "main",
                parent = ma_midframe,
                size = {
                    width = 100
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 200,
                    offY = -215
                },
                inherits = "OptionsSliderTemplate"
            }
    )

    -- Speed Reset
    FrameLib:BuildButton(
            {
                name = "GM_resetSpeedButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_resetSpeedButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 45,
                    height = 15
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 225,
                    offY = -236
                },
                text = Locale["label_resetSliderButton"]
            }
    )

    -- Scale Slider
    FrameLib:BuildFrame(
            {
                type = "Slider",
                name = "GM_setScaleSlider",
                group = "main",
                parent = ma_midframe,
                size = {
                    width = 100
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 350,
                    offY = -215
                },
                inherits = "OptionsSliderTemplate"
            }
    )

    -- Scale Reset
    FrameLib:BuildButton(
            {
                name = "GM_resetScaleButton",
                group = "main",
                parent = ma_midframe,
                texture = {
                    name = "GM_resetScaleButton_texture",
                    color = { color.btn.r, color.btn.g, color.btn.b, transparency.btn }
                },
                size = {
                    width = 45,
                    height = 15
                },
                setpoint = {
                    pos = "TOPLEFT",
                    offX = 375,
                    offY = -236
                },
                text = Locale["label_resetSliderButton"]
            }
    )
end
