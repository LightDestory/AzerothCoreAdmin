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
      name = "ma_displaylevelbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_displaylevelbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_displaylevelbutton"]
    }
  )

  -- GM-mode om
  FrameLib:BuildButton(
    {
      name = "ma_gmonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gmonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_GMOnButton"]
    }
  )

  -- GM-mode off
  FrameLib:BuildButton(
    {
      name = "ma_gmoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gmoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- Fly-mode on
  FrameLib:BuildButton(
    {
      name = "ma_flyonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_flyonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_FlyOnButton"]
    }
  )

  -- Fly-mode off
  FrameLib:BuildButton(
    {
      name = "ma_flyoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_flyoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- God-mode on
  FrameLib:BuildButton(
    {
      name = "ma_godonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_godonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_GodOnButton"]
    }
  )

  -- God-mode off
  FrameLib:BuildButton(
    {
      name = "ma_godoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_godoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- Whispers on
  FrameLib:BuildButton(
    {
      name = "ma_whisperonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_whisperonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_WhisperOnButton"]
    }
  )

  -- Whispers off
  FrameLib:BuildButton(
    {
      name = "ma_whisperoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_whisperoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- Invisibility on
  FrameLib:BuildButton(
    {
      name = "ma_invisibleonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_invisibleonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_InvisOnButton"]
    }
  )

  -- Invisibility off
  FrameLib:BuildButton(
    {
      name = "ma_invisibleoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_invisibleoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- Taxicheat on
  FrameLib:BuildButton(
    {
      name = "ma_taxicheatonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_taxicheatonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_TaxiOnButton"]
    }
  )

  -- Taxicheat off
  FrameLib:BuildButton(
    {
      name = "ma_taxicheatoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_taxicheatoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- Explore cheat on
  FrameLib:BuildButton(
    {
      name = "ma_mapsonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_mapsonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_mapsbutton"]
    }
  )

  -- Explore cheat off
  FrameLib:BuildButton(
    {
      name = "ma_mapsoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_mapsoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- Waterwalk on
  FrameLib:BuildButton(
    {
      name = "ma_waterwalkonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_waterwalkonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_waterwalkbutton"]
    }
  )

  -- Waterwalk off
  FrameLib:BuildButton(
    {
      name = "ma_waterwalkoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_waterwalkoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- No casting time on
  FrameLib:BuildButton(
    {
      name = "ma_nocasttimeonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_nocasttimeonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_NoCastTimeOnButton"]
    }
  )

  -- No casting time off
  FrameLib:BuildButton(
    {
      name = "ma_nocasttimeoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_nocasttimeoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- No cooldown on
  FrameLib:BuildButton(
    {
      name = "ma_nocooldownonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_nocooldownonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_NoCooldownOnButton"]
    }
  )

  -- No cooldown off
  FrameLib:BuildButton(
    {
      name = "ma_nocooldownoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_cooldownoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- Account IP Lock on
  FrameLib:BuildButton(
    {
      name = "ma_accountlockiponbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_accountlockiponbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_accountlockipbutton"]
    }
  )

  -- Account IP Lock off
  FrameLib:BuildButton(
    {
      name = "ma_accountlockipoffbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_accountlockipoffbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_OffButton"]
    }
  )

  -- GM 4 Level Warning
  FrameLib:BuildFontString(
    {
      name = "ma_gm4warningtext",
      group = "main",
      parent = ma_midframe,
      text = Locale["ma_gm4warning"],
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
      name = "ma_acctcreatebutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_acctcreatebutton_texture",
        color = {0.5, 0, 0, transparency.btn}
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
      text = Locale["ma_acctcreate"]
    }
  )

  -- Account Delete
  FrameLib:BuildButton(
    {
      name = "ma_acctdeletebutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_acctdeletebutton_texture",
        color = {0.5, 0, 0, transparency.btn}
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
      text = Locale["ma_acctdelete"]
    }
  )

  -- Account GM Level
  FrameLib:BuildButton(
    {
      name = "ma_acctgmlvlbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_acctgmlvlbutton_texture",
        color = {0.5, 0, 0, transparency.btn}
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
      text = Locale["ma_acctgmlvl"]
    }
  )

  -- Account Password
  FrameLib:BuildButton(
    {
      name = "ma_acctpasswdbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_acctpasswdbutton_texture",
        color = {0.5, 0, 0, transparency.btn}
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
      text = Locale["ma_acctpasswd"]
    }
  )

  -- Account Addon
  FrameLib:BuildButton(
    {
      name = "ma_acctaddonbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_acctaddonbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_acctaddon"]
    }
  )

  -- GM List
  FrameLib:BuildButton(
    {
      name = "ma_gmlistbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gmlistbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_gmlist"]
    }
  )

  -- GM In-Game
  FrameLib:BuildButton(
    {
      name = "ma_gmingamebutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gmingamebutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_gmingame"]
    }
  )

  -- GM Notify
  FrameLib:BuildButton(
    {
      name = "ma_gmnotifybutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gmnotifybutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_gmnotify"]
    }
  )

  -- GM Message
  FrameLib:BuildButton(
    {
      name = "ma_gmnameannouncebutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gmnameannouncebutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_gmnameannounce"]
    }
  )

  -- Cast
  FrameLib:BuildButton(
    {
      name = "ma_castbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_castbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_cast"]
    }
  )

  -- Cast Back
  FrameLib:BuildButton(
    {
      name = "ma_castbackbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_castbackbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_castback"]
    }
  )

  -- Cast Distance
  FrameLib:BuildButton(
    {
      name = "ma_castdistbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_castdistbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_castdist"]
    }
  )

  -- Cast Self
  FrameLib:BuildButton(
    {
      name = "ma_castselfbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_castselfbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_castself"]
    }
  )

  -- Cast Target
  FrameLib:BuildButton(
    {
      name = "ma_casttargetbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_casttargetbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_casttarget"]
    }
  )

  -- Teleport Add
  FrameLib:BuildButton(
    {
      name = "ma_teleaddbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_teleaddbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_teleaddbutton"]
    }
  )

  -- Teleport Delete
  FrameLib:BuildButton(
    {
      name = "ma_teledelbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_teledelbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_teledelbutton"]
    }
  )

  -- List Item
  FrameLib:BuildButton(
    {
      name = "ma_listitembutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_listitembutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_listitem"]
    }
  )
  
  -- Lookup Taxi
  FrameLib:BuildButton(
    {
      name = "ma_lookuptaxibutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_lookuptaxibutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_lookuptaxi"]
    }
  )

  -- Lookup Zone
  FrameLib:BuildButton(
    {
      name = "ma_lookupzonebutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_lookupzonebutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_lookupzone"]
    }
  )

  -- GoTaxi
  FrameLib:BuildButton(
    {
      name = "ma_gotaxinodebutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gotaxinodebutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_gotaxinode"]
    }
  )

  -- GoTrigger
  FrameLib:BuildButton(
    {
      name = "ma_gotriggerbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gotriggerbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_gotrigger"]
    }
  )

  -- GoXY
  FrameLib:BuildButton(
    {
      name = "ma_goxybutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_goxybutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_goxy"]
    }
  )

  -- GoXYZ
  FrameLib:BuildButton(
    {
      name = "ma_goxyzbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_goxyzbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_goxyz"]
    }
  )

  --GoZoneXY
  FrameLib:BuildButton(
    {
      name = "ma_gozonexybutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gozonexybutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_gozonexy"]
    }
  )

  -- SetJail Alliance
  FrameLib:BuildButton(
    {
      name = "ma_setjail_a_button",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_setjail_a_button_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_SetJail_A_Button"]
    }
  )

  -- SetJail Horde
  FrameLib:BuildButton(
    {
      name = "ma_setjail_h_button",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_setjail_h_button_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_SetJail_H_Button"]
    }
  )

  -- Pet Create
  FrameLib:BuildButton(
    {
      name = "ma_petcreatebutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_petcreatebutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_petcreate"]
    }
  )

  -- Pet Learn
  FrameLib:BuildButton(
    {
      name = "ma_petlearnbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_petlearnbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_petlearn"]
    }
  )

  -- Pet UnLearn
  FrameLib:BuildButton(
    {
      name = "ma_petunlearnbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_petunlearnbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_petunlearn"]
    }
  )

  -- Pet Talents
  FrameLib:BuildButton(
    {
      name = "ma_pettalentslearnbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_pettalentslearnbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_pettalentslearn"]
    }
  )

  -- Bank
  FrameLib:BuildButton(
    {
      name = "ma_bankbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_bankbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_BankButton"]
    }
  )

  -- Bag
  FrameLib:BuildButton(
    {
      name = "ma_bagbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_bagbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_BagButton"]
    }
  )

  -- Screenshot
  FrameLib:BuildButton(
    {
      name = "ma_screenshotbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_screenshotbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_ScreenshotButton"]
    }
  )

  -- Dismount
  FrameLib:BuildButton(
    {
      name = "ma_dismountbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_dismountbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_DismountButton"]
    }
  )

  -- GridNagivator Title
  FrameLib:BuildFontString(
    {
      name = "ma_gridnavigatortext",
      group = "main",
      parent = ma_midframe,
      text = Locale["gridnavigator"],
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
      name = "ma_gridnaviaheadbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gridnaviaheadbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["N"]
    }
  )

  -- GridNavigator South
  FrameLib:BuildButton(
    {
      name = "ma_gridnavibackbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gridnavibackbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["S"]
    }
  )

  -- GridNavigator East
  FrameLib:BuildButton(
    {
      name = "ma_gridnavirightbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gridnavirightbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["E"]
    }
  )

  -- GridNavigator West
  FrameLib:BuildButton(
    {
      name = "ma_gridnavileftbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gridnavileftbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["W"]
    }
  )

  -- Parameters Text Info
  FrameLib:BuildFontString(
    {
      name = "ma_parametertext",
      group = "main",
      parent = ma_midframe,
      text = Locale["ma_parameters"],
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
      name = "ma_gmclearbutton",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_gmclearbutton_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_inputClear"]
    }
  )

  -- GM Parameters Input
  FrameLib:BuildFrame(
    {
      type = "EditBox",
      name = "ma_gmParametersInput",
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
      name = "ma_instantkillbutton",
      group = "main",
      parent = ma_midframe,
      setpoint = {
        pos = "TOPLEFT",
        offX = 567,
        offY = -174
      },
      text = Locale["ma_instakill"],
      inherits = "OptionsCheckButtonTemplate"
    }
  )

  -- Speed Slider
  FrameLib:BuildFrame(
    {
      type = "Slider",
      name = "ma_speedslider",
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
      name = "ma_speedsliderreset_button",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_speedsliderreset_button_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_resetSlider"]
    }
  )

  -- Scale Slider
  FrameLib:BuildFrame(
    {
      type = "Slider",
      name = "ma_scaleslider",
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
      name = "ma_scalesliderreset_button",
      group = "main",
      parent = ma_midframe,
      texture = {
        name = "ma_scalesliderreset_button_texture",
        color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
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
      text = Locale["ma_resetSlider"]
    }
  )
end
