import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import mods.jei.JEI;
import mods.jei.component.JeiIngredient;
import crafttweaker.api.item.IItemStack;

smithing.addJsonRecipe("eternalstellafix", {
    "type": "forbidden_arcanus:apply_modifier",
    "addition": {
        "item": "forbidden_arcanus:eternal_stella"
    },
    "modifier": "forbidden_arcanus:eternal"
});