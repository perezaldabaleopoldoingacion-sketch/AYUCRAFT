import crafttweaker.api.recipe.CraftingTableRecipeManager;
import mods.jei.JEI;
import mods.jei.component.JeiIngredient;
import crafttweaker.api.item.IItemStack;

var remotes = [
    <item:storagenetwork:inventory_remote>,
    <item:storagenetwork:crafting_remote>,
    <item:storagenetwork:picker_remote>,
    <item:storagenetwork:collector_remote>,
    <item:storagenetwork:builder_remote>
] as IItemStack[];

for  remote in remotes {
    craftingTable.remove(remote);
    JEI.hideIngredient(remote);
}