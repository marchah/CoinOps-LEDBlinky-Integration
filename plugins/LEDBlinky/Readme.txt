LEDBlinky – Arcade LED Control Software
For use with LED Controllers from Groovy Game Gear, Ultimarc, and Wolfware Tech.
Integrated support for the following front-ends: MaLa, AtomicFE, Attract-Mode, GameEx, PinballX, HyperSpin, LaunchBox/BigBox, and Maximus Arcade.
Stand-alone operation for any FE.

Trial Version
-------------
The Trial Version of LEDBlinky is functional with limitations; Animations can only be enabled for the FE Start-up and FE Active events. Pixelcade features can only be enabled for the FE Start-up and FE Scroll events. Joystick Digital Restriction features are not available. Cabinet LEDs features are not available. The LEDBlinky Animation Editor will only save the first 10 frames. 
Additionally, the trial version includes a visual/audio/splash window which is displayed for a few seconds each time LEDBlinky is started.

How To Purchase
---------------
To purchase LEDBlinky and all LEDBlinky support applications, please use PayPal via this Link; https://www.LEDBlinky.net/purchase.htm.
Purchasing the software will remove all Trial Version limitations, including the start-up splash screen. After the transaction is complete you will receive two (2) Registration Files via your PayPal email address. You should receive the file within 48 hours (usually much sooner). Place the Registration Files in your LEDBlinky folder. The Registration Files are personalized to your name and email - they can not be distributed to any other person. Thanks!

How To Install
--------------
Download the latest installation package here; https://www.LEDBlinky.net/download.htm. Run the LEDBlinkySetup.exe program. If your front-end software is MaLa, GameEx, PinballX, AtomicFE, or Attract-Mode then install LEDBlinky into the front-end \plugins folder and select the relevant front-end plugin. Otherwise you may install LEDBlinky into any folder. 

How To Upgrade
--------------
Download the latest installation package here; https://www.LEDBlinky.net/download.htm. Run the LEDBlinkySetup.exe program. The installation folder must match your current \LEDBlinky folder. Only updated files will be installed and your existing configuration will not be altered.

Usage
-----
Note: This is very basic documentation. Please refer to the "Install and Config.pdf" for complete documentation.

1) Run GenLEDBlinkyInputMap.exe. This app will allow you to generate the "LEDBlinkyInputMap.xml" file required by LEDBlinky, Controls Editor, and Animation Editor. The Input Map file defines the connection between the LED Controller (hardware) ports, and the Input Codes (Keyboard, Trackball, Joysticks, etc). It also defines the three ports used by each RGB LED (if any). This mapping should never change unless you rewire the LED Controller or reprogram your keyboard encoder. Click "Save" when you are done.

2) Run LEDBlinkyConfig.exe. This app will allow you to configure all LEDBlinky features.

3) From the "FE" menu, select your Front-End software (current options: AtomicFE, GameEx, HyperSpin, LaunchBox, MaLa, Maximus Arcade, PinballX, Other).

4) From the "MAME Config" tab, set the paths to the required (and optional) MAME files and folders. If you wish to set the LED colors based on the actual game control panel, set the path to Colors.ini. You may skip this step if you do not intend on running the MAME emulator.

5) From the "Game Options" tab, you can enable LEDBlinky to blink each button and speak the button "action". You can also configure LEDBlinky to play an LED animation, speak the game name, and speak a custom message, all before the game starts. Other Game options are available.

6) From the "FE Options" tab, you can configure various "Attract" features when the FE starts, when the screen saver is active, and when the FE quits. MaLa, AtomicFE, GameEx, PinballX, HyperSpin, LaunchBox, and Maximus Arcade specific features are also available.
Note: Features are only available for FE's that support these events (Start, Screensaver, Quit); see Stand-Alone usage below. 

7) From the "Misc Options" tab, you can configure Speech options, LED Cabinet Lighting (animate LEDs independently from the game controls), the number of players on your control panel, and Cocktail mode.

8) If you are running any non-MAME emulators, click the "Controls Editor" option on the "Tools" menu. This app will allow you to configure the controls, colors, voices, and input codes for the FE or any emulator or game. Unlike MAME, other emulators must be configured manually. If an emulator or game is not configured, no controls will light up. You can also define default colors/intensities and define controls as 'Always On'.


It's Not Working?
-----------------
LEDBlinky will report any major configuration errors when you exit your FE.

If LEDBlinky is not displaying any errors, but it's still not working as expected, the first place to look for help is the LEDBlinky Support page; https://www.ledblinky.net/Support.htm. 

Next, try using the LEDBlinky Troubleshooting application; LEDBlinkyTroubleshooter.exe. The app is self-explanatory and may provide a solution to your issue.

As another option, you can post questions to the Software group on the ArcadeControls.com forum. The current LEDBlinky support thread can be found here; http://forum.arcadecontrols.com/index.php/topic,73905.0.html. If you start a new thread, please include the word “LEDBlinky” in the subject.

If you're still having problems and you would like help, turn on the debug log; From the "Misc Options" tab, check the "Enable Debug Log" option. Run your FE and any game that is not working as expected. This will generate a Debug.ZIP file containing all your configuration and debug files. Email this file (debug.ZIP) along with an explanation of your problem to arzoo@LEDBlinky.net.

Note: RocketBlinky is a third-party tool optionally included with LEDBlinky. Support for RocketBlinky is NOT provided by LEDBlinky. Please see the Readme.txt in the RocketBlinky folder for installation and support options.


Running LEDBlinky in Stand-Alone Mode
-------------------------------------
Any FE that supports the ability to launch an external application and pass parameters (e.g. Rom name) can use LEDBlinky. Commands can also be sent from the Windows CMD or Run dialog, or using a batch or script file. The LEDBlinky stand-alone program file is "LEDBlinky.exe". 

If your FE cannot launch an external application prior to starting a game, you can still use LEDBlinky with MAME; from the LEDBlinkhy configuration app, check the 'Use MAME to Trigger the Game Start/Stop Events' option on the 'MAME Config' tab. Then launch LEDBlinky with the FE Start parameter (see below) prior to starting your FE. You can even use this option without any FE, just using MAME or any variant that supports MAME output messages.
 
You should only enable the LEDBlinky features for events that your FE supports. For example, if your FE can launch LEDBlinky.exe when the FE first starts, then you can use the FE Startup Animation and other Startup options. If your FE can launch LEDBlinky.exe when it starts/stops a screensaver, then you can use the LEDBlinky screensaver options. 

The LEDBlinky application can be launched multiple times (once for each command) but only one instance will remain in system memory.

LEDBlinky command line syntax:

Game Start Event
  LEDBlinky.exe <rom>
  LEDBlinky.exe <rom> <emulator>
