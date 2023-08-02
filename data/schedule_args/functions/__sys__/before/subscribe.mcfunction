$execute unless data storage schedule_args: ticks.$(gametime) run function schedule_args:__sys__/before/first {gametime:$(gametime),tick:$(tick)}
$data modify storage schedule_args: ticks.$(gametime) append value {function:"$(function)",args:$(args)}
