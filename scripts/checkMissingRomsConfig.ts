import { promises, access } from 'fs';
import { startsWith } from 'lodash';

const colorConfPath = './plugins/ledblinky-integration/color-config/Colors.ini';
const controlConfPath =
  './plugins/ledblinky-integration/color-config/Controls.ini';

const gemsPlusRomsList = './scripts/listMAMERomsGemPlus.txt';

const COINOPS_MAME_ROMS: { [type: string]: string[] } = {};

function loadIniFileRomNames(configFile: string): string[] {
  const romNames: string[] = [];

  configFile.split('\n').forEach((line) => {
    if (startsWith(line, '[') && line.indexOf(']') > 0) {
      romNames.push(line.replace('[', '').replace(']', '')); // no comment ...
    }
  });

  return romNames;
}

(async () => {
  const controlsFile = await promises.readFile(controlConfPath, {
    encoding: 'utf-8',
  });
  const colorsFile = await promises.readFile(colorConfPath, {
    encoding: 'utf-8',
  });

  const controlsRomNames = loadIniFileRomNames(controlsFile);
  const colorsRomNames = loadIniFileRomNames(colorsFile);

  COINOPS_MAME_ROMS.GEMS_PLUS = (
    await promises.readFile(gemsPlusRomsList, {
      encoding: 'utf-8',
    })
  ).split('\n');

  const gemsPlusInfos = COINOPS_MAME_ROMS.GEMS_PLUS.reduce(
    (acc, rom) => {
      const hasControls = !!controlsRomNames.find((str) => str === rom);
      const hasColors = !!colorsRomNames.find((str) => str === rom);

      return {
        ...acc,
        [rom]: {
          controls: hasControls,
          colors: hasColors,
        },
      };
    },
    {} as {
      [romName: string]: { controls: boolean; colors: boolean };
    }
  );

  await promises.writeFile(
    `./scripts/gemsPlusInfo.json`,
    JSON.stringify(gemsPlusInfos, null, 2)
  );

  process.exit(0);
})();
