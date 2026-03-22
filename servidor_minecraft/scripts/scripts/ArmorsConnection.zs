import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.item.IItemStack;

//Remove the original recipies
var itemsToRemove = [
    <item:forbidden_arcanus:draco_arcanus_boots>,
    <item:forbidden_arcanus:draco_arcanus_chestplate>,
    <item:forbidden_arcanus:draco_arcanus_helmet>,
    <item:forbidden_arcanus:draco_arcanus_leggings>,

    <item:forbidden_arcanus:tyr_boots>,
    <item:forbidden_arcanus:tyr_chestplate>,
    <item:forbidden_arcanus:tyr_helmet>,
    <item:forbidden_arcanus:tyr_leggings>
] as IItemStack[];

for item in itemsToRemove {
    craftingTable.remove(item);
}

craftingTable.addShaped("draco_arcanus_boots", <item:forbidden_arcanus:draco_arcanus_boots>, [
    [<item:forbidden_arcanus:obsidian_ingot>, <item:minecraft:air>, <item:forbidden_arcanus:obsidian_ingot>],
    [<item:forbidden_arcanus:dragon_scale>, <item:forbidden_arcanus:arcane_gold_boots>, <item:forbidden_arcanus:dragon_scale>]
]);

craftingTable.addShaped("draco_arcanus_chestplate", <item:forbidden_arcanus:draco_arcanus_chestplate>, [
    [<item:forbidden_arcanus:dragon_scale>, <item:forbidden_arcanus:arcane_gold_chestplate>, <item:forbidden_arcanus:dragon_scale>],
    [<item:forbidden_arcanus:obsidian_ingot>, <item:forbidden_arcanus:dragon_scale>, <item:forbidden_arcanus:obsidian_ingot>],
    [<item:forbidden_arcanus:obsidian_ingot>, <item:forbidden_arcanus:dragon_scale>, <item:forbidden_arcanus:obsidian_ingot>]
]);

craftingTable.addShaped("draco_arcanus_helmet", <item:forbidden_arcanus:draco_arcanus_helmet>, [
    [<item:forbidden_arcanus:obsidian_ingot>, <item:forbidden_arcanus:dragon_scale>, <item:forbidden_arcanus:obsidian_ingot>],
    [<item:forbidden_arcanus:obsidian_ingot>, <item:forbidden_arcanus:arcane_gold_helmet>, <item:forbidden_arcanus:obsidian_ingot>]
]);

craftingTable.addShaped("draco_arcanus_leggings", <item:forbidden_arcanus:draco_arcanus_leggings>, [
    [<item:forbidden_arcanus:obsidian_ingot>, <item:forbidden_arcanus:dragon_scale>, <item:forbidden_arcanus:obsidian_ingot>],
    [<item:forbidden_arcanus:dragon_scale>, <item:forbidden_arcanus:arcane_gold_leggings>, <item:forbidden_arcanus:dragon_scale>],
    [<item:forbidden_arcanus:obsidian_ingot>, <item:minecraft:air>, <item:forbidden_arcanus:obsidian_ingot>]
]);


craftingTable.addShaped("tyr_boots", <item:forbidden_arcanus:tyr_boots>, [
    [<item:forbidden_arcanus:aquatic_dragon_scale>, <item:minecraft:air>, <item:forbidden_arcanus:aquatic_dragon_scale>],
    [<item:forbidden_arcanus:golden_dragon_scale>, <item:forbidden_arcanus:draco_arcanus_boots>, <item:forbidden_arcanus:golden_dragon_scale>]
]);

craftingTable.addShaped("tyr_chestplate", <item:forbidden_arcanus:tyr_chestplate>, [
    [<item:forbidden_arcanus:golden_dragon_scale>, <item:forbidden_arcanus:draco_arcanus_chestplate>, <item:forbidden_arcanus:golden_dragon_scale>],
    [<item:forbidden_arcanus:aquatic_dragon_scale>, <item:forbidden_arcanus:golden_dragon_scale>, <item:forbidden_arcanus:aquatic_dragon_scale>],
    [<item:forbidden_arcanus:aquatic_dragon_scale>, <item:forbidden_arcanus:aquatic_dragon_scale>, <item:forbidden_arcanus:aquatic_dragon_scale>]
]);

craftingTable.addShaped("tyr_helmet", <item:forbidden_arcanus:tyr_helmet>, [
    [<item:forbidden_arcanus:aquatic_dragon_scale>, <item:forbidden_arcanus:golden_dragon_scale>, <item:forbidden_arcanus:aquatic_dragon_scale>],
    [<item:forbidden_arcanus:aquatic_dragon_scale>, <item:forbidden_arcanus:draco_arcanus_helmet>, <item:forbidden_arcanus:aquatic_dragon_scale>]
]);

craftingTable.addShaped("tyr_leggings", <item:forbidden_arcanus:tyr_leggings>, [
    [<item:forbidden_arcanus:aquatic_dragon_scale>, <item:forbidden_arcanus:golden_dragon_scale>, <item:forbidden_arcanus:aquatic_dragon_scale>],
    [<item:forbidden_arcanus:aquatic_dragon_scale>, <item:forbidden_arcanus:draco_arcanus_leggings>, <item:forbidden_arcanus:aquatic_dragon_scale>],
    [<item:forbidden_arcanus:golden_dragon_scale>, <item:minecraft:air>, <item:forbidden_arcanus:golden_dragon_scale>]
]);
