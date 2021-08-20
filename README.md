# CoinOps LEDBlinky Integration

This in a WIP for integrated LEDBlinbky into CoinOps.

Feel free to create a ticket about suggestions, ideas and imporvements.

## Installation

<details>
<summary>Install With Compatible Hardware</summary>
  
- Select your CoinOps version folder and drag & drop the files from `launchers.windows` in your CoinOps `launchers.windows` folder.
- Drag and drop the folder `plugins` into your CoinOps root folder
- Generate your `LEDBlinkyInputMap.xml` using `plugins/LEDBlinky/GenLEDBlinkyInputMap.exe` (check this video for more infos [Instructions](https://www.youtube.com/watch?v=opu6NofnyWg))
- Optional: put your LEDBlinky activation keys inside `plugins/LEDBlinky`
- Generate `mame.xml`: go to the folder `plugins/ledblinky-integration/scripts` and double click on `GenerateMameXML.bat`

</details>


<details>
<summary>Install Without Compatible Hardware</summary>
  
- Select your CoinOps version folder and drag & drop the files from `launchers.windows` in your CoinOps `launchers.windows` folder.
- Drag and drop the folder `plugins` into your CoinOps root folder
- Go to folder `plugins/ledblinky-integration`, open `config.cmd` and set `is_ledblinky_activated` to `0`
</details>


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

- Find a better animation than `random.lwax`, it's very annoying => create a basic animation just displaying CoinOps menu buttons (shoulder or trigger to switch between letters).
- Deactivate LEDBlinky voice at startup
- I don't like the fact that I'm using a `.bat` file to save config, should be a `.ini` instead.
- Need to find a way to start LEDBlinky when CoinOps start
- Need to find a way to stop LEDBlinky when CoinOps exit
- Need to test if servostick is working
- Should i use only one `.bat` launchers instead of one per emulator? Make less script files but may loose in customisation.

## Next 2

<details>
<summary>Pack handled</summary>

#### Arcade Official Trusted Pack

- Atomiswave: missing individual game colors.
- MAME: Missing some games colors & controls.
- Model 2: **LEDBLINKY NOT SUPPORTED**
- Model 3: **LEDBLINKY NOT SUPPORTED**
- Naomi: missing individual game colors.

### Dreamcast Official TRUSTED PACK

Missing individual game colors

### Nintendo 64 Official TRUSTED PACK

Missing individual game colors

### PlayStation 1 Official TRUSTED PACK

Missing individual game colors
  
</details>

## Testing

What is you don't have LEDBlinky capable hardware and still want to help testing? Well good news you can.
Just follow the install instructions and set `is_ledblinky_activated` to `0` in `plugins/ledblinky-integration/config.cmd`.
You will be able to play your games like a stock CoinOps and it will help test that the customs `bat` launchers are working properly.


<details>
<summary>Pack handled</summary>
  
### Next 2

#### Arcade Official Trusted Pack

- **Atomiswave** -> Demolish Fist
- **mame** -> 1941
- **Model 2** -> Daytona USA
- **Model 3** -> Daytona USA 2
- **Naomi** -> Power Stone

#### Dreamcast Official TRUSTED PACK

- **Dreamcast Official** -> 18 Wheller
- **Dreamcast Redream Official SUB** -> 18 Wheller (forgot how to switch emulator or maybe the game for testing is not correct)

#### Nintendo 64 Official TRUSTED PACK

- **Nintendo 64 Official** -> 007 Golden Eye
- **Nintendo 64 Project64 SUB** -> 007 Golden Eye (forgot how to switch emulator or maybe the game for testing is not correct)

#### PlayStation 1 Official TRUSTED PACK

- **Playstation 1 Official** -> Ape Escape
  
</details>

## Scripts

Scripts are located in `plugins/ledblinky-integration/scripts`

- `DebugLEDBlue.bat`: light all the LEDs in blue
- `DebugLEDGreen.bat`: light all the LEDs in green
- `DebugLEDRed.bat`: light all the LEDs in red
- `DebugLEDWhite.bat`: light all the LEDs in white
- `GenerateMameXML.bat`: generate mame.xml and place it in the correct folder
- `StartLEDBlinky.bat`: start LEDBlinky
- `StopLEDBlinky.bat`: exit LEDBlinky

## Notes

- If you use an IPAC Ultimate I/O, you will have to configure the board in DInput, Xinput protocol doesn't support it. On IPAC software to map the input you will have use the left joystick instead of the Dpad and will have to invert `Select` and `Start`
