rollback_define_input(
{
    left: ord("A"),
    right: ord("D"),
	up: ord("W"),
	down: ord("S"),
	r: ord("R"),
	fire: mb_left, 
	mb_x: m_axisx,
    mb_y: m_axisy,
});

rollback_define_player(obj_player, "Instances");

if (!rollback_join_game())
{
        rollback_create_game(2, false);
}




