# Make this advancement repeatable.
advancement revoke @s only im:on_interact

# Run the nearest tagged interaction entity's stored command at its own position/as itself.
execute as @e[type=minecraft:interaction,tag=im.command_runner,distance=..6,sort=nearest,limit=1] at @s run function im:run_entity
