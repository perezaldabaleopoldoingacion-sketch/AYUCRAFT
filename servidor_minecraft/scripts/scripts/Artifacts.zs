import mods.jei.JEI;
import mods.jei.component.JeiIngredient;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.CraftingTableRecipeManager;

//MAKE SURE THAT itemsToRemove AND lootRulesNames
//are aligned and of the same length. If potato is on 3rd position,
//then its loot rule name shall be on 3rd position, too.

var itemsToRemove = [
    <item:artifacts:novelty_drinking_hat>,
    <item:artifacts:charm_of_sinking>,
    <item:artifacts:mimic_spawn_egg>,
    <item:artifacts:everlasting_beef>,
    <item:artifacts:scarf_of_invisibility>,
    <item:artifacts:whoopee_cushion>,
    <item:artifacts:eternal_steak>
] as IItemStack[];

var lootRulesNames = [
    "no_novelty_drinking_hat",
    "no_charm_of_sinking",
    "no_mimic_spawn_egg",
    "no_everlasting_beef",
    "no_scarf_of_invisibility",
    "no_whoopee_cushion",
    "no_eternal_steak"
] as string[];

for itemToRemove in itemsToRemove {
    craftingTable.remove(itemToRemove);
    craftingTable.removeByInput(itemToRemove);
    JEI.hideIngredient(itemToRemove);
}

for i in 0 .. itemsToRemove.length {
    loot.modifiers.register(
        lootRulesNames[i],
        LootConditions.randomlyIn(1),
        CommonLootModifiers.remove(itemsToRemove[i])
    );
    CommonLootModifiers.remove(itemsToRemove[i]);
}

//Remove smoker and furnace crafting possibility of Eternal Steak
smoker.remove(<item:artifacts:eternal_steak>);
furnace.remove(<item:artifacts:eternal_steak>);
campfire.remove(<item:artifacts:eternal_steak>);

//Add recipe for lucky scarf
craftingTable.addShaped(
    "lucky_scarf_recipe",
    <item:artifacts:lucky_scarf>,
    [
        [<item:create:super_glue>, <item:minecraft:netherite_ingot>, <item:minecraft:lime_dye>],
        [<item:minecraft:diamond>, <item:enigmaticlegacy:mining_charm>, <item:minecraft:gold_ingot>],
        [<item:minecraft:lime_dye>, <item:minecraft:emerald>, <item:create:super_glue>]
    ]
);
