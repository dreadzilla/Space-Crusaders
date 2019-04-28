/// @description Explode it!

repeat (100) {
	var random_x = irandom_range(-18,18);
	var random_y = irandom_range(-18,18);
	
	var particle = instance_create_layer(x + random_x, y + random_y, "Enemies", oParticle);
	particle.image_blend = c_orange;
	particle.image_speed = .1;
	particle.image_xscale += .1;
	particle.image_yscale += .1;
	particle.gravity = 0;
	particle.speed = 3;
}

audio_play_sound(aBossExplode,1,0);

oPlayerStats.playerscore += 10000;
i = instance_create_layer(x,y,"Bullets",oDamage);
i.damage="10000";
i.decreasealpha=0.01;
i.flowspeed=-4;

if (instance_exists(oPlayer)) oPlayer.state=player.won;
