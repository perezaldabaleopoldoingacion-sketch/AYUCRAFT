import mods.jei.JEI;
import mods.jei.component.JeiIngredient;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.CraftingTableRecipeManager;

//MAKE SURE THAT itemsToRemoveCrafting AND lootRulesNames
//are aligned and of the same length. If komodo_spit is on 3rd position,
//then its loot rule name shall be on 3rd position, too.

var itemsToRemoveCrafting = [
    <item:enlightened_end:chiseled_malachite>,
    <item:enlightened_end:cracked_malachite_bricks>,
    <item:enlightened_end:cracked_malachite_tiles>,
    <item:enlightened_end:malachite_block>,
    <item:enlightened_end:malachite_brick_slab>,
    <item:enlightened_end:malachite_brick_stairs>,
    <item:enlightened_end:malachite_brick_wall>,
    <item:enlightened_end:malachite_bricks>,
    <item:enlightened_end:malachite_pillar>,
    <item:enlightened_end:malachite_slab>,
    <item:enlightened_end:malachite_stairs>,
    <item:enlightened_end:malachite_tile_slab>,
    <item:enlightened_end:malachite_tile_stairs>,
    <item:enlightened_end:malachite_tile_wall>,
    <item:enlightened_end:malachite_tiles>,
    <item:enlightened_end:malachite_wall>,
    <item:enlightened_end:smooth_malachite>,
    <item:enlightened_end:smooth_malachite_slab>,    
    <item:enlightened_end:smooth_malachite_stairs>,
    <item:enlightened_end:smooth_malachite_wall>


] as IItemStack[];

var lootRulesNames = [
    "no_chiseled_malachite",
    "no_cracked_malachite_bricks",
    "no_cracked_malachite_tiles",
    "no_malachite_block",
    "no_malachite_brick_slab",
    "no_malachite_brick_stairs",
    "no_malachite_brick_wall",
    "no_malachite_bricks",
    "no_malachite_pillar",
    "no_malachite_slab",
    "no_malachite_stairs",
    "no_malachite_tile_slab",
    "no_malachite_tile_stairs",
    "no_malachite_tile_wall",
    "no_malachite_tiles",
    "no_malachite_wall",
    "no_smooth_malachite",
    "no_smooth_malachite_slab",    
    "no_smooth_malachite_stairs",
    "no_smooth_malachite_wall"
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

craftingTable.addShapeless("malachite_to_veridium", <item:create:veridium> * 3, [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:enlightened_end:malachite>]);