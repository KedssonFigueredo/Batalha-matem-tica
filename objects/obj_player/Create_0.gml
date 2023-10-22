shoot = 0;
direita = 0;
esquerda = 0;
cima = 0;
baixo = 0;
r = 0;


global.start = false;

spd = 3.5;
hspd = 0;
vspd = 0;
cooldown = 0;
life_mais = 2;
life_menos = -2;
dano = 1;
reiniciar = 0;
vencedor = "";


gravidade = 0.3;

if (player_id == 0)
{
        x = 50;
		y = room_height / 2;
		sprite_index = spr_idle_menos
}
else if (player_id == 1)
{
        x = room_width - 50;
		y = room_height / 2;
		image_xscale = -1;
		
}