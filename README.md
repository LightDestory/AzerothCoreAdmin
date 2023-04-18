<a name="readme-top"></a>

<!-- Presentation Block -->
<br />

<div align="center">

  <a href="https://github.com/LightDestory/AzerothCoreAdmin">
    <img src="https://raw.githubusercontent.com/LightDestory/AzerothCoreAdmin/master/.github/assets/images/presentation_image.png" alt="Preview" width="90%">
  </a>

  <h2 align="center">AzerothCoreAdmin</h2>
  
  <p align="center">
      General interface add-on which will help an admin in-game of AzerothCore-based private servers
  </p>
  
  <br />
  <br />

</div>

<!-- ToC -->

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#book-about-the-project">📖 About The Project</a>
    </li>
    <li>
      <a href="#gear-getting-started">⚙️ Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#usage">Usage</a></li>
        <li><a href="#notes">Notes</a></li>
      </ul>
    </li>
    <li><a href="#scroll-to-do">📜 TO-DO</a></li>
    <li><a href="#dizzy-contributing">💫 Contributing</a></li>
    <li><a href="#handshake-support">🤝 Support</a></li>
    <li><a href="#warning-license">⚠️ License</a></li>
    <li><a href="#hammer_and_wrench-built-with">🛠️ Built With</a></li>
    <li><a href="#pray-credits">🙏 Credits</a></li>
  </ol>
</details>

<!-- About Block -->

## :book: About The Project

AzerothCoreAdmin (_ACAdmin_) is a general interface add-on which will help admins and GMs in-game of AzerothCore-based private servers.

This add-on is an adaption for AzerothCore-based servers of the TrinityAdmin add-on which supports only TrinityCore-based servers. Moreover, TrinityAdmin is derived from MangAdmin, which supports MaNGOS-based server.

A lot of people contributed to make this amazing add-on, it is very hard to list all of them because I don't know much about MangAdmin and TrinityAdmin developers. The _Credits_ section may not be complete, feel free to request a modification.

_The adaption is based on the most updated fork available of TrinityAdmin for 3.3.5a clients, which is maintained and developed by SuperStyro._

<details>
<summary>🖼️ Gallery</summary>
<img src="https://raw.githubusercontent.com/LightDestory/AzerothCoreAdmin/master/.github/assets/images/ACAdmin_GM.png" alt="Preview" width="90%">
<img src="https://raw.githubusercontent.com/LightDestory/AzerothCoreAdmin/master/.github/assets/images/ACAdmin_CHAR.png" alt="Preview" width="90%">
<img src="https://raw.githubusercontent.com/LightDestory/AzerothCoreAdmin/master/.github/assets/images/ACAdmin_WHO.png" alt="Preview" width="90%">
</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Setup Block -->

## :gear: Getting Started

### Installation

**These steps are required for locales to properly create the new local tables to store tickets and 'who' information'.**

1. Unzip the add-on archive into your _Addons_ folder;
2. **On the server**, you may wish to review the security level requirements for certain GM commands:
    - If your GMs do not have level 4 security level, they wont be able to use the WHO tab;
3. Click the _AzerothCoreAdmin icon_ on the minimap frame. **Do NOT** open AzerothCoreAdmin any other way just yet;
4. Click the _Tickets tab_. If you receive and error, **DO NOT** close it, just click the Tickets tab again;
5. Click the _Change Language button_ to reload the add-on;
6. Click the _AzerothCoreAdmin icon_ on the minimap frame. **Do NOT** open TrinityAdmin any other way just yet;
7. Click the _Who tab_. If you receive and error, **DO NOT** close it, just click the Who tab again;
8. Click the _Change Language button_ to reload the addon;

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Usage

Log-in in an AzerothCore server and click on the _ACAdmin_ icon displayed on the minimap.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## :scroll: TO-DO

- [x] GM
- [x] CHAR
- [ ] NPC
- [ ] GOB
- [x] TELE
- [ ] TICKETS
- [ ] MISC
- [ ] SERVER
- [x] LOG
- [ ] WHO

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Contribute Block -->

## :dizzy: Contributing

If you are interested in contributing, please refer to [Contributing Guidelines](.github/CONTRIBUTING.md) for more information and take a look at open issues. Ask any questions you may have and you will be provided guidance on how to get started.

Thank you for considering contributing.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Support Block -->

## :handshake: Support

If you find value in my work, please consider making a donation to help me create, and improve my projects.

Your donation will go a long way in helping me continue to create free software that can benefit people around the world.

<p align="center">
<a href='https://ko-fi.com/M4M6KC01A' target='_blank'><img src='https://raw.githubusercontent.com/LightDestory/AzerothCoreAdmin/master/.github/assets/images/support.png' alt='Buy Me a Hot Chocolate at ko-fi.com' width="45%" /></a>
</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- License Block -->

## :warning: License

The content of this repository is distributed under the GNU GPL-3.0 License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Built With Block -->

## :hammer_and_wrench: Built With

- [Lua](https://www.lua.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## :pray: Credits

_AzerothCoreAdmin is derived from TrinityAdmin which is derived on MangAdmin._

We must thank the following for creating the fundaments of this amazing project:

- __MangAdmin developer team__,who maintained and developed [MangAdmin](https://github.com/jmeinke/mangadmin).
- __iotech__, who maintained and developed [TrinityAdmin v2](https://www.ownedcore.com/forums/world-of-warcraft/world-of-warcraft-emulator-servers/wow-emu-programs/271778-addon-release-trinityadmin-3-2-2a-mangadmin.html)
- __SuperStyro__, who maintained and developed [TrinityAdmin v2.5](https://github.com/superstyro/TrinityAdmin), the fork on which AzerothCoreAdmin is based.

AzerothCoreAdmin also contains code donated by:

- Pryd (teleport work)
- Gimp (teleport work)
- Shocker (various)

Moreover, thanks to:

- Locale Team: iotech, Ravenheart, Gimp, Dracula70, MrLakeC, Namida, Amok, Lyrr123, borgotech, Morpheux, Georgios, Kitharo
- TrinityAdmin(MangAdmin) is developed by: Josh (Project Owner), iotech, infamousblob, Atreus420, killat200623, dragonfrost, Necroblack and SuperStyro

<p align="right">(<a href="#readme-top">back to top</a>)</p>
