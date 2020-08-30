# CoinOps GEMS LEDBlinky Integration

 This in a WIP for integrated LEDBlinbky into CoinOps Gems

 Feel free to create a ticket about suggestions, ideas and imporvements.

## Installation
 
- Select your Gems version folder and drap & drop the files in your Gems root folder.
- Generate your `LEDBlinkyInputMap.xml` using `plugins/LEDBlinky/GenLEDBlinkyInputMap.exe` (check this video for more infos [Instructions](https://www.youtube.com/watch?v=opu6NofnyWg))
- Optional: put your LEDBlinky activation keys inside `plugins/LEDBlinky`
- Generate `mame.xml`: to to the mame folder (`emulators/mame`), open a `PowerShell` and type `.\mamee64.exe -listxml > mame.xml`. Move `mame.xml` into `plugins/ledblinky-integration`. *(Need to find a better way but file is too big for github)*

## Options

- You can change the `frontend_default_animation` is `plugins/ledblinky-integration/config.cmd`


## TODO

- I don't like the fact that I'm using a `.bat` file to save config, should be a `.init` instead.
- Find better way for `mame.xml`
- Need to find a way to start LEDBlinky when CoinOps start
- Need to find a way to stop LEDBlinky when CoinOps exit
- Need to test if servostick is working
- Add conf for Border Down
- Move `plugins` folder outside of each Gems folder to only have one, will make maintenance easier

### Gems

- have instructions to launch game `Sonic` on Genesis and `GNC` on SNES, didn't see them on the frontend so not handle by LEDBlinky yet.


## Testing

### Gems

- __Genesis__ -> ???
- __mame__ -> Alien Storm
- __SNES__ -> ???

### Gems Plus

- __C64__ -> Uridium (not working)
- __DC__ -> Border Down (working but no color in conf)
- __DK__ -> ???
- __Dolphin__ -> F-Zero GX (not working)
- __Genesis__ -> Eco The Dolphin (not working)
- __mame__ -> Alien Storm
- __mameNEW__ -> ???
- __N64__ -> Super Mario 64 (not working)
- __PSP__ -> Ultimate Ghosts 'n Goblins (not working)
- __PSX__ -> Crash Bandicoot 2 (not working)
- __SegaCD__ -> Sonic CD (not working)
- __SNES__ -> Axelay (not working)
- __SNESalt__ -> Super Mario World II (not working)


## Notes

- If you use an IPAC Ultimate I/O, you will have to configure the board in DInput, Xinput protocol doesn't support it. On IPAC software to map the input you will have use the right joystick instead of the Dpad and will have to invert `Select` and `Start`
