# Interaction Command Runner (Data Pack)

This datapack makes `minecraft:interaction` entities act like command runners without command blocks.

## Target version
- Java Edition **1.21.1** (`pack_format: 48`)

## What it does
When a player right-clicks an interaction entity tagged `im.command_runner`, the datapack runs the command stored in that entity's `im_command` NBT string, as the interaction entity and at its location.

## Setup
1. Put this datapack in your world's `datapacks/` folder.
2. Run `/reload`.
3. Summon a runner:

```mcfunction
/summon minecraft:interaction ~ ~ ~ {width:1.0f,height:1.0f,Tags:["im.command_runner"],im_command:"say You clicked me"}
```

Now right-click it to trigger the command.

## Example commands
```mcfunction
/data merge entity @e[type=minecraft:interaction,tag=im.command_runner,limit=1,sort=nearest] {im_command:"particle minecraft:happy_villager ~ ~1 ~ 0.2 0.2 0.2 0 8"}
```

```mcfunction
/data merge entity @e[type=minecraft:interaction,tag=im.command_runner,limit=1,sort=nearest] {im_command:"give @p minecraft:diamond"}
```

## Notes
- The click handler picks the nearest tagged interaction entity within 6 blocks of the player.
- `im_command` must be a valid command string **without** a leading slash.
- Use this responsibly on multiplayer servers (players who can edit entity NBT can define arbitrary commands).
