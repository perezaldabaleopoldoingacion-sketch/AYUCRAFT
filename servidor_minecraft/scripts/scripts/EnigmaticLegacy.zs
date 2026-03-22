import mods.jei.JEI;
import mods.jei.component.JeiIngredient;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.CraftingTableRecipeManager;

//MAKE SURE THAT itemsToRemoveCrafting AND lootRulesNames
//are aligned and of the same length. If potato is on 3rd position,
//then its loot rule name shall be on 3rd position, too.
var itemsToRemoveCrafting = [
    <item:enigmaticlegacy:astral_potato>,
    <item:enigmaticlegacy:astral_fruit>,
    <item:enigmaticlegacy:ender_slayer>,
    <item:enigmaticlegacy:etherium_helmet>,
    <item:enigmaticlegacy:etherium_chestplate>,
    <item:enigmaticlegacy:etherium_leggings>,
    <item:enigmaticlegacy:etherium_boots>,
    <item:enigmaticlegacy:enigmatic_item>,
    <item:enigmaticlegacy:escape_scroll>,
    <item:enigmaticlegacy:heaven_scroll>,
    <item:enigmaticlegacy:mega_sponge>,
    <item:enigmaticlegacy:extradimensional_eye>,
    <item:enigmaticlegacy:recall_potion>,
    <item:enigmaticlegacy:mending_mixture>,
    <item:enigmaticlegacy:fabulous_scroll>,
    <item:enigmaticlegacy:the_acknowledgment>,
    <item:enigmaticlegacy:cursed_ring>,
    <item:enigmaticlegacy:twisted_core>,
    <item:enigmaticlegacy:cursed_scroll>,
    <item:enigmaticlegacy:berserk_emblem>,
    <item:enigmaticlegacy:guardian_heart>,
    <item:enigmaticlegacy:the_twist>,
    <item:enigmaticlegacy:evil_essence>,
    <item:enigmaticlegacy:evil_ingot>,
    <item:enigmaticlegacy:animal_guide>,
    <item:enigmaticlegacy:hunter_guide>,
    <item:enigmaticlegacy:cursed_stone>,
    <item:enigmaticlegacy:enchanter_pearl>,
    <item:enigmaticlegacy:avarice_scroll>,
    <item:enigmaticlegacy:darkest_scroll>,
    <item:enigmaticlegacy:twisted_potion>,
    <item:enigmaticlegacy:infernal_shield>,
    <item:enigmaticlegacy:abyssal_heart>,
    <item:enigmaticlegacy:the_infinitum>,
    <item:enigmaticlegacy:the_cube>,
    <item:enigmaticlegacy:desolation_ring>,
    <item:enigmaticlegacy:curse_transposer>,
    <item:enigmaticlegacy:soul_compass>,
    <item:enigmaticlegacy:eldritch_amulet>,
    <item:enigmaticlegacy:quote_player>,
    <item:enigmaticlegacy:insignia>,
    <item:enigmaticlegacy:common_potion>,
    <item:enigmaticlegacy:common_potion_splash>,
    <item:enigmaticlegacy:common_potion_lingering>,
    <item:enigmaticlegacy:ultimate_potion>,
    <item:enigmaticlegacy:ultimate_potion_splash>,
    <item:enigmaticlegacy:ultimate_potion_lingering>,
    <item:enigmaticlegacy:dark_mirror>,
    <item:enigmaticlegacy:tattered_tome>,
    <item:enigmaticlegacy:withered_tome>,
    <item:enigmaticlegacy:corrupted_tome>,
    <item:enigmaticlegacy:thicc_scroll>,
    <item:enigmaticlegacy:xp_scroll>,
    <item:enigmaticlegacy:soul_crystal>,
    <item:enigmaticlegacy:infinimeal>,
    <item:enigmaticlegacy:magnet_ring>,
    <item:enigmaticlegacy:iron_ring>,
    <item:enigmaticlegacy:void_pearl>,
    <item:enigmaticlegacy:enigmatic_elytra>
] as IItemStack[];

var lootRulesNames = [
    "no_astral_potato",
    "no_astral_fruit",
    "no_ender_slayer",
    "no_etherium_helmet",
    "no_etherium_chestplate",
    "no_etherium_leggings",
    "no_etherium_boots",
    "no_enigmatic_item",
    "no_escape_scroll",
    "no_heaven_scroll",
    "no_mega_sponge",
    "no_extradimensional_eye",
    "no_recall_potion",
    "no_mending_mixture",
    "no_fabulous_scroll",
    "no_the_acknowledgment",
    "no_cursed_ring",
    "no_twisted_core",
    "no_cursed_scroll",
    "no_berserk_emblem",
    "no_guardian_heart",
    "no_the_twist",
    "no_evil_essence",
    "no_evil_ingot",
    "no_animal_guide",
    "no_hunter_guide",
    "no_cursed_stone",
    "no_enchanter_pearl",
    "no_avarice_scroll",
    "no_darkest_scroll",
    "no_twisted_potion",
    "no_infernal_shield",
    "no_abyssal_heart",
    "no_the_infinitum",
    "no_the_cube",
    "no_desolation_ring",
    "no_curse_transposer",
    "no_soul_compass",
    "no_eldritch_amulet",
    "no_quote_player",
    "no_insignia",
    "no_common_potion",
    "no_common_potion_splash",
    "no_common_potion_lingering",
    "no_ultimate_potion",
    "no_ultimate_potion_splash",
    "no_ultimate_potion_lingering",
    "no_dark_mirror",
    "no_tattered_tome",
    "no_withered_tome",
    "no_corrupted_tome",
    "no_thicc_scroll",
    "no_xp_scroll",
    "no_soul_crystal",
    "no_infinimeal",
    "no_magnet_ring",
    "no_iron_ring",
    "no_void_pearl",
    "no_lore_fragment",
    "no_lore_inscriber",
    "no_enigmatic_elytra"
] as string[];

