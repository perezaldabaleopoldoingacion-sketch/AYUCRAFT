import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import mods.jei.JEI;
import mods.jei.component.JeiIngredient;


smithing.remove(<item:bygonenether:gilded_netherite_helmet>);
smithing.removeByInput(<item:bygonenether:gilded_netherite_helmet>);
smithing.remove(<item:bygonenether:gilded_netherite_chestplate>);
smithing.removeByInput(<item:bygonenether:gilded_netherite_chestplate>);
smithing.remove(<item:bygonenether:gilded_netherite_leggings>);
smithing.removeByInput(<item:bygonenether:gilded_netherite_leggings>);
smithing.remove(<item:bygonenether:gilded_netherite_boots>);
smithing.removeByInput(<item:bygonenether:gilded_netherite_boots>);

loot.modifiers.register(
    "no_gilded_netherite_helmet",
    LootConditions.none(),
    CommonLootModifiers.remove(<item:bygonenether:gilded_netherite_helmet>)
);

loot.modifiers.register(
    "gilded_netherite_chestplate",
    LootConditions.none(),
    CommonLootModifiers.remove(<item:bygonenether:gilded_netherite_chestplate>)
);

loot.modifiers.register(
    "gilded_netherite_leggings",
    LootConditions.none(),
    CommonLootModifiers.remove(<item:bygonenether:gilded_netherite_leggings>)
);

loot.modifiers.register(
    "gilded_netherite_boots",
    LootConditions.none(),
    CommonLootModifiers.remove(<item:bygonenether:gilded_netherite_boots>)
);

JEI.hideIngredient(<item:bygonenether:gilded_netherite_helmet> as JeiIngredient) as void;
JEI.hideIngredient(<item:bygonenether:gilded_netherite_chestplate> as JeiIngredient) as void;
JEI.hideIngredient(<item:bygonenether:gilded_netherite_leggings> as JeiIngredient) as void;
JEI.hideIngredient(<item:bygonenether:gilded_netherite_boots> as JeiIngredient) as void;