//这个脚本让末影人有80%的概率掉落一个紫颂果，推荐配合更好的末地：土豆版食用，这样你就不怕找不到紫颂果。
//This script gives enderman 80% chance of dropping an Chorus Fruit, and it's recommended to use this with Better End Potato Edition so you won't be afraid of not being able to find any Chours Fruits.
//Q：为什么不是百分百？
//Q: Why is the probability not 100%?
//A：因为爱情。
//A: Because of love.
//Q：为什么不把这个设定写进 Better End Potato Edition 模组本体里呢？
//Q: Why not include this setting in the Better End Potato Edition mod proper?
//A：因为我不想伺候那傻逼 Forge 复杂如毛线团的 Loot Modifier Registry。
//A: Because I don't want to serve that silly Forge Loot Modifier Registry that is as complicated as a ball of wool.
import crafttweaker.api.loot.conditions.LootConditionBuilder;
import crafttweaker.api.loot.conditions.vanilla.LootTableId;
import crafttweaker.api.loot.conditions.vanilla.RandomChance;
import crafttweaker.api.loot.modifiers.CommonLootModifiers;

var chorus = LootConditionBuilder.create()
    .add<LootTableId>(condition => {
        condition.withTableId(<resource:minecraft:entities/enderman>);
    })
    .add<RandomChance>(condition => {
        condition.withChance(0.8);
    });
loot.modifiers.register("chorus_fruit_from_enderman", chorus, CommonLootModifiers.add(<item:minecraft:chorus_fruit>));
