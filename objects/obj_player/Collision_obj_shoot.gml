if (other.player == self) exit;
        
x = irandom_range(40, room_width - 40);

y = irandom_range(40, room_height - 40);
        
instance_destroy(other);


if(life_mais == 1){
global.start = true;
}


if(global.start){
life_mais = 11;
other.player.life_menos = -10;
vencedor = "menos";
}


if(player_id == 1){
self.life_mais = life_mais - dano;
reiniciar = 0;
other.player.reiniciar = 0;
other.player.vencedor = "";
}else{
self.life_menos = life_menos + dano;
reiniciar = 0;
other.player.reiniciar = 0;
other.player.vencedor = "";
}



