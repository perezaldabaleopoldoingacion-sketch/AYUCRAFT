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
    <item:relics:spore_sack>,
    <item:relics:spatial_sign>,
    <item:relics:reflection_necklace>,
    <item:relics:chorus_inhibitor>,
    <item:relics:enders_hand>,
    <item:relics:ice_breaker>,
    <item:relics:blazing_flask>,
    <item:relics:shadow_glaive>,
    <item:relics:roller_skates>,
    <item:relics:infinity_ham>,
    <item:relics:amphibian_boot>,
    <item:relics:elytra_booster>,
    <item:relics:magic_mirror>,
    <item:relics:midnight_robe>,
    <item:relics:leather_belt>
] as IItemStack[];

var itemsToRemoveStrings = [
    "spore_sack",
    "spatial_sign",
    "reflection_necklace",
    "chorus_inhibitor",
    "enders_hand",
    "ice_breaker",
    "blazing_flask",
    "shadow_glaive",
    "roller_skates",
    "infinity_ham",
    "amphibian_boot",
    "elytra_booster",
    "magic_mirror",
    "midnight_robe",
    "leather_belt"
] as string[];

var lootRulesNames = [
    "no_spore_sack",
    "no_spatial_sign",
    "no_reflection_necklace",
    "no_chorus_inhibitor",
    "no_enders_hand",
    "no_ice_breaker",
    "no_blazing_flask",
    "no_shadow_glaive",
    "no_roller_skates",
    "no_infinity_ham",
    "no_amphibian_boot",
    "no_elytra_booster",
    "no_magic_mirror",
    "no_midnight_robe",
    "no_leather_belt"
] as string[];

for itemToRemove in itemsToRemove {
    craftingTable.remove(itemToRemove);
    craftingTable.removeByInput(itemToRemove);
    JEI.hideIngredient(itemToRemove);
}

for itemToRemoveStrnig in itemsToRemoveStrings {
    JEI.hideRegex(itemToRemoveStrnig);
}

for i in 0 .. itemsToRemove.length {
    loot.modifiers.register(
        lootRulesNames[i],
        LootConditions.randomlyIn(1),
        CommonLootModifiers.remove(itemsToRemove[i])
    );
    CommonLootModifiers.remove(itemsToRemove[i]);
}
