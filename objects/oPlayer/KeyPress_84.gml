/// @description Trade life for powerup

if (weaponcurrent >= weaponmax) exit;

if (oPlayerStats.hp <= 0) exit;

weaponcurrent++;
oPlayerStats.hp--;
state = player.hurt;
audio_play_sound(sPowerup,1,0);

repeat (irandom_range(9,15)) {
		var random_x = irandom_range(-8,8);
		var random_y = irandom_range(-8,8);
	
		var particle = instance_create_layer(x + random_x, y + random_y, "Bullets", oParticle);
		particle.image_blend = c_red;
		particle.image_speed = .5;
		//particle.image_xscale += 1;
	    //particle.image_yscale += 1;
		particle.gravity = 0;
		particle.speed = 2;
}
i = instance_create_layer(x,y,"Bullets",oDamage);
i.damage="-Life!";
