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
    <item:sophisticatedbackpacks:advanced_compacting_upgrade>,
    <item:sophisticatedbackpacks:advanced_deposit_upgrade>,
    <item:sophisticatedbackpacks:advanced_feeding_upgrade>,
    <item:sophisticatedbackpacks:advanced_filter_upgrade>,
    <item:sophisticatedbackpacks:advanced_magnet_upgrade>,
    <item:sophisticatedbackpacks:advanced_pickup_upgrade>,
    <item:sophisticatedbackpacks:advanced_pump_upgrade>,
    <item:sophisticatedbackpacks:advanced_refill_upgrade>,
    <item:sophisticatedbackpacks:advanced_restock_upgrade>,
    <item:sophisticatedbackpacks:advanced_tool_swapper_upgrade>,
    <item:sophisticatedbackpacks:advanced_void_upgrade>,
    <item:sophisticatedbackpacks:auto_blasting_upgrade>,
    <item:sophisticatedbackpacks:auto_smelting_upgrade>,
    <item:sophisticatedbackpacks:auto_smoking_upgrade>,
    <item:sophisticatedbackpacks:battery_upgrade>,
    <item:sophisticatedbackpacks:blasting_upgrade>,
    <item:sophisticatedbackpacks:compacting_upgrade>,
    <item:sophisticatedbackpacks:crafting_upgrade>,
    <item:sophisticatedbackpacks:deposit_upgrade>,
    <item:sophisticatedbackpacks:everlasting_upgrade>,
    <item:sophisticatedbackpacks:feeding_upgrade>,
    <item:sophisticatedbackpacks:filter_upgrade>,
    <item:sophisticatedbackpacks:inception_upgrade>,
    <item:sophisticatedbackpacks:jukebox_upgrade>,
    <item:sophisticatedbackpacks:magnet_upgrade>,
    <item:sophisticatedbackpacks:pickup_upgrade>,
    <item:sophisticatedbackpacks:pump_upgrade>,
    <item:sophisticatedbackpacks:refill_upgrade>,
    <item:sophisticatedbackpacks:restock_upgrade>,
    <item:sophisticatedbackpacks:smelting_upgrade>,
    <item:sophisticatedbackpacks:smoking_upgrade>,
    <item:sophisticatedbackpacks:stack_upgrade_tier_1>,
    <item:sophisticatedbackpacks:stack_upgrade_tier_2>,
    <item:sophisticatedbackpacks:stack_upgrade_tier_3>,
    <item:sophisticatedbackpacks:stack_upgrade_tier_4>,
    <item:sophisticatedbackpacks:stonecutter_upgrade>,
    <item:sophisticatedbackpacks:tank_upgrade>,
    <item:sophisticatedbackpacks:tool_swapper_upgrade>,
    <item:sophisticatedbackpacks:upgrade_base>,
    <item:sophisticatedbackpacks:void_upgrade>,
    <item:sophisticatedbackpacks:xp_pump_upgrade>
] as IItemStack[];

var lootRulesNames = [
"no_advanced_compacting_upgrade",
"no_advanced_deposit_upgrade",
"no_advanced_feeding_upgrade",
"no_advanced_filter_upgrade",
"no_advanced_magnet_upgrade",
"no_advanced_pickup_upgrade",
"no_advanced_pump_upgrade",
"no_advanced_refill_upgrade",
"no_advanced_restock_upgrade",
"no_advanced_tool_swapper_upgrade",
"no_advanced_void_upgrade",
"no_auto_blasting_upgrade",
"no_auto_smelting_upgrade",
"no_auto_smoking_upgrade",
"no_battery_upgrade",
"no_blasting_upgrade",
"no_compacting_upgrade",
"no_crafting_upgrade",
"no_deposit_upgrade",
"no_everlasting_upgrade",
"no_feeding_upgrade",
"no_filter_upgrade",
"no_inception_upgrade",
"no_jukebox_upgrade",
"no_magnet_upgrade",
"no_pickup_upgrade",
"no_pump_upgrade",
"no_refill_upgrade",
"no_restock_upgrade",
"no_smelting_upgrade",
"no_smoking_upgrade",
"no_stack_upgrade_tier_1",
"no_stack_upgrade_tier_2",
"no_stack_upgrade_tier_3",
"no_stack_upgrade_tier_4",
"no_stonecutter_upgrade",
"no_tank_upgrade",
"no_tool_swapper_upgrade",
"no_upgrade_base",
"no_void_upgrade",
"no_xp_pump_upgrade",

    
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