Note: Use double quotes around parameters if the parameter values may include spaces.
Note: If you start a game without specifying the emulator, the last selected emulator will be used, or MAME is the default.

Game Stop Event
  LEDBlinky.exe 4

Screensaver Start Event
  LEDBlinky.exe 5

Screensaver Stop Event
  LEDBlinky.exe 6

List Change Event
  LEDBlinky.exe 8
  LEDBlinky.exe 8 <emulator>
Note: Use double quotes around parameters if the parameter values may include spaces.
Note: If you don't specify the emulator, the last selected emulator will be used, or MAME is the default.

FE Start Event
  LEDBlinky.exe 1
Note: FE Start is the default when no parameters are specified.

FE Quit Event
  LEDBlinky.exe 2

Animation Start
  LEDBlinky.exe <animation>.lwax <option> <option>
  LEDBlinky.exe random.lwax
  LEDBlinky.exe audio.lwax <animation>.lwax
Note: <option> parameter can be SingleLoop (or S) or NoClear (or N)
      'SingleLoop' runs the animation from beginning to end one time.
	  'NoClear' keeps any LEDs in their current state prior to running the animation (does not turn off all LEDs).
Note: Animation files must reside in the LEDBlinky\lwa folder.

Animation Stop
  LEDBlinky.exe 11 <option>
Note: <option> parameter can be NoClear (or N)
	  'NoClear' keeps any LEDs in their current state after stopping the animation (LEDs remain in last frame state).

Load MAME Controller File
  LEDBlinky.exe 12 <controller file>
Note: If the filename is specified without the full path, the controller file must reside in the MAME cfg folder.

Reset Ultrastik 360 (U360)
  LEDBlinky.exe 13
  LEDBlinky.exe 13 <map name>
Note: The Map Name refers to the .um files in the /jdr folder. Typical values: analog, joy2way, joy4way, joy8way, joydiag, vjoy2way. Default is joy8way.
Note: If no U360 joysticks are connected when LEDBlinky first starts, this command can be used to rescan/reinitialize the U360 joystick.

Set LED Port(s)
  LEDBlinky.exe 14 <port>,<intensity>|<port>,<intensity>|...
  LEDBlinky.exe 14 <port label>,<R/G/B/S>,<intensity>|<port label>,<R/G/B/S>,<intensity>|...
  LEDBlinky.exe 14 <controller type>,<controller id>,<port>,<intensity>|<controller type>,<controller id>,<port>,<intensity>|...
Note: The Controller Type can be specified as the LED Controller Name or 2 character abbreviation. Use the LEDBlinky Configuration Help Menu for a list of supported LED Controller names and abbreviations. Example: LEDWiz or LW, PACLED64 or PL, IPACUltimateIO or IP, PACDrive or PD, Howler or HO.
Note: If only the Port and Intensity is specified, the value will be set on all active LED Controllers.

Set Game (Light game controls)
  LEDBlinky.exe 15
  LEDBlinky.exe 15 <rom>
  LEDBlinky.exe 15 <rom> <emulator>
Note: Set Game is the same as "Game Start Event" but only lights the controls (no other Game Start options are run).
Note: Use double quotes around parameters if the parameter values may include spaces.
Note: If you don't specify the rom, the last game started will be used. If you don't specify the emulator, the last selected emulator will be used, or MAME is the default.


Version History
---------------
LEDBlinky/LEDBlinkyConfig/LEDBlinkyControlsEditor/GenLEDBlinkyInputMap v7.1.0.1 7/15/2020
-Fixed issue with Ultimarc hardware sending false J1HATSWITCHU (Joystick POV/HAT Up) data.

LEDBlinky v7.1 6/14/2020
-Added plugin and integration for Attract-Mode FE.
-Added support for game controllers (joysticks) when detecting button press for "Speech Abort" and "FE Speak Controls" features.
-Improved FE support for game controllers (joysticks).
-Improved flexibility for locating FE settings file.
-Added error trap for invalid values in Controls.ini file.
-Modified to light ports based on GameEx joystick values for up/down/left/right.
LEDBlinkyControlsEditor v7.1
-Added support for game controllers (joysticks) when using Quick Code feature.
-Added Pn_BUTTON11 and Pn_BUTTON12 to new button list for all players.
GenLEDBlinkyInputMap v7.1
-Added support for game controllers (joysticks) when using Quick Code feature.
LEDBlinkyConfig v7.1
-Added Attract-Mode FE options.
-Added support for game controllers (joysticks) when selecting button for "Speech Abort" and "FE Speak Controls" features.
-Improved flexibility for specifying FE settings path.
-Tab for specific FE options (MaLa, HyperSpin, etc) no longer includes the label 'Options'.
LEDBlinkyAnimationEditor v7.1
-Minor update to performance when using color and intensity sliders.
LEDBlinkyTroubleshooter v7.1
-Minor update to MAME in-game menu description.

LEDBlinky v7.0.4 2/29/2020
-Added option in Controls Editor to configure any emulator to ignore GameQuit commands. This is a work-around for front-ends that incorrectly send a GameQuit command immediately after launching a game.
-Added 64 bit plugin for GameEx (LEDBlinky_GX64.dll).
-Added 64 bit plugin for PinballX (LEDBlinky_PX64.dll).
-Modified LEDBlinkyTroubleshooter to correctly identify MAME emulators using new Controls Editor MAME/Not-MAME configuration option.

LEDBlinky v7.0.3 2/12/2020
-Added option in Controls Editor to configure any emulator without "MAME" in the name to be considered MAME. Inversely, any emulator with "MAME" in the name can be configured as not a MAME emulator. Prior to this, LEDBlinky only determined MAME or not MAME based on "MAME" in the emulator name.
-Added MAME positional controls (P1_POSITIONAL, P1_POSITIONAL_V, P2_POSITIONAL, P2_POSITIONAL_V, etc.).
-Added option to Cancel when quitting support applications with unsaved data.
-Modified to handle MAME Output values with spaces in the name.
-Included latest Ultimarc driver (v2.3) which includes I-PAC Ultimate I/O dual gamepad mode. This does not effect LEDs on the controller. Note: Due to firmware limitations, only two (ID1 and ID2) Ultimate I/O's can be used simultaneously.

LEDBlinky v7.0.2 11/29/2019
-Modified to correctly light buttons for latest version of LaunchBox/BigBox. This will also light player 2, player 3, and player 4 buttons when configured in BigBox.
-Modified to allow lighting the FE Controls and running the FE Active Animation at the same time. Prior to this these options were mutually exclusive.
-Modified to allow for multiple MAME Output values (Controls/LED Ports) for each output signal (LED0, LED1, etc).
-Modified to prevent FE controls turning on for a second when using both Light FE Controls and Speak Controls On FE Start options are both enabled. 

