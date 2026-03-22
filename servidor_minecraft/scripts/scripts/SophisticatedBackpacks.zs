import crafttweaker.api.recipe.CraftingTableRecipeManager;
import mods.jei.JEI;
import mods.jei.component.JeiIngredient;
import crafttweaker.api.item.IItemStack;

var backpackColorCodes = [
    16351261,//orange
    13061821,//magenta
    3847130,//light blue
    16701501,//yellow
    8439583,//lime
    15961002,//pink
    4673362, //gray
    16383998,//white
    2895973, //green main-blue lines
    1908001, //black
    11546150, //red
    6192150, //green
    3949738, //blue
    8606770, //brown
    1481884, //cyan
    8991416, //purple
    10329495 //light gray
] as int[];

//recreate list of backpacks, with tags.
//Backpacks to hide
var coloredBackpacks = new stdlib.List<IItemStack>();
for color in backpackColorCodes{
    coloredBackpacks.add(<item:sophisticatedbackpacks:backpack>.withTag({borderColor: color}));
}

for container in coloredBackpacks {
    JEI.hideIngredient(container);
}