for itemToRemove in itemsToRemoveCrafting {
    craftingTable.remove(itemToRemove);
    craftingTable.removeByInput(itemToRemove);
    JEI.hideIngredient(itemToRemove);
}

for i in 0 .. itemsToRemoveCrafting.length {
    loot.modifiers.register(
        lootRulesNames[i],
        LootConditions.randomlyIn(1),
        CommonLootModifiers.remove(itemsToRemoveCrafting[i])
    );
    CommonLootModifiers.remove(itemsToRemoveCrafting[i]);
}

//recipe data in: https://github.com/Aizistral-Studios/Enigmatic-Legacy/tree/1.18.X/src/main/resources/data/enigmaticlegacy/recipes


//Additional recipes
craftingTable.addShaped("enigmaticlegacy_unwitnessed_amulet", 
    <item:enigmaticlegacy:unwitnessed_amulet>,
    [
        [<item:forbidden_arcanus:mundabitur_dust>, <item:enigmaticlegacy:etherium_ore>, <item:forbidden_arcanus:mundabitur_dust>],
        [<item:enigmaticlegacy:etherium_ore>, <item:enigmaticlegacy:cosmic_heart>, <item:enigmaticlegacy:etherium_ore>],
        [<item:forbidden_arcanus:mundabitur_dust>, <item:enigmaticlegacy:etherium_ore>, <item:forbidden_arcanus:mundabitur_dust>]

]);

var greenAmulet = <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.5 as float});
var cyanAmulet = <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.2 as float});
var blueAmulet = <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.7 as float});
var purpleAmulet = <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.3 as float});
var pinkAmulet =<item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.4 as float});
var redAmulet = <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.1 as float});
var blackAmulet = <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.6 as float});

craftingTable.addShaped("enigmaticlegacy_ascension_amulet", 
    <item:enigmaticlegacy:ascension_amulet>,
    [
        [blueAmulet, purpleAmulet, pinkAmulet],
        [cyanAmulet, <item:enigmaticlegacy:cosmic_heart>, redAmulet],
        [greenAmulet, <item:enigmaticlegacy:etherium_ingot>, blackAmulet]

]);

craftingTable.addShaped("enigmaticlegacy_super_magnet_ring",
    <item:enigmaticlegacy:super_magnet_ring>,   
    [
        [<item:minecraft:lapis_lazuli>, <item:minecraft:ender_eye>, <item:minecraft:lapis_lazuli>],
        [<item:minecraft:gold_ingot>, <item:artifacts:universal_attractor>, <item:minecraft:gold_ingot>],
        [<item:minecraft:lapis_lazuli>, <item:minecraft:gold_ingot>, <item:minecraft:lapis_lazuli>]
    ]
);

craftingTable.addShaped("enigmaticlegacy_gem_ring",
    <item:enigmaticlegacy:gem_ring>,   
    [
        [<item:minecraft:gold_nugget>, <item:minecraft:gold_ingot>, <item:minecraft:gold_nugget>],
        [<item:minecraft:gold_ingot>, <item:minecraft:air>, <item:minecraft:gold_ingot>],
        [<item:minecraft:gold_nugget>, <item:minecraft:gold_ingot>, <item:minecraft:gold_nugget>]
    ]
);

craftingTable.addShaped("enigmaticlegacy_ender_ring",
    <item:enigmaticlegacy:ender_ring>,   
    [
        [<item:minecraft:air>, <item:minecraft:ender_chest>, <item:minecraft:air>],
        [<item:minecraft:gold_ingot>, <item:enigmaticlegacy:gem_ring>, <item:minecraft:gold_ingot>],
        [<item:minecraft:gold_nugget>, <item:minecraft:ender_pearl>, <item:minecraft:gold_nugget>]
    ]
);

craftingTable.addShaped("enigmaticlegacy_etherium_ingot",
    <item:enigmaticlegacy:etherium_ingot>,   
    [
        [<item:enigmaticlegacy:etherium_scraps>, <item:enigmaticlegacy:etherium_scraps>, <item:enigmaticlegacy:etherium_scraps>],
        [<item:enigmaticlegacy:etherium_scraps>, <item:phantasm:stellium_ingot>, <item:phantasm:stellium_ingot>],
        [<item:phantasm:stellium_ingot>, <item:phantasm:stellium_ingot>, <item:minecraft:air>]
    ]
);