LEDBlinky v7.0.1 10/22/2019
-Modified command-line parameter to default to FEStart (1) when no parameters are specified. This behaviour can be overridden by setting FEStartDefault=0 in Settings.ini 'Other' section.
LEDBlinkyTroubleshooter v7.0.1
-Modified to display base input code (used by GenLEDBlinkyInputMap) when input code maps to a more specific value. For example; display JOYCODE_1_LEFT when input code is JOYCODE_1_XAXIS_LEFT_SWITCH.

LEDBlinky v7.0.0.1 10/5/2019
-Modified to always pre-load audio library when using LEDBlinky command line option to run an audio animation.
-Modified to use Controller file (if specified) when "Use MAME Default Control Mapping for Other Emulators" option is enabled.

LEDBlinky v7.0 9/26/2019
-Added Pixelcade integration. Pixelcade is an LED Marquee for Arcade Machines. https://pixelcade.org/
-Modified to handle case when MAME control is configured with multiple input codes separated by spaces (normally separated by OR).
-Added additional LaunchBox/BigBox controls; NextMusicTrack and PreviousMusicTrack.
-Fixed bug with NanoLED 60 port firmware.
-LEDBlinky now installs and/or upgrades with setup package rather than zip file.
-RocketBlinky included as optional installation component.
-Removed FE Button Flash options. This feature has been deprecated. Although not recommended, you can still enable/disable the Button Flash options by manually editing the Settings.ini file; Under [FEOptions] set the FEButtonFlash value (0=Off 1=Active LEDS 2=All LEDs) and the FEButtonFlashSpeed value (25 - 200).
-Modified trial version limitations. If you are using the LEDBlinky trial version, please see the "Trial Version" limitations at the top of this document before upgrading.
LEDBlinkyTroubleshooter v7.0
-Modified to handle non-US date local.
-Fixed memory access violation when debug file is empty and cabinet controller is defined.
-Fixed memory access violation when debug file has incomplete data.

LEDBlinky v6.6.0.1 2/7/2019
-Modified to not use color adjust value (if specified) when intensity value is zero.
-Modified to use first available Microsoft Windows voice when displaying splash screen for trial version.
-Modified NanoLED support for latest firmware (nanoled_19b.ufw) which enables 60 ports on the hardware.

LEDBlinky v6.6 1/6/2019
-Added support for Ultimarc NanoLED controller. Note; the NanoLED firmware may require an upgrade for LEDBlinky to correctly identify the hardware. If your NanoLED is not running the required firmware, LEDBlinky will detect the NanoLED as a PacLED64. Please contact Ultimarc for the latest NanoLED firmware.
-Modified to use minimized data for mame.xml to improve startup performance.
-Fixed bug when receiving the first Game Start event which would cause LEDBlinky to use the last ROM in Colors.ini as selected ROM when none is specified.
-Fixed bug when using No LEDs Mode for JDR and non-MAME ROM or emulator default controls (as defined using the Controls Editor) only include the Primary Control. In this case the JDR setting for the ROM would not get set.
-Included the Controls.ini file with LEDBlinky installation. Prior to this it was expected that the user download the latest version, but this file has not been updated and is no longer supported.
LEDBlinky_GX v6.5
-Added option when GameEx is configured to run a random game from the screen saver.
LEDBlinky_PX v6.5
-Fixed bug when launching LEDBlinky Configuration app from the PinballX plugin "Configure" button.

GenLEDBlinkyInputMap v6.5.0.1 11/6/2017
-Modified to update LED after clicking Set Port when Color Adjust value is changed.
ControlsEditor v6.5.0.1
-Added 'Copy Player 1 Controls w/Overwrite' menu option. This will remove any existing controls for players 2 through 4 and replace them with player 1 controls.

LEDBlinky v6.5 9/19/2017
-Added option to not speak joystick up/down/left/right actions. This can be useful when lighting joysticks based on inputs rather than primary control.
-Added <Audio Animation> to FE Start-up Animation selection list. Audio Animation cannot be used in conjunction with FE Start-up Animation Single Loop duration.
-Added option to include always active controls when Demo Game Controls is enabled.
-Fixed bug which prevented Demo Game Controls option from working when the FE Start-up Animation was set to run for a specified number of seconds (not Single Loop) or when the Game Start Delay was set greater than zero seconds.

LEDBlinky Animation Editor v6.5
-Added Copy and Paste functions. All frame data for an LED can be copied to another LED. Data can be pasted to the end of the animation, wrap the animation, or extend the animation.
-Added Set Color/Intensity functions for all frames or current frame to end.
-Added feature to view a grid of the entire animation. From the grid you can select any LED on any frame.
-Added option to display LED Name under each LED when in Animation Edit mode.
-Added status hint for drag/move when selecting multiple LEDs in Layout mode.
-Modified to optionally use current Intensity/Color or defined default Intensity/Color when toggling an LED ON for the first time (via double-click or pop-up menu). This behavior is defined in the Layout Options (Layout menu). Prior to this an LED without an intensity value could not be toggled ON (nothing would happen), which could be confusing.
-Modified to select LED (and de-select all other LEDs) with Right mouse click. This makes it clear which LED the pop-up menu will affect. If CTRL is pressed, the right click will not select LED and the pop-up menu will not be displayed.
-Modified to better support loading LED Controller Independent animations into controller layouts with RGB LEDs.
-Moved 'Show Frame XML' from Animation menu to View menu.
-Modified keyboard short-cuts; Ctrl-A for Edit Select All LEDs, Ctrl-N for Edit Animation Edit Mode, Ctrl-Alt-Z for Edit Redo.
-Fixed and updated selected button label in status bar.
-Fixed 'Edit/Selected LEDs' menu to only show 'LED-Wiz Built-in Blinking' menu option when in Animation editing mode.
-Modified to clear display when loading an invalid layout (missing Input Map).
-Modified trial version to save first 10 frames.

LEDBlinky v6.4 12/5/2016
-Added LEDBlinky Output System. Create virtual LED hardware controller(s) for LEDBlinky to broadcast output data over TCP or UDP protocols. Multiple virtual controllers can be defined, each with a unique PC Port Number. Custom and third-party hardware can consume the data and drive LEDs.
-Added support for LaunchBox Controller values (in addition to Keyboard values) from BigBoxSettings.xml file.
-Modified to ignore backup versions of MAME default.cfg. For example, default_copy.cfg will not be loaded.
-Fixed bug when using Ultimarc U-HID hardware. The controller was detected but no LEDs would light up.
GenLEDBlinkyInputMap v6.4
-Added support for LEDBlinky Output System; Add new LED controller and select 'LEDBlinky Output'.
-Added support for multiple keyboard or keyboard encoders.
-Updated to only allow selection of LED Controller ID value in the valid range for the selected LED Controller.
-Fixed bug when changing LED controller ID so that the 'Mapped' column correctly specified Yes or No after the change.
LEDBlinkyControlsEditor v6.4
-Updated to allow configuration of front-end controls when FE = Other (prior to this the FE button was disabled). This is only useful for configuring the front-end primary control.
-Updated to prevent adding duplicate FE control.
LEDBlinkyOutputTest
-New application for testing LEDBlinky output data.

