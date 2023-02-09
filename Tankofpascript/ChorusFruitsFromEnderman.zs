//这个脚本让末影人有80%的概率掉落一个紫颂果，推荐配合更好的末地：土豆版食用，这样你就不怕找不到紫颂果。
//Q：为什么不把这个设定写进 Better End Potato Edition 模组本体里呢？
//A：为什么我要伺候那傻逼 Forge 复杂如毛线团的 Loot Modifier Registry？
//建立一个小黑塔，紫颂果还不刷刷刷。
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
