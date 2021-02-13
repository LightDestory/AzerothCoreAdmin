# Extending AzerothCoreAdmin (ACAdmin)

## Preface

This is a living document, meaning it will grow and change as time goes by. I am using it as a 'scratchpad' to record notes for myself, and perhaps someday, YOU.
It contains snippets and shortcuts to make developing for AzerothCoreAdmin easier and faster.

## Table of Contents

I want to add:

1. [Adding a new command button](#Adding-a-new-command-button)
2. [Adding a new language](#Adding-a-new-language)

### Adding a new command button

In order to add a button with a command, four steps are required (in toc order):

1. Make tooltips and button text localized in ./Locales/xxxx.lua
2. Write the function in ./Commands/Commands_xxxx.lua
3. Prototype/init the button, function, text, and tooltip in FunctionInit.lua
4. Draw the button in the ./Frames/MangFrames_Sectionxxxx.lua

### Adding a new language

**So far, the add-on supports only enUS. To add multi-language support, which was present on the TrinityAdmin v2, it is necessary to retrieve and adapt the code of that version. My adaption aim to a fast release, so I am not going to adapt that feature for now. Any contribution is appreciated.**

The add-on uses two files containing strings:

1. %Your-Language%.lua, which contains the actual text that will be displayed in-game
2. strings.lua, which contains a set of patterns that will be used by the add-on to retrieve information. There patterns must match with the language that the servers uses to print system messages!

In order to add a language support, six steps are required (in toc order):

1. Translate tooltips and button text into your desired language in a file located in ./Locales/xxxx.lua, **changing the function name into Return_%Your-Language%()**.
2. If your server uses translated system messages, inside ./Locales/strings.lua create a function that will return the internal-usage translated strings patterns
3. Inside AzerothCoreAdmin.toc file locate the line where is enUS.lua and add in the next line your new %Your-Language%.lua file
4. Inside AzerothCoreAdmin look up for the language registration section and add the following:

        Locale:RegisterTranslations("%Your-Language%", function() return Return_%Your-Language%() end)  

5. If your server **DOES NOT** use translated system messages, add the following in the strings registration section:

        Strings:RegisterTranslations("%Your-Language%", function() return ReturnStrings_enUS() end)

   If your server **DOES** use translated system messages, add the following in the strings registration section:

        Strings:RegisterTranslations("%Your-Language%", function() return ReturnStrings_%Your-Language%() end)
6. Inside AzerothCoreAdmin.lua, locate the function _LangDropDownInitialize()_ and uncomment your language from the list.