LEDBlinky v6.3.0.1 9/26/2016
- Modified to use LaunchBox BigBoxSettings.xml file.
- Modified 'Demo Game Controls' behavior to fire after Game Selected event when previous event was Emulator Selected or List Selected. Prior to this update the first Game Selected event after Emulator or List Selected would not demo the selected game controls.
- Fixed bug introduced in LEDBlinky v6.3.0.0 which prevented 'Demo Game Controls' feature from working.

LEDBlinky v6.3 9/16/2016
- Added full support for LaunchBox front-end.
- Added Color Adjust feature. This allows a global offset value (+/-) to be applied to individual ports so that color variations between buttons or other illuminated controls can be fine-tuned. From GenLEDBlinkyInputMap select 'Show Color Adjustments' on the Edit menu.
- Modified to identify mame.exe version and for version 0.176 and later, if necessary update mame.ini to enable legacy Output System.
- Modified to update LEDBlinky.xml with missing nodes for PinballX. Prior to this the nodes had to be added manually.
- Modified to optionally specify the emulator for the List Selected command (8). The List Selected command is normally only used by the front-end software. Example; <path>\LEDBlinky\LEDBlinky.exe 8 <emulator>
- Modified to optionally specify the emulator for the Game Selected command (9). The Game Selected command is normally only used by the front-end software. Example; <path>\LEDBlinky\LEDBlinky.exe 9 <rom> <emulator>
- Added support for control types found in newer versions of MAME.xml; 16-Way Joystick, Only Buttons, etc.
- Fixed bug introduced in MAME.xml version .173 (<control> node repeated for each player) which caused Primary Control names to repeat.
- Removed List Selected event prerequisite from Game Selected and Screen Saver Start events.
ControlsEditor v6.3
- Fixed bug introduced in MAME.xml version .173 (<control> node repeated for each player) which caused Primary Controls to repeat.
- Fixed bug when importing MAME games with multiple primary controls; the primary control name/voice was incorrectly repeated.
GenLEDBlinkyInputMap v6.3
- Added Color Adjust feature. This allows a global offset value (+/-) to be applied to individual ports so that color variations between buttons or other illuminated controls can be fine-tuned. Select 'Show Color Adjustments' on the Edit menu.
MAMEOutputTest v6.3
- Added menu option to display which versions of the MAME Output System work with LEDBlinky.
LEDBlinkyTroubleshooter v6.3
- Added support for MAME Output System issues.

LEDBlinkyAnimationEditor v6.2.2.3 2/14/2016
- Fixed bug which prevented Get LED Color/Intensity menu option and Fade Up / Fade Down menu options from working when only a single LED hardware controller was in use.

LEDBlinky v6.2.2.3 2/7/2016
- Modified to use Player 1 Start and Coin color (defined with Controls Editor) for Player 2 Start and Coin when game is defined as Alternating. Prior to this the Player 2 Start and Coin would default to max intensity (white).
Controls Editor v6.2.2.3
- Added four Pn_CUSTOM controls for each player for non-MAME games. Note: The Pn_CUSTOM controls are only available with a new installation of LEDBlinky. If you wish to use them for an existing installation (upgrade), please send a request to arzoo@LEDBlinky.net.

LEDBlinky v6.2.2.2 1/9/2016
- Updated to load Mame.xml 0.169 (and later). Parsing issue would cause LEDBlinky to freeze without any error.
- Fixed intermittent access violation on exit caused by audio function library. This may have been introduced when audio function library was updated (v6.2.2.0).

LEDBlinkyControlsEditor v6.2.2.1 12/21/2015
- Fixed bug when copying START1 or COIN1 control.
- Fixed display bug introduced in v6.2.2.0 with Use ROM/Game As Speech Default option.

LEDBlinky v6.2.2.0 12/20/2015
- Modified to ignore FEGameQuit command from HyperSpin when RockerLauncher process is in memory. 
- Modified to correctly identify primary control for MAME games not found in Controls.ini when using mame.xml version 0.162 or later.
- Modified to use ROM/Game name as default for speaking the game name when a ROM/Game is not defined in the Controls Editor or a Name (Voice) is not specified.
- Recompiled with latest UltraStik 360 function library - UltraStik32.dll. This is required for LEDBlinky to detect newer UltraStik 360 firmware.
- Recompiled with latest audio function library - bass.dll v2.4.11.0
- Includes latest Ultimarc hardware function library - PacDrive32.dll.
LEDBlinky Controls Editor v6.2.2.0
- Added option to use ROM/Game name as default for speaking the game name when a ROM/Game is not defined in the Controls Editor or a Name (Voice) is not specified. This is useful when the Emulator's ROM/Game names are human readable.
- Modified to import MAME games from mame.xml version 0.162 and later.
- Fixed 'Unknown Control [JOY] in Mame.xml' error.
- Fixed bug on New Control window which prevented 'CP Mapped Only' option from displaying any inputs unless LED Controller was connected.
- Fixed minor UI bug when displaying 'Global Pulse' field.

LEDBlinky v6.2.1.0 7/4/2015
- Added 'NoClear' parameter to Animation Start command. This keeps any LEDs in their current state prior to running the animation (does not turn off all LEDs).
- Added 'NoClear' parameter to Animation Stop command. This keeps any LEDs in their current state after stopping the animation (LEDs remain in last frame state).
- Modified to support MAME.xml version 0.162 and later.
- Modified to prevent game control LEDs from turning on and then immediately off prior to speaking/blinking the game controls when configured to use the Speak/Blink On Game Start and Demo Game Controls options. This only occurred when using the Start Game Event from command line mode.  
Animation Editor v6.2.0.1
- Fixed bug which caused application to crash when one or more RGB LEDs did not have all three ports (Red, Green, and Blue) wired and/or configured.
Controls Editor v6.2.0.1
- Modified to prevent setting a Name/Voice value for Start or Coin buttons. The Name/Voice value for Start and Coin buttons is constant for all ROMs/Games and is defined in Settings.ini.

