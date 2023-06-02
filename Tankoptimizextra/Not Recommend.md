# [Better F3](https://www.curseforge.com/minecraft/mc-mods/betterf3)
只是更卡顿的 F3。
# [Radon](https://www.curseforge.com/minecraft/mc-mods/radon)
氡治标，星光治本。

不推荐删除星光安装氡，尤其是在装有 Better End、Aether 这类浮岛（其实末地也是）模组的情况下，因为原版的光照引擎在浮岛环境下的性能表现是依托市。
# [Better Nether Reforged](https://www.curseforge.com/minecraft/mc-mods/betternether-reforged)
https://github.com/Someone-Else-Was-Taken/BetterNether-Reforged/issues/53
# [MCreator](https://mcreator.net/) Mods
多说无益，别等 PTSD。
# [Lightspeed](https://www.curseforge.com/minecraft/mc-mods/lightspeedmod)
I'll give my usual advice that you don't really need Lightspeed if you have ModernFix already.
—— embeddedt, ModernFix author, my faith.
# [Snow Real Magic](https://www.curseforge.com/minecraft/mc-mods/snow-real-magic)
与铷不兼容，请使用 [Snow Real Magic Potato Edition](https://www.curseforge.com/minecraft/mc-mods/snow-real-magic-potato-edition)
# [Better End Reforked](https://www.curseforge.com/minecraft/mc-mods/betterend-re-forked) Or [BetterEnd (Forge)](https://www.curseforge.com/minecraft/mc-mods/betterend-forge-port)
与铷不兼容，请使用 [Better End Potato Edition](https://www.curseforge.com/minecraft/mc-mods/better-end-potato-edition)
# [Dynamic Trees](https://www.curseforge.com/minecraft/mc-mods/dynamictrees)
卡顿的 eye candy。因为自身代码的缺陷导致与 ModernFix 不兼容（见[此](https://github.com/DynamicTreesTeam/DynamicTrees/issues/758)）。
# [RoadRunner](https://www.curseforge.com/minecraft/mc-mods/roadrunner)
已经严重过时，不兼容的小问题非常多，还会造成负优化。
# [Survive](https://www.curseforge.com/minecraft/mc-mods/survive)
各种方面的粪。
# [OptiFine](https://www.optifine.net/)
？
# [Snow Under Trees](https://www.curseforge.com/minecraft/mc-mods/snow-under-trees)
Meaningless world lag maker.
# [Chocolate Fix](https://www.curseforge.com/minecraft/mc-mods/chocolate-fix)
不是很有必要继续安装的模组，**即使你有 BYG**。MC-202036：Forge 已经修复了它。MC-197616：单一生物群系修复，如果你真的想让你整合包里的某个维度只有一个群系，但加无妨。
# [Adaptive Performance Tweaks](https://www.curseforge.com/minecraft/mc-mods/adaptive-performance-tweaks)
1.16.5 已经停更。优化 × 阉割 √。
# [Memory Sweep](https://www.curseforge.com/minecraft/mc-mods/memorysweep)
下面是 Legacy Modding Discord —— modernfix-discussion channel 中 embeddedt 对此模组的看法：

memory sweep is problematic and should not be used in my opinion

it just tells java to forcefully perform garbage collection which causes a lag spike

or, if you have the java argument that disables that, it will literally do nothing

java already knows how to collect garbage and does not need a mod asking it to do so

之后，我告诉了 embeddedt 关于 ZGC JVM Argument 的相关消息：got some new info from memory sweep dev, jvm argument ZGC: -XX:+UnlockExperimentalVMOptions -XX:+UseZGC.

In other's test, it reduce 4500MB in mc1.19.2, java17, from 5200 to
700, without any lag spike. What do you think about this embeddedt? Should we change our opinion?

下面是他的回复：it means the heap size was too large to begin with

and the GC just hadn't bothered to collect aggressively

if the heap is large then the memory use will generally be higher, as the GC takes advantage of it to try and balance out the collection times

swapping to ZGC might yield improvements independently from memory sweep, as its obviously a different garbage collector, but I know it generally requires more memory to work well

老实说，我看不懂他的回复。但 embeddedt 是我的 faith，所以我决定听从他，不使用 memory sweep。
