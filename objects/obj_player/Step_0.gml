//MOVIMENTAÇÃO
var _input = rollback_get_input();
direita = _input.right;
esquerda = _input.left;
cima = _input.up;
baixo = _input.down;
shoot = _input.fire;
r = _input.r

hspd = (direita - esquerda) * spd;

vspd = (baixo - cima) * spd;

if !place_meeting(x, y + 1, obj_chao){
vspd += gravidade;
}

if place_meeting(x + hspd, y, obj_chao){
    while !place_meeting(x + sign(hspd), y, obj_chao){
         x += sign(hspd)
     }
hspd = 0;
}

x += hspd;

if place_meeting(x , y + vspd, obj_chao){
    while !place_meeting(x, y + sign(vspd), obj_chao){
         y += sign(vspd);
     }
vspd = 0;
}

y += vspd;

//CONTROLE DE SPRITES	
if(hspd != 0){
	
if(player_id == 0){
	
sprite_index = spr_run_menos;
image_xscale = sign(hspd);

}else{
sprite_index = spr_run;
image_xscale = sign(hspd);
}
}else{
if(player_id == 0){
	
sprite_index = spr_idle_menos;

}else{
sprite_index = spr_idle;
}
}

if (shoot)
{
	
	if(cooldown <= 1){
		
		if(player_id == 1){
		 var _proj = instance_create_layer(x+1, y+2, layer, obj_shoot_mais);
		_proj.image_angle = point_direction(x, y, _input.mb_x, _input.mb_y);
        _proj.speed = 4;
		_proj.direction = point_direction(x, y, _input.mb_x, _input.mb_y);
        _proj.player = self;
		cooldown = 40;
		}else{
		
        var _proj = instance_create_layer(x+1, y+2, layer, obj_shoot);
		_proj.image_angle = point_direction(x, y, _input.mb_x, _input.mb_y);
        _proj.speed = 4;
		_proj.direction = point_direction(x, y, _input.mb_x, _input.mb_y);
        _proj.player = self;
		cooldown = 40;
		}
	}
}

cooldown -= 1;


if(global.start){
instance_destroy(obj_shoot);
instance_destroy(obj_shoot_mais);
reiniciar += 1;
if(reiniciar == 400){
	global.start = false;	
	vencedor = "";
}
}