LEDBlinky v6.2 1/19/2015
- Added native support for PinballX via plugin. All features are available.
- Added new command line option to manually light the controls for a specified game.
- Updated PacDrive32.dll via Ultimarc. Provides better performance for Ultimarc controllers.
- Modified to ignore false Game Quit command from GameEx when running screen saver.
- Modified to not change ServoStik mode when pausing and un-pausing MAME (this was only necessary for UltraStik 360 and GP-Wiz49).
- Updated error message when missing audio animation files.
- Fixed bug which prevented audio animation from running from command line unless Debug Log was also enabled.
- Fixed bug which caused FE Active animation to run twice at startup.
- Fixed bug which caused an Access Violation error when using Audio Animations and one or more RGB LEDs did not have all three ports defined in the Input Map.

LEDBlinky v6.1 8/29/2014
- Added option to speak and blink the start and coin buttons on game start.
- Added option to speak and blink the FE Controls on startup.
- Added option to run the FE start animation for a single loop or a variable time specified in seconds.
- Added variable Game Start delay in seconds. This option will add a delay after the FE game start event before LEDBlinky runs the configured Game Start options.
- Added option to load MAME configuration files (mame.xml, controls.ini, colors.ini) at start-up rather than when the emulator (MAME) is selected for the first time. Parsing the files before any animations start running will speed up the load process.
- Added new command line option to manually set one or more ports.
- Improved performance when loading animation files.
- Fixed bug which caused all PacDrive buttons to blink when speaking FE controls.
- Fixed bug which prevented LEDBlinky from running in No LEDs Mode.
- Fixed bug which prevented an Audio Animation from running correctly when an Emulator/ROM was configured as a Jukebox but had no controls specified.
- Fixed bug which prevented an Audio Animation from running correctly when using the Color/Intensity Spectrum mode unless the Debug Log was enabled.
- Fixed bug which prevented FE Active Animation from working when Random Montage was selected.
- Modified Button Flash feature to prevent flashes from queuing up when a button or joystick is held down. The ButtonFlashPreventQDelay value in Settings.ini specifies the minimum delay (ms) between button presses.
- Improved default voice actions when speaking HyperSpin controls; added pause after "Player 1..." and "Player 2...".
LEDBlinkyConfig
- Modified so the 'Light Player Start and Coin Buttons' option is only enabled when the 'Light Game Controls' option is checked.
LEDBlinkyTroubleshooter
- Enhanced to display all instances of a Game/ROM when run multiple times in the same session. 
- Updated UltraStik problem analysis.
- Fixed false indication that Input Map had been changed when analysing LEDBlinky test run from the Controls Editor.

LEDBlinky (including all support apps) v6.0 5/30/2014
- Added support for iPAC Ultimate I/O Controller.
- Added support for Howler LED Controller.
- Support for legacy animation files with .lwa extension has been removed.
- Changed all hardware references from 'Device' to 'LED Controller'.
LEDBlinkyConfig
- Removed Debug Verbose option. Debug log data now always includes verbose messages.
GenLEDBlinkyInputMap
- Data now stored in XML format (rather than INI format). New data file name: LEDBlinkyInputMap.xml.
- Automatically converts old data file (DevicePort-Input.ini) to new data file (LEDBlinkyInputMap.xml).

LEDBlinky v5.1.0.3 1/01/2014
- Modified LEDBlinky to ignore FEGameQuit command from HyperSpin when HyperLaunch process is in memory. A bug was introduced with HyperLaunch (v2 and v3) which causes HyperSpin to send an invalid FEGameQuit command to LEDBlinky while an emulator is still active. HyperSpin is not currently supported so a workaround was required in LEDBlinky.
- Replaced 4-Way Diagonal UltraStik map (JoyDiag.um) with file from UltraMap installation. The original LEDBlinky version is no longer functional with newer u360 firmware. This is only included with full installation.
LEDBlinkyTroubleshooter v5.1.0.3
- Minor dialog message update.

LEDBlinky v5.1.0.2 3/23/2013
- Added new LEDBlinky command line option to rescan/reinitialize Ultrastik 360 (u360) joysticks. This can be used with swappable control panels.
- Added Hyperspin Skip Up Number and Skip Down Number values to the list of spoken FE controls.
LEDBlinkyTroubleshooter v5.1.0.2
- Fixed bug which caused app to crash when debug log contained data from a non-verbose debug session with no Emulator Start event.

LEDBlinkyAnimationEditor v5.1.0.1 12/25/2012
- Fixed bug which prevented the use of the LEDWiz built-in blink/fade features.

LEDBlinky v5.1.0.1 12/5/2012
- Modified to evaluate any MAME Output State greater than zero as ON for the LED(s) state, otherwise OFF. Prior to this only MAME Output State = 1 was considered ON.
MAMEOutputTest v1.0.0.2
- Added actual 'State' value (rather than just on/off).
LEDBlinkyTroubleshooter v5.1.0.1
- Fixed bug which caused app to crash when debug log contained data from a non-verbose debug session.

LEDBlinky v5.1 9/26/2012
- Added new option to specifiy unique animations on a game-by-game basis. Games which do not have a unique animation specified will continue to use the selected default animation.
- Added new option to specify Cabinet animations for the following events; FE Start, FE Quit, FE Active, FE Screen Saver, FE List Change, Game Start, Game Play, and Game Pause.
- Added Randome Montage to FE Active Animation list.
- Modified FE Screen Saver behavior; when a FE Active animation is selected and a FE Screen Saver animation is not selected, the FE Active animation will stop running when the screen saver is active. Prior to this modfication, the FE Active animation would continue to run while the screen saver was active. You can replicate the original behavior by specifying the same animation for both FE Active and FE Screen Saver.
- Modified FE List Change animation behavior when "Random" is selected; a random animation will now run each time the FE list is changed. Prior to this modification, a random animation was only selected for the first list change event.
- Added support for Ultimarc ServoStik; ServoStik(s) will be switched to 4-way mode for 2-way and 4-way games, all other games will switch to 8-way.
- Increased Primary Instance wait time from 2 seconds to 5 seconds; this should reduce the occurance of timeout errors.
Animation Editor v5.1
- Added new option to create device independent (generic) animations that will run on all compatible LED controllers for use with any system regardless of the LED configuration or layout.
LEDBlinky Troubleshooter v5.1
- New application to help troubleshoot various LEDBlinky configuration issues.

LEDBlinky v5.0.0.5 3/11/2012
- Added new LEDBlinky command line option to load a MAME controller file. This can be used in conjunction with a controller remap utility.
- Modified LEDBlinky to read mame.xml controls when specified with "joy" and "ways" attributes.
- Handle case when \lwa folder does not contain any animation files and <Random> is selected.

LEDBlinky v5.0.0.4 11/4/2011
- Added detection of Advanced Keyboard controls for GameEx.
GameEx Plugin v5.0.0.0
- Fixed bug which prevented FE List Change animation from running for some GameEx menu changes.

