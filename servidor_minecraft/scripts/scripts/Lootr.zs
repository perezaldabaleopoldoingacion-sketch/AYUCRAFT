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
    <item:lootr:trophy>
] as IItemStack[];

var lootRulesNames = [
    "no_trophy"
] as string[];

for itemToRemove in itemsToRemove {
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