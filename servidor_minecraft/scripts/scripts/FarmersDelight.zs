import crafttweaker.api.item.IItemStack;
import mods.create.PressingManager;
import mods.create.MixingManager;
import mods.create.FillingManager;
import mods.create.DeployerApplicationManager;

import crafttweaker.api.tag.MCTag;

//Define needed custom tags
<tag:items:dumpling_meats>.add([<tag:items:forge:raw_chicken>,
    <tag:items:forge:raw_pork>,
    <tag:items:forge:raw_beef>
] as MCTag[]);
<tag:items:dumpling_meats>.add(<item:minecraft:brown_mushroom>);

var dumplingsCompatibleMeatsTag = <tag:items:dumpling_meats>;


//Mixer recipes
<recipetype:create:mixing>.addRecipe("apple_cider_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:apple_cider>], 
    [<item:minecraft:apple> *2, <item:minecraft:sugar>, <item:minecraft:glass_bottle>], 
    null, 
    200
);
<recipetype:create:mixing>.addRecipe("hot_cocoa_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:hot_cocoa>], 
    [<item:minecraft:cocoa_beans>, <item:minecraft:sugar>, <item:minecraft:glass_bottle>], 
    [<fluid:minecraft:milk> * 250], 
    200
);

<recipetype:create:mixing>.addRecipe("raw_pasta_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:raw_pasta> * 4], 
    [<item:minecraft:wheat> * 2, <item:minecraft:egg>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("dumplings_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:dumplings> * 2], 
    [<item:farmersdelight:wheat_dough>, <tag:items:forge:vegetables/onion>, <tag:items:forge:salad_ingredients/cabbage>, dumplingsCompatibleMeatsTag], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("cabbage_rolls_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:cabbage_rolls>], 
    [<tag:items:forge:salad_ingredients/cabbage>, <tag:items:farmersdelight:cabbage_roll_ingredients>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("cooked_rice_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:cooked_rice>], 
    [<tag:items:forge:grain/rice>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("beef_stew_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:beef_stew>], 
    [<tag:items:forge:raw_beef>, <tag:items:forge:vegetables/carrot>, <tag:items:forge:vegetables/potato>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("chicken_soup_from_mixer_type1", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:chicken_soup>], 
    [<tag:items:forge:raw_chicken>, <tag:items:forge:vegetables/carrot>, <tag:items:forge:salad_ingredients/cabbage>, <tag:items:forge:vegetables/onion>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("chicken_soup_from_mixer_type2", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:chicken_soup>], 
    [<tag:items:forge:raw_chicken>, <tag:items:forge:vegetables/carrot> * 2, <tag:items:forge:salad_ingredients/cabbage>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("chicken_soup_from_mixer_type3", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:chicken_soup>], 
    [<tag:items:forge:raw_chicken>, <tag:items:forge:vegetables/carrot>, <tag:items:forge:salad_ingredients/cabbage>, <tag:items:forge:vegetables/potato>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("chicken_soup_from_mixer_type4", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:chicken_soup>], 
    [<tag:items:forge:raw_chicken>, <tag:items:forge:vegetables/carrot>, <tag:items:forge:salad_ingredients/cabbage>, <tag:items:forge:vegetables/beetroot>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("chicken_soup_from_mixer_type5", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:chicken_soup>], 
    [<tag:items:forge:raw_chicken>, <tag:items:forge:vegetables/carrot>, <tag:items:forge:salad_ingredients/cabbage>, <tag:items:forge:vegetables/tomato>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("vegetable_soup_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:vegetable_soup>], 
    [<tag:items:forge:vegetables/carrot>, <tag:items:forge:vegetables/potato>, <tag:items:forge:vegetables/beetroot>, <tag:items:forge:salad_ingredients/cabbage>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("fish_stew_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:fish_stew>], 
    [<tag:items:forge:raw_fishes>, <item:farmersdelight:tomato_sauce>, <tag:items:forge:vegetables/onion>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("ratatouille_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:ratatouille>], 
    [<tag:items:forge:vegetables/tomato>, <tag:items:forge:vegetables/onion>, <tag:items:forge:vegetables/beetroot>, <tag:items:forge:vegetables>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("fried_rice_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:fried_rice>], 
    [<tag:items:forge:grain/rice>, <tag:items:balm:eggs>, <tag:items:forge:vegetables/carrot>, <tag:items:forge:vegetables/onion>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("pumpkin_soup_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:pumpkin_soup>], 
    [<item:farmersdelight:pumpkin_slice>, <tag:items:forge:crops/cabbage>, <tag:items:forge:raw_pork>, <item:minecraft:bowl>], 
    [<fluid:minecraft:milk> * 250], 
    200
);

<recipetype:create:mixing>.addRecipe("baked_cod_stew_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:baked_cod_stew>], 
    [<tag:items:forge:raw_fishes/cod>, <tag:items:balm:eggs>, <tag:items:forge:vegetables/potato>, <tag:items:forge:vegetables/tomato>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("noodle_soup_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:noodle_soup>], 
    [<tag:items:forge:pasta/raw_pasta>, <tag:items:forge:cooked_eggs>, <item:minecraft:dried_kelp>, <tag:items:forge:raw_pork>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("pasta_with_meatballs_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:pasta_with_meatballs>], 
    [<item:farmersdelight:minced_beef>, <tag:items:forge:pasta/raw_pasta>, <item:farmersdelight:tomato_sauce>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("pasta_with_mutton_chop_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:pasta_with_mutton_chop>], 
    [<tag:items:forge:raw_mutton>, <tag:items:forge:pasta/raw_pasta>, <item:farmersdelight:tomato_sauce>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("vegetable_noodles_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:vegetable_noodles>], 
    [<tag:items:forge:vegetables/carrot>, <item:minecraft:brown_mushroom>, <tag:items:forge:pasta/raw_pasta>, <tag:items:forge:crops/cabbage>, <tag:items:forge:vegetables>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("squid_ink_pasta_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:squid_ink_pasta>], 
    [<tag:items:forge:raw_fishes>, <tag:items:forge:pasta/raw_pasta>, <tag:items:forge:vegetables/tomato>, <item:minecraft:ink_sac>, <item:minecraft:bowl>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("stuffed_pumpkin_block_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:stuffed_pumpkin_block>], 
    [<tag:items:forge:grain/rice>, <tag:items:forge:vegetables>, <item:farmersdelight:tomato_sauce>, <item:minecraft:baked_potato>, 
        <item:farmersdelight:brown_mushroom_colony>, <item:minecraft:sweet_berries>, <item:minecraft:pumpkin>], 
    null, 
    200
);

<recipetype:create:mixing>.addRecipe("dog_food_from_mixer", 
    <constant:create:heat_condition:heated>, 
    [<item:farmersdelight:dog_food>], 
    [<tag:items:forge:grain/rice>, <item:minecraft:bone_meal>, <item:minecraft:rotten_flesh>, <tag:items:farmersdelight:wolf_prey>, <item:minecraft:bowl>], 
    null, 
    200
);

//Spout (filler) recipes
<recipetype:create:filling>.addRecipe("hot_cocoa_from_spout", <item:farmersdelight:hot_cocoa>, <item:minecraft:glass_bottle>, <fluid:create:chocolate> * 250, 200);

//Deployer recipes
<recipetype:create:deploying>.addRecipe("raw_pasta_from_deployer", <item:farmersdelight:wheat_dough>, <tag:items:forge:tools/knives>, [<item:farmersdelight:raw_pasta>]);
<recipetype:create:deploying>.addRecipe("pumpkin_slice_from_deployer", <tag:items:forge:pumpkins>, <tag:items:forge:tools/knives>, [<item:farmersdelight:pumpkin_slice> * 4]);
//It appears that deployers can return only one item type. Bone meal seems to be ignored.
<recipetype:create:deploying>.addRecipe("raw_chicken_cuts_from_deployer", <tag:items:forge:raw_chicken>, <tag:items:forge:tools/knives>, [<item:farmersdelight:chicken_cuts> * 2, <item:minecraft:bone_meal>]);
<recipetype:create:deploying>.addRecipe("raw_bacon_from_deployer", <item:minecraft:porkchop>, <tag:items:forge:tools/knives>, [<item:farmersdelight:bacon> * 2]);
//It appears that deployers can return only one item type. Bone meal seems to be ignored.
<recipetype:create:deploying>.addRecipe("raw_cod_slices_from_deployer", <item:minecraft:cod>, <tag:items:forge:tools/knives>, [<item:farmersdelight:cod_slice> * 2, <item:minecraft:bone_meal>]);
//It appears that deployers can return only one item type. Bone meal seems to be ignored.
<recipetype:create:deploying>.addRecipe("raw_salmon_slices_from_deployer", <item:minecraft:salmon>, <tag:items:forge:tools/knives>, [<item:farmersdelight:salmon_slice> * 2, <item:minecraft:bone_meal>]);
<recipetype:create:deploying>.addRecipe("raw_mutton_from_deployer", <item:minecraft:mutton>, <tag:items:forge:tools/knives>, [<item:farmersdelight:mutton_chops> * 2]);
<recipetype:create:deploying>.addRecipe("cake_slice_from_deployer", <item:minecraft:cake>, <tag:items:forge:tools/knives>, [<item:farmersdelight:cake_slice> * 7]);
<recipetype:create:deploying>.addRecipe("apple_pie_slice_from_deployer", <item:farmersdelight:apple_pie>, <tag:items:forge:tools/knives>, [<item:farmersdelight:apple_pie_slice> * 4]);
<recipetype:create:deploying>.addRecipe("sweet_berry_cheesecake_slice_from_deployer", <item:farmersdelight:sweet_berry_cheesecake>, <tag:items:forge:tools/knives>, [<item:farmersdelight:sweet_berry_cheesecake_slice> * 4]);
<recipetype:create:deploying>.addRecipe("chocolate_pie_slice_from_deployer", <item:farmersdelight:chocolate_pie>, <tag:items:forge:tools/knives>, [<item:farmersdelight:chocolate_pie_slice> * 4]);