LEDBlinky v5.0.0.3 10/19/2011
- Fixed bug which prevented buttons from lighting after a MAME game was unpaused and the "Game Play Animation For Jukebox Only" option was enabled.

LEDBlinky v5.0.0.2 10/11/2011
- Modified LEDBlinky to run any legacy animation (included with the installation) on the PACLED64. Prior to this enhancement, only the CurtainClose.lwax animation would run on the PACLED64.

LEDBlinky v5.0.0.1 2/1/2011
- Modified LEDBlinky to speak and blink the primary control. Prior to this enhancement, the primary control did not blink while the name was spoken.
- Fixed bug which caused PacDrive.dll to crash when running in No LEDs Mode.
Controls Editor v5.0.0.1
- Modified to prevent importing an unknown ROM/Game with the emulator name = OTHER. OTHER is a reserved name used by the Controls Editor for the default controls group.
- Added P1_FAVORITES and P2_FAVORITES buttons for HyperSpin.

LEDBlinky v5.0.0.0 12/31/2010
- Added support for Ultimarc Pac-LED64 LED Controller.
- Modified LEDBlinky to prevent lighting Player Start and Coin buttons when emulator and/or ROM is designated as a jukebox.
- Fixed bug which prevented LEDBlinky from responding to MAME Pause events if the "MAME Outputs" option was not enabled.
Controls Editor v5.0.0.0
- Fixed bug which prevented the LEDBlinky test feature from functioning.
- Modified to turn off all LEDs after using LEDBlinky test feature.

LEDBlinky v4.0.0.3 9/14/2010
- Modified LEDBlinky to prevent Access Violation Error when required configuration files (controls.ini or mame.xml) are not specified.
- Modified LEDBlinky so that the FE List Change animation will not run when the command-line Game Start command is executed.
Configuration App v4.0.0.1
- Added code to trap for invalid audio input error (37) when selecting the Audio Animation tab.

LEDBlinky v4.0.0.2 6/17/2010
- Added Joystick Button support for HyperSpin.
- Modified LEDBlinky to resolve the "Launch.bat could not be written" error generated by Maximus Arcade.
- Fixed bug which prevented LEDBlinky from lighting the trackball when the GameEx FE is active.
- Modified GameEx trial version startup.

LEDBlinky v4.0.0.1 5/3/2010
- Fixed bug which could cause FE to lose focus when splash screen is displayed.

LEDBlinky v4.0 5/1/2010
- Moved to Trial Versin / Shareware distribution model.
- Updated to use custom UltraStik 360 restrictor plate values.
- Modified FE Active Animation when <Random> is selected; prior to this update a random file was selected one time when FE started. Now a random file is selected each time the FE Active animation is started (after Game Exit, Screen Saver Exit, etc.).
- Reduced disk I/O when selecting random animation.
- Fixed bug: When using HyperSpin with the Demo mode and a Demo Delay > 0, the game buttons may turn off at the game start event.
- Fixed bug: When using HyperSpin with the Demo mode and FE Active Animation set to <Audio Animation>, the audio animation may not resume after exiting a game.
GenLEDBlinkyInputMap v4.0
- Added Copy/Paste menu options to quickly copy and then paste port values for RGB LEDs.
- Added additional defaults to list of port labels.
- Fixed bug: Port Inputs are no longer automatically set for RGB LEDs when clicking the Quick Key button.
LEDBlinkyConfig v4.0
- Fixed bug which caused Access Violation Error when using "No LEDs Mode".
GameEx Plugin v4.0
- Fixed bug which caused wrong game to load when selecting from GameEx Favorites or Most Recent lists.
- Fixed bug which could cause plugin to incorrectly identify the LEDBlinky folder and display a WriteToFile error.

LEDBlinky v3.8.1 11/8/2009
- New Game Play Animation For Jukebox Only option - allows the game play animation to only effect jukebox apps.
- Added "Preload Animation Library" option. This should be used when none of the audio animation features are enabled but an external audio command (ie. LEDBlinky.exe audio.lwax) will be used after LEDBlinky has already loaded.
- Updated to handle MAME roms that use the game driver to remap keys in source (Asteroids for example). These roms may set a keycode value to "DEFAULT" in the game cfg file. This may only occur in later versions of MAME (.133 and up?).
- Fixed bug: When using JDR mode (UltraStik or GP-Wiz49) and not using MAME Outputs option LEDBlinky would crash when starting ROMs that used output messages.
- Fixed bug: Game name or control action may be spoken incorrectly by the text-to-speech engine even thought the Test button in the Controls Editor sounds correct. From LEDBlinky some spoken words were 'spelled' out by the speech engine.
- Fixed bug: LEDWiz Global Pulse Speed (Emulator <default> controls) is now correct set when using the Game Play animation.
- Fixed bug caused by Maximus Arcade when using the FE Active animation.
LEDBlinkyControlsEditor v3.8.1
- Enhanced to allow a control group (ROM/Game) to be designated as a Jukebox.
- Modified to prevent creating ROM/Game with name <default> without checking the Default option.
- Fixed bug: When copying non-MAME game to a MAME game, Input Codes are no longer copied.
GenLEDBlinkyInputMap v3.8.1
- Added "Trackball" to default list of port labels.

LEDBlinky v3.8.0.1 9/30/2009
- New Audio Animation features.
- New Game Play Animation option - animate LEDs not in use by current game.
- Enhanced LEDBlinky to allow Demo Mode feature when using the FE Active Animation feature.
- Enhanced MAME Output processing - Initial messages will not be lost when messages starts prior to LEDBlinky completing any game start features. Multiple LEDs will light when a control is assigned to more than one.
- Fixed bug: When not using a colors.ini file, LEDBlinky will now correctly use the colors defined in the MAME default control group.
- Fixed bug: When using MAME Outputs, LEDBlinky will now return to the correct lit buttons after exiting a Pause state.
- Better integration with Maximus Arcade.
- Updated GameEx plugin to work with later versions of GameEx.
LEDBlinkyControlsEditor v3.8
- Fixed bug which prevented controls for a default emulator from being reordered to the top of the list.
GenLEDBlinkyInputMap v3.8
- Enhanced to light up the selected LED port.
LEDBlinkyAnimationEditor v1.7.2
- Enhanced Color Transition feature to build smoother gradients.

LEDBlinky v3.7.4.3 4/28/2009
MaLa Plugin v3.7.4.2
- Fixed bug which caused invalid error "Control List and Control Speech List do not have the same number of values". This error occured when running a MAME game with no CloneOf and not defined in Controls.ini.
- Fixed bug which prevented 'Button Flash' feature from working unless 'Speak and Blink FE Controls' feature was also enabled.
- Fixed bug which prevented one game from working - Escape From The Planet of Robot Monsters (eprom).
LEDBlinkyAnimationEditor v1.7.1.2
- Fixed minor xml formatting bug - Value attribute now alines when using both LEDWiz and PacDrive.

