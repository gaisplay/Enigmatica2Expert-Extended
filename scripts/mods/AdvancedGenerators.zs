#modloaded advgenerators

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

# Power IO Module
	recipes.addShapedMirrored("AdvancedGenerators Power IO Module",
	<advgenerators:power_io>, 
	[[<ore:ingotSilver>, <ore:ingotTin>, <ore:ingotSilver>],
	[<ore:ingotTin>, <gendustry:power_module>, <ore:ingotTin>], 
	[<ore:ingotSilver>, <ore:ingotTin>, <ore:ingotSilver>]]);

# Iron Tubing
scripts.wrap.actuallyadditions.AtomicReconstructor.addRecipe(<advgenerators:iron_tubing>, <actuallyadditions:item_misc:7>, 10000);

# Redstone-Iron Tubing
scripts.wrap.extrautils2.Resonator.add(<advgenerators:iron_wiring>, <advgenerators:iron_tubing>, 20 * 100);

# [Iron Frame*2] from [Iron Mechanical Component][+1]
craft.remake(<advgenerators:iron_frame> * 2, ["pretty",
  "╱   ╱",
  "  I  ",
  "╱   ╱"], {
  "╱": <ore:stickIron>,                   # Iron Rod
  "I": <immersiveengineering:material:8>, # Iron Mechanical Component
});

# [Control Circuit] from [Red Coal][+2]
craft.remake(<advgenerators:controller>, ["pretty",
  "A Q A",
  "E E E"], {
  "A": <ore:circuitAdvanced>,           # Advanced Circuit
  "Q": <extrautils2:ingredients:4>,     # Red Coal
  "E": <forestry:thermionic_tubes:12>,  # Ender Electron Tube
});

# [Pressure Valve] from [Hardened Fluiduct][+2]
craft.remake(<advgenerators:pressure_valve>, ["pretty",
  "D I D",
  "I H I",
  "D I D"], {
  "D": <mekanism:basicblock:11>,    # Dynamic Valve
  "H": <thermaldynamics:duct_16:2> | <thermaldynamics:duct_16:3>, # Hardened Fluiduct
  "I": <advgenerators:iron_tubing>, # Iron Tubing
});

# [Advanced Pressure Valve] from [Pressure Valve][+1]
craft.remake(<advgenerators:advanced_pressure_valve>, ["pretty",
  "R R R",
  "R P R",
  "R R R"], {
  "P": <advgenerators:pressure_valve>, # Pressure Valve
  "R": <thermaldynamics:duct_0:4>, # Resonant Fluxduct
});



val turbineTypes = {
	iron      : {"▬": <ore:plateIron>         , "/": <tconstruct:large_plate>.withTag({Material: "iron"}) | <tconstruct:large_plate>.withTag({Material: "construction_alloy"}), "o": <advgenerators:iron_tubing>},
	bronze    : {"▬": <ore:plateBronze>       , "/": <tconstruct:large_plate>.withTag({Material: "bronze"}),         "o": <forestry:sturdy_machine>},
	gold      : {"▬": <ore:plateGold>         , "/": <tconstruct:large_plate>.withTag({Material: "electrum"}),       "o": <actuallyadditions:item_crystal_empowered:4>},
	steel     : {"▬": <ore:plateSteel>        , "/": <tconstruct:large_plate>.withTag({Material: "steel"}),          "o": <enderio:item_basic_capacitor>},
	adv_alloy : {"▬": <ore:plateAdvancedAlloy>, "/": <tconstruct:large_plate>.withTag({Material: "advanced_alloy"}), "o": <ore:stickTitaniumIridium>},
	manyullyn : {"▬": <ore:ingotManyullyn>    , "/": <tconstruct:large_plate>.withTag({Material: "manyullyn"}),      "o": <mysticalagriculture:crafting:32>},
	enderium  : {"▬": <ore:plateEnderium>     , "/": <tconstruct:large_plate>.withTag({Material: "enderium"}),       "o": <thermalfoundation:material:895>},
} as IIngredient[string][string];

for name, ingrs in turbineTypes {
	val blade   = itemUtils.getItem('advgenerators:turbine_blade_' ~ name);
	val rotor   = itemUtils.getItem('advgenerators:turbine_rotor_' ~ name);
	val kit     = itemUtils.getItem('advgenerators:turbine_kit_'   ~ name);
	val turbine = itemUtils.getItem('advgenerators:turbine_'       ~ name);

	ingrs["B"] = blade;
	ingrs["R"] = rotor;

	# Blade
	craft.make(blade * 4, ["pretty",
		"▬ ▬",
		"▬ ▬",
		"  ▬"], ingrs);

	# Rotor
	craft.make(rotor, ["pretty",
		"B B B",
		"B / B",
		"B B B"], ingrs);

	# Turbine
	craft.make(name=="iron" ? turbine*4 : turbine, ["pretty",
		"◙ ◙ ◙",
		"R r R",
		"◙ o ◙"], {
		"r": rotor,
		"R": <advgenerators:iron_wiring>,        # Redstone-Iron Wiring
		"◙": <advgenerators:iron_frame>,         # Iron Frame
		"o": ingrs["o"]
	});
	
	# Kit
	if(isNull(kit)) continue;
	craft.shapeless(kit, "MUo", {
		"M": rotor,
		"U": <advgenerators:upgrade_kit>,
		"o": ingrs["o"],
	});
}