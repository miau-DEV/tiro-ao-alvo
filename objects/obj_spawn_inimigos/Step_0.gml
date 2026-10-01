#region aumento de spawn rate
if spawn_rate < 60 //se o spawn rate for menor que 60 (1 segundo)
{
	spawn_rate++ //ele vai aumentando
}
#endregion

#region nascendo um novo inimgo em posição diferente
if spawn_rate = 60 and global.kills < 20 //quando o spawn_rate for igual a 60 e os abates forem menor que 5
{
	randomise() //randomiza valores
	
	hcho = random_range(100, 1200) //escolher entre esses valores horizontais
	vcho = random_range(10, 300) //escolher entre essas posições verticais
	
	instance_create_layer(x+hcho, y+vcho, "Instances", obj_alvo) //irá criar um alvo novo
	spawn_rate = 0 //spawn rate volta a 0 para fazer um ciclo
}
#endregion
