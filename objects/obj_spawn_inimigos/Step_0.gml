if spawn_rate < 60
{
	spawn_rate++
}

if spawn_rate = 60
{
	instance_create_layer(700, 244, "Instances", obj_alvo)
	spawn_rate = 0
}