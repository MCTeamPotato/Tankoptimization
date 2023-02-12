# Tankoptimization
This is a modpack that aims to fix bugs & optimize your MC without adding too much substantial survival content(like JEI, minimaps or inventory sorters) to improve your game experience.

Example modpack based on this pack: [Sunken Abraham Craft](https://github.com/MCTeamPotato/Sunken-Abraham-Craft)

# Features

**1.**_Forge's version checker has been disabled and will no longer have mod update detection to take up your startup time;_

**2.**_Forge's built-in removeErroringEntities, removeErroringTileEntities, fixVanillaCascading, and dimensional shutdown functions have been enabled;_

**3.**_RoadRunner's [serious crash issue](https://github.com/MaxNeedsSnacks/roadrunner/issues/12) and other performance issues have been resolved by disabling the corresponding mixin in the configuration file;_

**4.**_[Rubidium Extra](https://www.curseforge.com/minecraft/mc-mods/rubidium-extra)'s mixin compatibility problem with some mods (such as [Better Diving](https://www.curseforge.com/minecraft/mc-mods/better-diving)) has been solved by disabling the corresponding mixin in its configuration file;_

**5.**_Fix a series of MC bugs by various mods such as Bee Fix, Fast Projectile Fix, Max Health Fix, Random Patches, etc._

**6.**_Details modified: Rubidium and Random Patches have been optimized for bamboo rendering at the same time, and the latter has been disabled in this pack; Random Patches mixins ClientPlayerEntity at the same time as [ExpandAbility](https://www.curseforge.com/minecraft/mc-mods/expandability), resulting in a warning on startup, and mixins for the former have been also disabled in this pack (although this pack does not include ExpandAbility, this does not prevent the pack from pursuing maximum compatibility)._

**7.**_Information inheritance: The log information from 1.19.2 Fabric [Krypton](https://www.curseforge.com/minecraft/mc-mods/krypton) to disable [Lithium](https://www.curseforge.com/minecraft/mc-mods/lithium) mixin is also configured in this pack on RoadRunner's rules.properties. Although it is not known exactly what effect it has on opening/closing, this does not conflict with being better safe than sorry._

# Target peoples
This pack is for modpack authors (to lay a good foundation for their packs), so feel free to use this pack as a foundation and build your palace on it.

But the modpack optimization can never only rely on the basic optimization foundation, to achieve better optimization, you need to carefully optimize the configuration file of the mods, make certain content trade-offs (at this point, Spark will be your good helper, carefully analyze the sparkprofile and modify it to make the optimization of the modpack to a higher level).

Don't add mods that are frustrated and messy inside, and keep your eyes peeled for a by-product of the MCreator that makes most servers wail. This foundation is not responsible for the catastrophic impact of certain mod(s).

# Log filtering
This pack does have [Cuneiform](https://www.curseforge.com/minecraft/mc-mods/cuneiform).

LOGGER, undoubtedly will have a greater or small impact on performance. LOGGER screen brushing is not conducive to reading logs, find error points, so it is recommended to edit Cuneiform's configuration file (config/cuneiform-common.toml) to filter logs.

You can play normally for a period of time, and then collect the swipe entries in logs/latest.log, pick out the keywords and fill in the configuration file as required.

Due to the time when the mod is officially loaded into the game, the log in the previous part of the log (before Cuneiform loads) cannot be filtered.

# Compatibility

A mod that can be installed but won't work: [Saturn](https://www.curseforge.com/minecraft/mc-mods/saturn). Because [ModernFix](https://www.mcmod.cn/class/8714.html) has removed the (Saturn-modified) biome temperature cache.

[Smooth Boot](https://www.curseforge.com/minecraft/mc-mods/smooth-boot-forge) with its default configuration is not compatible with this pack. It will cause slow chunk loading and longer game starting time.

If you don't have a need for Nether Portals (or disable Nether Portals), you can delete NetherPortalFix_1.16.3-7.2.1.jar.


# Attention

Some of this pack will not be added, but players can install mods themselves if they have the corresponding idea: [Tankoptimizextra](https://github.com/MCTeamPotato/Tankoptimization/tree/main/Tankoptimizextra)

Modern UI also requires that your OpenGL is higher than or equal to 4.5. If your configuration is insufficient, please remove the ModernUI-1.16.5-2.7.1.105-universal .jar.

You can't directly delete mods in Curse format packs. You must first delete modpack.cfg and manifest.json in the directory (.minecraft/versions/Tankoptimization/) before you delete them, otherwise they will be downloaded back to your pack at game startup.

It is not recommended to stick to Java 8, the higher the Java version, the better the GC, the lower the memory consumption, and the better optimization in all aspects (such as startup speed), please consider according to your own situation.

Please enter the JVM argument -XX:+ExplicitGCInvokesConcurrent in the launcher to solve the lag problem when the [Memory Sweep](https://www.curseforge.com/minecraft/mc-mods/memorysweep) is calling GC.
