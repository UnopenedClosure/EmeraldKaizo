# EmeraldKaizo
Lua script containing a set of convenience commands tailored to hardcore Nuzlockers of Pokemon Emerald Kaizo 

## Credit
Credit to toxic for original creation of most of the functions

## Supported Functions:
* pre-status
* edging
* changing weather on Routes 119 and 123
* exporting Pokemon into a Showdown-compliant format

## Requirements:
* development build of mGBA, available here: https://mgba.io/downloads.html#development-downloads

## How-To:
1. Download the EK.lua script
1. Start up the mGBA dev build and load Emerald Kaizo
1. In the upper menu, go to Tools > Scripting
1. In the resulting pop-up, go to File > Load script
1. Select the downloaded EK.lua file
1. To execute commands, enter the chosen command in the prompt at the bottom of the window and press Enter or click Run


## Notes:
* Some functions cannot have their changes undone, so it is advised to save the game first
* Most commands which modify the game state in some way will require you to change to a different game screen to make the changes visible

## Available Function APIs (also available [here](https://pastebin.com/raw/e8DZRSPp)):
* `sleep(slot)` - Pre-sleeps chosen slot in party
* `poison(slot)` - Poisons chosen slot in party
* `paralyze(slot)` - Paralyzes chosen slot in party
* `burn(slot)` - Burns chosen slot in party
* `freeze(slot)` - Freezes chosen slot in party
* `bedtime()` - Pre-sleeps entire party
* `sethp(slot,HP)` - sets hp of slot to specified hp
* `exportparty()` - exports showdown calc verison of party to console
* `exportall()` -  exports showdown calc verison of party first 5 boxes + party to console
* `edgeparty()` - edges entire party
* `edge(slot)` - edges slot
* `setrain(route, status)` - sets rain on/off on route 119 or 123
