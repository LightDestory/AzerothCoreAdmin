# Extending AzerothCoreAdmin (ACAdmin)

## Preface

This is a living document, meaning it will grow and change as time goes by. I am using it as a 'scratchpad' to record notes for myself, and perhaps someday, YOU.
It contains snippets and shortcuts to make developing for AzerothCoreAdmin easier and faster.

## Table of Contents

I want to add:

1. [Adding a new command button](#Adding-a-new-command-button)

### Adding a new command button

In order to add a button with a command, four steps are required (in toc order):

1. Make tooltips and button text localized in ./Locales/xxxx.lua
2. Write the function in ./Commands/Commands_xxxx.lua
3. Prototype/init the button, function, text, and tooltip in FunctionInit.lua
4. Draw the button in the ./Frames/MangFrames_Sectionxxxx.lua
