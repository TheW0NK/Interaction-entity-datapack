# Skip entities that do not define a command string.
execute unless data entity @s im_command run return fail

# Copy NBT string into storage for macro expansion.
data modify storage im:runtime command set from entity @s im_command

# Execute the stored command string.
function im:macro_exec with storage im:runtime
