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
<item:ironchests:obsidian_chest>,
<item:ironchests:obsidian_chest_upgrade>,
<item:ironchests:key>,
<item:ironchests:lock>,
<item:ironchests:crystal_chest>,
<item:ironchests:crystal_chest_upgrade>,
<item:ironchests:iron_dolly>,
<item:ironchests:dirt_chest>
] as IItemStack[];

var lootRulesNames = [
"no_obsidian_chest",
"no_obsidian_chest_upgrade",
"no_key",
"no_lock",
"no_crystal_chest",
"no_crystal_chest_upgrade",
"no_iron_dolly",
"no_dirt_chest"
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