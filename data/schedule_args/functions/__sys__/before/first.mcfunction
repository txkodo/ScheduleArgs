$data modify storage schedule_args: ticks.$(gametime) set value []
$schedule function schedule_args:__sys__/after/main $(tick) append
