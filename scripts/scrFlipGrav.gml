/// scrFlipGrav(refresh,speed_is_0)
/// 0: no refresh   1: refresh +1   2: refresh all

//set gravity
global.grav = -global.grav;
audio_play_sound(sndFlip,0,false);

//flip the player
with (objPlayer)
{
    if (argument0 == 1) {if (djump < global.max_jump) {djump += 1}};
    else if (argument0 == 2) {djump = global.max_jump};
    
    if argument1 {vspeed = 0};
    
    jump = abs(jump) * global.grav;
    jump2 = abs(jump2) * global.grav;
    gravity = abs(gravity) * global.grav;
    
    scrSetPlayerMask();
    
    y += 4 * global.grav;
}
