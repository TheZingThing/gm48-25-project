//Randomised sprites for the platform blocks, just to spice it up
randomise();
tile = irandom(5)

if (tile == 0) sprite_index = r_spr_floor;
if (tile == 1) sprite_index = r_spr_floor1;
if (tile == 2) sprite_index = r_spr_floor2;
if (tile == 3) sprite_index = r_spr_floor3;
if (tile == 4) sprite_index = r_spr_floor4;
if (tile == 5) sprite_index = r_spr_floor5;

instance_create_layer(x,y,"Clipping",obj_wall);