execute store result score gametime schedule_args run time query gametime
$scoreboard players add gametime schedule_args $(tick)
$data modify storage schedule_args: main set value {function:"$(function)",args:$(args),tick:$(tick)}
execute store result storage schedule_args: main.gametime int 1 run scoreboard players get gametime schedule_args
function schedule_args:__sys__/before/subscribe with storage schedule_args: main
