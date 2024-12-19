if (instance_number(objBullet) < bulletMax)
{
    ins = instance_create(x,y,objBullet);
    ins.hspeed = xScale * bulletSpd;
    audio_play_sound(sndShoot,0,false);
}
