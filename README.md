# CoinOps GEMS LEDBlinky Integration

This in a WIP for integrated LEDBlinbky into CoinOps Gems

Feel free to create a ticket about suggestions, ideas and imporvements.

## Installation

- Select your Gems version folder and drap & drop the files from `launchers.windows` in your Gems `launchers.windows` folder.
- Drap and drop the folder `plugins` into your Gems root folder
- Generate your `LEDBlinkyInputMap.xml` using `plugins/LEDBlinky/GenLEDBlinkyInputMap.exe` (check this video for more infos [Instructions](https://www.youtube.com/watch?v=opu6NofnyWg))
- Optional: put your LEDBlinky activation keys inside `plugins/LEDBlinky`
- Generate `mame.xml`: to to the mame folder (`emulators/mame`), open a `PowerShell` and type `.\mamee64.exe -listxml > mame.xml`. Move `mame.xml` into `plugins/ledblinky-integration`. _(Need to find a better way but file is too big for github)_

## Options

- You can change the `frontend_default_animation` is `plugins/ledblinky-integration/config.cmd`

## TODO

- Add flag to activate/deactivate LEDBlinky.
- I don't like the fact that I'm using a `.bat` file to save config, should be a `.ini` instead.
- Create a `.bat` file to generate `mame.xml`
- Need to find a way to start LEDBlinky when CoinOps start
- Need to find a way to stop LEDBlinky when CoinOps exit
- Need to test if servostick is working

## Testing

### Gems

- **Genesis** -> **??? (untested)**
- **mame** -> Alien Storm
- **SNES** -> **??? (untested)**

### Gems Plus

- **C64** -> Uridium
- **DC** -> Border Down
- **DK** -> **??? (untested)**
- **Dolphin** -> F-Zero GX
- **Genesis** -> Eco The Dolphin
- **mame** -> Alien Storm
- **mameNEW** -> **??? (untested)**
- **N64** -> Super Mario 64
- **PSP** -> Ultimate Ghosts 'n Goblins
- **PSX** -> Crash Bandicoot 2
- **SegaCD** -> Sonic CD
- **SNES** -> Axelay
- **SNESalt** -> Super Mario World II

## Notes

- If you use an IPAC Ultimate I/O, you will have to configure the board in DInput, Xinput protocol doesn't support it. On IPAC software to map the input you will have use the right joystick instead of the Dpad and will have to invert `Select` and `Start`
