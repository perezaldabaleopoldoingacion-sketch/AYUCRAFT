import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.block.Block;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.block.BlockState;
import crafttweaker.api.event.Event;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.TextComponent;

craftingTable.addShaped(
    "super_glue_recipe",
    <item:create:super_glue>,
    [
        [<item:minecraft:slime_ball>, <item:create:iron_sheet>],
        [<item:minecraft:iron_nugget>, <item:minecraft:slime_ball>]
    ]
);

var cobblestoneTag = <tag:items:minecraft:cobblestone>;
cobblestoneTag.add(<item:minecraft:cobblestone>);
cobblestoneTag.add(<item:minecraft:mossy_cobblestone>);
cobblestoneTag.add(<item:minecraft:cobbled_deepslate>);

craftingTable.addShaped(
    "sticker_recipe",
    <item:create:sticker>,
    [
        [<item:create:andesite_alloy>, <item:minecraft:slime_ball>, <item:create:andesite_alloy>],
        [cobblestoneTag, <item:minecraft:redstone>, cobblestoneTag]
    ]
);

<recipetype:create:mixing>.addRecipe("mix_dirt", <constant:create:heat_condition:none>, [<item:minecraft:dirt> * 2], [<item:minecraft:sand>, <item:minecraft:gravel>], [<fluid:minecraft:water> * 200], 100);

<recipetype:create:splashing>.addRecipe("copper_from_dirt", [(<item:create:copper_nugget> * 3) % 5], <item:minecraft:dirt>, 100);

furnace.removeRecipe(<item:infernalexp:basalt_cobbled>, <item:minecraft:basalt>);

<recipetype:create:crushing>.addRecipe("crush_basalt", [<item:infernalexp:basalt_cobbled>], <item:minecraft:basalt>, 200);

<recipetype:create:crushing>.addRecipe("silt_basalt", [<item:infernalexp:silt>], <item:infernalexp:basalt_cobbled>, 100);

<recipetype:create:splashing>.addRecipe("zinc_from_silt", [(<item:create:zinc_nugget> * 3) % 20], <item:infernalexp:silt>, 100);



<recipetype:create:splashing>.addRecipe("oxidize_block_1", [<item:minecraft:exposed_copper>], <item:minecraft:copper_block>, 50);

<recipetype:create:splashing>.addRecipe("oxidize_block_2", [<item:minecraft:weathered_copper>], <item:minecraft:exposed_copper>, 50);

<recipetype:create:splashing>.addRecipe("oxidize_block_3", [<item:minecraft:oxidized_copper>], <item:minecraft:weathered_copper>, 50);

var forbiddenDeployerBlocks = [
    <block:minecraft:wither_skeleton_skull>,
    <block:minecraft:soul_sand>
] as Block[];

//Try to intercept deployer's block putting event and prevent it from putting heads down
//https://docs.blamejared.com/1.18/en/forge/api/event/block/BlockPlaceEvent
//https://docs.blamejared.com/1.18/en/forge/api/event/Event
//https://docs.blamejared.com/1.18/en/vanilla/api/block/BlockState
//https://docs.blamejared.com/1.18/en/vanilla/api/entity/Entity
//https://docs.blamejared.com/1.18/en/vanilla/api/entity/EntityType

//The deployer is mimicking a player and is of same type while performing
//block putting action. It's UUID seems to be fake and connected with
//the name it should prevent players from being banned.
//Should.
//EDIT: seems like name itself cannot be extracted... What a pity. UUID will have to suffice.
var deployerEntityUUID = "9e2faded-cafe-4ec2-c314-dad129ae971d";
var deployerEntityName = "Deployer";

CTEventManager.register<crafttweaker.api.event.block.BlockPlaceEvent>((event) => {
    var entity = event.entity;
    var typeOfEntity = entity.getType();
    var blockState = event.placedBlock;
    var block = blockState.block;

    //First block - it's type checking is probably faster.
    var blacklistedBlockFound = false;
    for blacklistedBlock in forbiddenDeployerBlocks{
        if block.matches(blacklistedBlock){
            blacklistedBlockFound = true;
            break;
        }
    }
    //If found the block, check if it is the Deployer that wants to put it down.
    if blacklistedBlockFound {
        var entityNameComponent = entity.name;
        var entityUUID = entity.stringUUID;
        var entityTags = entity.tags;
        var blockStateName = blockState.asString();
        
        if deployerEntityUUID == entityUUID {
            //Deployer wants to put a forbidden block - ignore the action.
            event.cancel();
        }
    }
 });