LEDBlinkyControlsEditor v3.7.4.2 3/21/2009
- Enhanced to remove ROM/Game from Import Unknown list when game is added manually.
- Fixed bug: Unknown Games list was not permanently updated when exiting editor.
- Fixed bug: Intermittent memory fault error on exit from editor caused by Text-to-Speech library.

LEDBlinky v3.7.4 3/10/2009
- New Controls Editor Tool. The application allows you to specify controls, colors, speech, and input code mapping for all emulators, roms, or batch files (including MAME override values). Manual editing of multiple control files is no longer required. Data has been merged into a single xml file.
- Added 'Button Flash' feature which will flash all or active buttons when any is pressed. Button Flash is only enabled when the FE is active (not during game play).
- Added new 'FE List Change' animation feature. The animation will play whenever the FE changes lists (or emulators). This feature may not work for all FEs - for some FEs it may only fire when changing emulators.
- LEDBlinky will keep track of any emulators or ROMs/games for which no controls are defined. Using the Controls Editor, you can import the unknown games and then set up their controls.
- Combo buttons are now supported - you can configure a game to blink and speak actions for multiple buttons at the same time.
- Added 'SingleLoop' parameter to Animation Start command line syntax. Specify 'S' or 'SingleLoop' after the .lwax file to run throught the animation sequence one time.
- LEDBlinky now has native support for Maximus Arcade (v2.10 official release or later).
- Added 'Quick Key' feature to the Generate Input Map application - this should make it a bit easier to configure LEDBlinky.
- Added support for lighting a trackball when HyperSpin FE is active.
- New configuration file; NewInputCodes.ini. This file is used to add new or altered MAME Input Codes when required for future MAME releases.
- Modified LEDBlinky when using joystick digital restriction for u360 or 49-Way joysticks to set the mode to 4-way when MAME is paused (and return to the mode required by the game when MAME is unpaused). This allows for MAME in-game control configuration for games that use 2-way (horizontal) joysticks.
- Fixed bug which prevented LEDBlinky from using MAME .cfg files beyond version .124 due to an xml layout change.
- Fixed bug which prevented LEDBlinky from lighting the start and coin buttons with the correct colors when using the 'Light Player Start and Coin Buttons' option.
- Fixed bug when speaking primary controls - removed unwanted characters. For example; Left Paren, Right Paren, etc.
- Fixed bug which turned off all LEDs even when using 'No LEDs Mode' - this was a problem when using LEDBlinky for joystick mapping and other software to control LEDs.
- Removed 'Save Complete' message from LEDBlinky Config app - it bugged me.
- Minor update to debug messages (including MaLa plugin) - the non-Verbose debug mode now provides more concise messages.
- Verbose Debug Mode now zips all debug files into Debug.zip and then deletes the original files.

LEDBlinky v3.7.3 9/27/2008
- LEDBlinky now has native support for HyperSpin.
- Added support to MaLa plugin for new PluginConfiguration event.
- Added option to run LEDBlinky without any LEDs. This allows the speech and joystick digital restriction features to work without any LED control devices.
- Fixed bug with command line mode when launching a game which has a numeric rom name (like 1942).
LEDBlinkyAnimationEditor v1.7.1
- Added new Display Resize feature. This allows for larger virtual control panel layouts.

LEDBlinky v3.7.2 8/10/2008
- Updated for enhanced Ultimarc library (pacdrive.dll) - LEDBlinky now supports the Ultimarc U-HID controller. Thanks to Headkaze for the dll support.
- Updated for enhanced mame output library (mame.dll) - resolves possible memory leak. Thanks to Headkaze for the dll support.
- Updated to use new UltraStik library (ultrastik.dll) - LEDBlinky no longer requires installing the UltraMap software to use the U360 digital restriction feature. Physical restrictor plates are also supported. Thanks to Headkaze for the dll support.
- Minor update; After "un-pausing' MAME, all MAME Output LEDs are restored to their values prior to the "pause". 
- Added new option to exclude selected animations from "Random" feature. With this option enabled, any animation uniquely selected for specific features will not be included when random animations are selected.
LEDBlinkyAnimationEditor v1.7
- Added new Undo/Redo feature. The Undo/Redo is only available for Animation editing (not Layout editing).
- Added new Fade effect. Fades are fully customizable and can be inserted or overlaid into the animation.
- Added new Color Transition effect. Color Transitions are fully customizable and can be inserted or overlaid into the animation.
- Added validation to detect when an animation is loaded that was not originally designed for the current layout. The animation must be saved using a new name.
- Added validation to prevent nested Goto/Repeat loops.
- Fixed bug when saving original .lwa file so that file must be saved with .lwax extension.
- Fixed bug which could alter goto/repeat loops when deleting a frame.

v3.7.1 (AE v1.6)	5/12/2008
- Added new feature to allow stand-alone operation with any FE that cannot be configured to launch LEDBlinky prior to starting a game. This option will also allow stand-alone operation without any FE - just using MAME or MAMEUI.

v3.7.0.1 (AE v1.6)	5/4/2008
- Fixed bug with LEDBlinky; when using a MAME Controller file and launching a NeoGeo game, the buttons did not light correctly.

v3.7.0.0 (AE v1.6)	4/28/2008
- Added new feature to speak and blink the front-end controls. This feature is activated by a configured button (key).
- Added new LEDAnimate SDK. The LEDAnimate.dll library can be used to run .lwax and .lwa files using LED-Wiz and/or PAC-Drive controllers. Examples provided for Visual Basic and Delphi. The LEDAnimate SDK is provided as a separate download package.
- Minor update to the Configuration App - the front-end unique features (for MaLa, AtomicFE, and GameEx) have been moved from the "FE Options" tab to their own tab; for example "MaLa Options".
- Enhanced AtomicFE game controls demo when quickly scrolling through game lists.
- Fixed bug with LEDBlinky which caused events to drop when using command-line parameters after the app was launched via the MaLa plugin.
- Fixed bug with GameEx plugin which caused errors when the debug log was not in use.

v3.6.0.2 (AE v1.6)	4/9/2008
- Updated LEDBlinky to function with default intensity/color values when the Control-Color profiles are not defined. This simplifies the initial configuration.
- Modified MaLa plugin to handle case when Emulator has no executable file - for example, when using batch files.

