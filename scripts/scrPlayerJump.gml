if (place_meeting(x,y+(global.grav),objBlock) || onPlatform || place_meeting(x,y+(global.grav),objWater))
{
    if place_meeting(x,y+(global.grav),objPlatformOnce){
        with instance_place(x,y+(global.grav),objPlatformOnce) event_user(0);
    }
    vspeed = -jump;
    if place_meeting(x,y+(global.grav),objPlatformOneJump){djump = 0;}
    else if place_meeting(x,y+(global.grav),objPlatformTripple){djump = 2;}
    else djump = global.max_jump;
    audio_play_sound(sndJump,0,false);
}
else if (djump >= 1 || place_meeting(x,y+(global.grav),objWater2) || (global.infJump || global.debugInfJump))
{
    vspeed = -jump2;
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump,0,false);

    if (place_meeting(x,y+(global.grav),objWaterExtraOnce)){
        if (djump < global.max_jump) djump += 2;
        else djump = global.max_jump + 1;
        var ins = instance_place(x,y+(global.grav),objWaterExtraOnce);
        instance_destroy(ins);
    }
    else if (place_meeting(x,y+(global.grav),objWater2Once)){
        if (djump > 0) djump -= 1;
        var ins = instance_place(x,y+(global.grav),objWater2Once);
        instance_destroy(ins);
    } 
    
    if (!place_meeting(x,y+(global.grav),objWater3))
        {if (djump > 0) djump -= 1;}  // take away one jump
    else if (place_meeting(x,y+(global.grav),objHotWater))
        {hot_cond = 1;}
    else
        djump = global.max_jump;  // refresh jumps
}
