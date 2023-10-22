if (global.start == true)
{
draw_set_color(c_black);
draw_text(200,(room_height/2)-50,"O operador mais forte e o " + vencedor + ".\n Espere para jogar novamente");

}

draw_set_colour (c_black);
if(player_id == 1){
draw_text(x - 10, y - 40,life_mais);
}else{
draw_text(x - 10, y - 40,life_menos);
}