v3.6.0.1 (AE v1.6)	3/27/2008
- Added new feature to light LEDs based on the primary control (8-Way Joystick, 4-Way Joystick, Spinner, etc.).
- Added new game start feature to speak the primary control(s).
- Added new feature to set the GP-Wiz49 or UltraStik digital restriction based on the currently selected game's primary control.
- Added new feature to play animations in a "Random Montage" mode. Random Montage will select animations from the lwa folder and play a single loop of each - in effect randomly stringing all the animations together. This option is available for the Screen Saver and Game Pause animations.
- Added new file: Controls_override.ini. This file allows you to customize the Controls data without modifying the Controls.ini file.
- Added new command-line parameters to load, play, and stop LED animations on the fly.
- Enhanced command-line processing.
- Enhanced "Abort Speech" feature - now works for both the FE and MAME. You can also specify a single key of your choice as the Abort Speech key (or any key). Note: the Abort Speech feature was broken in v3.5.
- Added new option to set the Maximum Players for the control panel.
- Added option to display any LEDBlinky errors after the FE quits. This option is on by default.
- Fixed bug that would cause LEDBlinky to crash when switching between emulators.
- Fixed bug which prevented any Game Options from working when using the "FE Active Animation" option. This bug was introduced in v3.5.
- Fixed bug with Profile Editor which could corrupt "Other Emulator" profiles. This bug was introduced in v3.5.
- Fixed bug with AtomicFE plugin which could cause LEDBlinky to crash when scrolling through game lists.

v3.5.0 (AE v1.6)	2/10/2008
- LEDBlinky now supports a Stand-Alone Mode for use with any FE. FE must support the ability to launch an external application and pass parameters (e.g. Rom name).
- LEDBlinky now has native support for AtomicFE via plugin. All features are available.
- LEDBlinky now has native support for GameEx via plugin. All features are available.
- New LEDBlinky option: Light the Start and Coin buttons based on active player count for current game. The controls.ini file does not provide the Start and Coin controls. With this option, Start and Coin controls will be included for each game. For example, a two player game will include Start1, Start2, Coin1, and Coin2.
- Added frame navigation controls to the Animation Editor.
- Added virtual control panel animation feature to the Animation Editor.
- Modified Animation Editor Run command to start from current frame.
- Enhanced animation optimization and formatting for Animation Editor lwax file generation.
- Fixed bug in Animation Editor which could corrupt an existing animation when loaded and then saved. This bug only effected animations with multiple LED devices.
- Fixed all timing and performance issues when blinking LEDs while MAME is active. 
- Fixed bug in LEDBlinky when exiting a MAME game in a paused state with an animation running.

v3.0.0		11/26/2007
- The LEDBlinky now supports the Ultimarc PAC-Drive. Use multiple PAC-Drives, multiple LED-Wizs, or a combination of both.
- Added new features when pausing a MAME game: Speak and blink game controls and/or play an LED animation. Note: this feature only works with MAME .118 or later.
- Flash start buttons when credits are available. Note: this is a MAME only feature and is not supported by all games.
- Full support for other MAME Outputs - light LEDs based on any output. Outputs can be linked to controls (P1_Button1, P2_Button2, etc.) or directly linked to a Device/Port.
- Modified LEDBlinky to handle new keypad keycodes introduced in mame .118. For example, KEYCODE_0_PAD becomes KEYCODE_0PAD as of .118.
- Added new option to play an LED animation while the MaLa UI is active (rather than lighting specific controls).
- Added new features to the Animation Editor for assigning the LED-Wiz Built-In Blinking values. This can now be done for multiple selected LEDs and by specific ports; Red, Green, or Blue.
- Added new feature to Configuratoin app: Selected animation files can now be tested.
- GenMameDefault.exe is no longer included with the LEDBlinky. This command line app became obsolete as of Mame .118.

v2.5.1		9/03/2007
- LEDBlinky updated to use new XML Animation format.
- New LEDBlinky Tool: Animation Editor.
- Minor modifications to Configuration and Input Map applications for the Animation Editor.

v2.5.0		7/05/2007
- Added new features when MaLa starts and quits: Play an LED animation. While speaking a custom message, strobe LEDs in sync with speech.
- Added new Screen Saver option: Play random "attract attention" messages. The delay between messages can be configured and a Berzerk mode is available (check it out!).
- Added new features when a game starts: Play an LED animation. While speaking the game name or a custom message, strobe LEDs in sync with speech.
- Added Cocktail mode. When enabled, controls for all players will light, including alternating multi-player games.
- Reworked non-Mame emulator code. Switching between emulators is now faster. Note: the initial Mame load requires a few seconds.
- Added two new configuration files; controls_emu.ini and colors_emu.ini. Both these files are required to light LEDs for other emulators. Custom lighting configurations can be defined for each emulator or for each ROM.
- Enhanced LEDBlinky to light buttons that are wired via Joystick controllers for the MaLa UI.
- Enhanced LEDBlinky to accept intensity values (0-49, 129, 130, etc.) from Colors.ini. This allows custom lighting on a game-by-game basis for cp's with only single type LEDs. Colors.ini overrides all other profiles.
- Revamped (again) the LEDBlinky Configuration app to better group options.
- Fixed bug which prevented games not listed in Controls.ini from lighting correctly.
- Added "Enable Debug Log" and "Verbose Logging" checkboxes in Config app.
- Fixed clone remapping bug.
- Fixed bug in Profile app which prevented test buttons from working with some Device/Port mappings.
- Fixed "Abort Speech" bug when configured for "Any Key" which caused only the first button to blink and speak the action.

v2.0.0		5/17/2007
- Added extensive speech features.
- Added secondary (independent) animation. This can be used for cabinet lighting or any other LEDs not used for game controls. These LEDs must be wired to an additional LED-Wiz.
- Revamped the LEDBlinky Configuration app.

v1.0.1.0	4/11/2007
- Added feature to play LED animation files (.lwa) when the MaLa screensaver is active. LEDBlinky supports the standard lwa commands and one new command; LWZ-REP:n for creating repeat groups. Thanks to Headkaze for the sample lwa files.
- Removed Microsoft COM dependencies - LEDBlinky now uses MikeQ's ledwiz DLL. Thanks MikeQ and Headkaze!
- Optimized performance when using Colors.ini file.
- LEDBlinky now supports vendor supplied Controller Files. If you use a controller file (usually stored in mame's ctrlr folder) when launching mame, you can now specify the .cfg file path for LEDBlinky to use.
- Fixed xml parsing bug when loading cfg files.
- Modified to use Controls.ini path from Mala.ini rather than duplicate the same info in LEDBlinky's Settings.ini file.

v1.0.0.1	3/12/2007
Community Release

v1.0.0.0	2/23/2007
Beta Release


Copyrights
----------
Mame.dll, PacDrive.dll, UltraStik.dll: ©Copyright 2009 Headsoft (www.headsoft.com.au)
ZipDll.dll: Freeware zip library designed by Eric Engler. Available for download here: http://www.geocities.com/SiliconValley/Network/2114/
