import crafttweaker.api.recipe.CraftingTableRecipeManager;
import mods.jei.JEI;
import mods.jei.component.JeiIngredient;
import crafttweaker.api.item.IItemStack;

var itemsToRemove = [
    <item:grapplemod:longfallboots>,
    <item:grapplemod:repeller>,
    <item:grapplemod:forcefieldupgradeitem>,
    <item:grapplemod:staffupgradeitem>,
    <item:grapplemod:rocketupgradeitem>,
    <item:grapplemod:limitsupgradeitem>,
    <item:grapplemod:grapplinghook>.withTag({ custom: {rocket: 1 as byte}})
] as IItemStack[];

for  itemToRemove in itemsToRemove {
    craftingTable.remove(itemToRemove);
    JEI.hideIngredient(itemToRemove);
}

//Modify launcher item's recipe
var enderRodItem = <item:grapplemod:launcheritem>;
craftingTable.remove(enderRodItem);

craftingTable.addShaped(
    "launcher_item_recipe",
    enderRodItem,
    [
        [<item:minecraft:air>, <item:minecraft:air>, <item:forbidden_arcanus:dragon_scale>],
        [<item:minecraft:air>, <item:minecraft:ender_eye>, <item:minecraft:air>],
        [<item:enigmaticlegacy:ender_rod>, <item:minecraft:air>, <item:minecraft:air>]
    ]
);
