#loader contenttweaker
#priority 97
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


var moltenEmbers = VanillaFactory.createFluid("moltenEmbers", Color.fromHex("ed5126"));
moltenEmbers.temperature = 6000;
moltenEmbers.gaseous = true;
moltenEmbers.luminosity = 15;
moltenEmbers.viscosity = 2000;
moltenEmbers.register();

var moltenBedrock = VanillaFactory.createFluid("moltenBedrock", Color.fromHex("200a2e"));
moltenBedrock.temperature = 1;
moltenBedrock.gaseous = false;
moltenBedrock.luminosity = 0;
moltenBedrock.viscosity = 1;
moltenBedrock.register();

var moltenTokenIron = VanillaFactory.createFluid("moltenTokenIron", Color.fromHex("636363"));
moltenTokenIron.temperature = 1000;
moltenTokenIron.gaseous = false;
moltenTokenIron.luminosity = 10;
moltenTokenIron.viscosity = 1000;
moltenTokenIron.register();

var moltenTokenBronze = VanillaFactory.createFluid("moltenTokenBronze", Color.fromHex("615245"));
moltenTokenBronze.temperature = 1000;
moltenTokenBronze.gaseous = false;
moltenTokenBronze.luminosity = 10;
moltenTokenBronze.viscosity = 1000;
moltenTokenBronze.register();

var moltenTokenSteel = VanillaFactory.createFluid("moltenTokenSteel", Color.fromHex("4a4a4a"));
moltenTokenSteel.temperature = 1000;
moltenTokenSteel.gaseous = false;
moltenTokenSteel.luminosity = 10;
moltenTokenSteel.viscosity = 1000;
moltenTokenSteel.register();

var moltenTokenRefinedIron = VanillaFactory.createFluid("moltenTokenRefinedIron", Color.fromHex("858585"));
moltenTokenRefinedIron.temperature = 1000;
moltenTokenRefinedIron.gaseous = false;
moltenTokenRefinedIron.luminosity = 10;
moltenTokenRefinedIron.viscosity = 1000;
moltenTokenRefinedIron.register();

var moltenTokenOsmium = VanillaFactory.createFluid("moltenTokenOsmium", Color.fromHex("666f73"));
moltenTokenOsmium.temperature = 1000;
moltenTokenOsmium.gaseous = false;
moltenTokenOsmium.luminosity = 10;
moltenTokenOsmium.viscosity = 1000;
moltenTokenOsmium.register();

var moltenTokenIridium = VanillaFactory.createFluid("moltenTokenIridium", Color.fromHex("bae3e0"));
moltenTokenIridium.temperature = 1000;
moltenTokenIridium.gaseous = false;
moltenTokenIridium.luminosity = 10;
moltenTokenIridium.viscosity = 1000;
moltenTokenIridium.register();

var moltenTokenUltimate = VanillaFactory.createFluid("moltenTokenUltimate", Color.fromHex("d1387d"));
moltenTokenUltimate.temperature = 1000;
moltenTokenUltimate.gaseous = false;
moltenTokenUltimate.luminosity = 10;
moltenTokenUltimate.viscosity = 1000;
moltenTokenUltimate.register();

var moltenTokenInfinity = VanillaFactory.createFluid("moltenTokenInfinity", Color.fromHex("8f2c96"));
moltenTokenInfinity.temperature = 1000;
moltenTokenInfinity.gaseous = false;
moltenTokenInfinity.luminosity = 10;
moltenTokenInfinity.viscosity = 1000;
moltenTokenInfinity.register();

var blendedDiesel = VanillaFactory.createFluid("blended_diesel", Color.fromHex("6b6e30"));
blendedDiesel.temperature = 1500;
blendedDiesel.gaseous = false;
blendedDiesel.luminosity = 0;
blendedDiesel.viscosity = 1000;
blendedDiesel.register();

var BoostedDiesel = VanillaFactory.createFluid("boosted_diesel", Color.fromHex("028799"));
BoostedDiesel.temperature = 500;
BoostedDiesel.gaseous = false;
BoostedDiesel.luminosity = 0;
BoostedDiesel.viscosity = 1000;
BoostedDiesel.register();