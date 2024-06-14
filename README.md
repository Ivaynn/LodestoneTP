# LodestoneTP

LodestoneTP is a Minecraft data pack that introduces a convenient and "vanilla-friendly" teleportation using compasses and tracked lodestone blocks. It includes many options to personalize your experience and help you balance this feature to your liking.

<p align="center">
  <img src="https://github.com/Ivaynn/LodestoneTP/assets/130713483/eafe6c4f-4107-43ec-b7a1-071489595b50" width="60%" title="LodestoneTP">
</p>


### Links: [Discord](https://discord.gg/QAtc7ZgPxS) | [PlanetMinecraft](https://www.planetminecraft.com/data-pack/lodestonetp/)

<br/>

## Installation

1. Download the data pack from the [releases page](https://github.com/Ivaynn/LodestoneTP/releases) or Planet Minecraft
2. Find the "datapacks" folder of your world:
    - Singleplayer (new world): Create New World > More > Data Packs > Open Pack Folder
    - Singleplayer (existing world): Select World > Edit > Open World Folder > "datapacks"
    - Multiplayer: find the world folder in the server files > "datapacks"
3. Move the downloaded zip file to this folder
4. Go back to the game
5. If you're creating a new world, move the data pack from "Available" to "Selected"
6. Enter the world or use `/reload`
7. If installed correctly, you will be able to use `/trigger LodestoneTP`

To uninstall, use `/function ltp:admin/uninstall` and remove the data pack from the world files.



<br/>

## Getting Started
In Minecraft, a compass used on a lodestone block points toward it. With this data pack, you can sneak while holding that compass to teleport to the lodestone block.

To see the coordinates of your tracked compass and other information related to the data pack, you can use this command:
```
/trigger LodestoneTP
```



<br/>

## Data Pack Options

This data pack includes a few options that you can change to your liking. To view and change these options in-game, you can use this command:
```
/function ltp:admin/options
```
Click the options to change them. To set a custom value, type it at the end of its scoreboard command.


| Option | Value | Default | Description |
| -- | -- | -- | -- |
| Toggle | 0/1 | 1 | Enable or disable teleporting |
| OnLodestone | 0/1 | 1 | Toggle if players must stand on a lodestone block to teleport |
| Cooldown | ≥ 0 | 1200 | Teleport cooldown, in ticks (20 ticks = 1 second) |
| SneakTime | ≥ 0 | 100 | Sneak time to teleport, in ticks |
| MovingCancel | 0/1 | 0 | Toggle if moving should cancel the teleport |
| DamageCancel | 0/1 | 1 | Toggle if taking damage should cancel the teleport |
| GiveResistance | 0/1 | 1 | Toggle if players are resistant to damage for a few seconds after teleporting |
| BreakBlocks | 0/1 | 1 | Toggle if blocks placed on top of the lodestone should break |
| CrossDimensions | 0/1 | 1 | Toggle if players can teleport to different dimensions |
| ProgressBar | 0/1 | 1 | Toggle a progress bar while sneaking |
| BreakCompass | 0/1 | 0 | Toggle if a compass breaks when used to teleport |
| TriggerInfo | 0/1 | 1 | Toggle compass information display from `/trigger LodestoneTP` |
| RecoveryCompass | 0/1 | 0 | Toggle if a recovery compass can be used to teleport to the death location |

Default values were chosen with game balance in mind, but they're up to personal preference, so don't be afraid to change them to your liking!




<br/>

## Other information
- Made for Minecraft Java Edition 1.21
- For previous versions, check the [releases page](https://github.com/Ivaynn/LodestoneTP/releases)
- Everything in this data pack uses the `ltp` prefix





<br/>

## License
MIT license, see the [LICENSE](LICENSE) file for details.
