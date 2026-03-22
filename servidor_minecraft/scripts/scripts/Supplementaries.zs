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
    <item:supplementaries:rope>,
    <item:supplementaries:rope_arrow>,
    <item:supplementaries:quiver>


] as IItemStack[];

var lootRulesNames = [
    "no_rope",
    "no_rope_arrow",
    "no_quiver"

    
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