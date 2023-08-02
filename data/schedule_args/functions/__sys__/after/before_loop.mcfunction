$data modify storage schedule_args: calls set from storage schedule_args: ticks.$(gametime)
$data remove storage schedule_args: ticks.$(gametime)
execute if data storage schedule_args: calls[-1] run function schedule_args:__sys__/after/loop with storage schedule_args: calls[-1]
data remove storage schedule_args: calls