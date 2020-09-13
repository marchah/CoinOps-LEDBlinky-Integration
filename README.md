# CoinOps LEDBlinky Integration

This in a WIP for integrated LEDBlinbky into CoinOps.

Feel free to create a ticket about suggestions, ideas and imporvements.

## Install

### Install With Compatible Hardware

- Select your CoinOps version folder and drag & drop the files from `launchers.windows` in your CoinOps `launchers.windows` folder.
- Drag and drop the folder `plugins` into your CoinOps root folder
- Generate your `LEDBlinkyInputMap.xml` using `plugins/LEDBlinky/GenLEDBlinkyInputMap.exe` (check this video for more infos [Instructions](https://www.youtube.com/watch?v=opu6NofnyWg))
- Optional: put your LEDBlinky activation keys inside `plugins/LEDBlinky`
- Generate `mame.xml`: go to the folder `plugins/ledblinky-integration/scripts` and double click on `GenerateMameXML.bat`

### Install Without Compatible Hardware

- Select your CoinOps version folder and drag & drop the files from `launchers.windows` in your CoinOps `launchers.windows` folder.
- Drag and drop the folder `plugins` into your CoinOps root folder
- Go to folder `plugins/ledblinky-integration`, open `config.cmd` and set `is_ledblinky_activated` to `0`

## Usage

- Start: double click on `plugins/ledblinky-integration/scripts/StartLEDBlinky.bat` (LEDBlinky will also start when you launch any game)
- Stop: double click on `plugins/ledblinky-integration/scripts/StopLEDBlinky.bat` (you can also exit it on the "minify" [idk the real name] taskbar)

## Options

- You can deactivated LEDBlinky by setting `is_ledblinky_activated` to `0` in `plugins/ledblinky-integration/config.cmd`
- You can change the `frontend_default_animation` is `plugins/ledblinky-integration/config.cmd`

## Console Color Rules

_If you have a better idea don't hesitate to create a ticket_

- Shoulder: `White`
- Trigger: `Brown`

## TODO

- Fix a better animation that `random.lwax`, it's very annoying
- Deactivate LEDBlinky voice at startup
- I don't like the fact that I'm using a `.bat` file to save config, should be a `.ini` instead.
- Create a `.bat` file to generate `mame.xml`
- Need to find a way to start LEDBlinky when CoinOps start
- Need to find a way to stop LEDBlinky when CoinOps exit
- Need to test if servostick is working

## Testing

What is you don't have LEDBlinky capable hardware and still want to help testing? Well good news you can.
Just follow the install instructions and set `is_ledblinky_activated` to `0` in `plugins/ledblinky-integration/config.cmd`.
You will be able to play your games like a stock CoinOps and it will help test that the customs `bat` launchers are working properly.

### Diamonds

- **mame** -> Alien Storm
- **mameNEW** -> **??? (untested)**

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
