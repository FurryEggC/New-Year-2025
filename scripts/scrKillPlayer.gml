//kills the player

var silence;
if (argument_count == 0) silence = false;
else silence = argument[0];

if (instance_exists(objPlayer) && (!global.noDeath && !global.debugNoDeath))
{
    if (global.gameStarted) //normal death
    {
        global.deathSound = audio_play_sound(sndDeath,0,false);
        
        if (!global.muteMusic)  //play death music
        {
            if (global.deathMusicMode == 1) //instantly pause the current music
            {
                audio_pause_sound(global.currentMusic);
                
                global.gameOverMusic = audio_play_sound(musOnDeath,1,false);
            }
            else if (global.deathMusicMode == 2)    //fade out the current music
            {                
                with (objWorld)
                    event_user(0);  //fades out and stops the current music
                
                global.gameOverMusic = audio_play_sound(musOnDeath,1,false);
            }
        }
        
        if (!silence)
        {
            with (objPlayer)
            {
                instance_create(x,y,objBloodEmitter);
                instance_destroy();
            }
            
            instance_create(0,0,objGameOver);
            
            global.death += 1; //increment deaths
        }
        scrSaveGame(false); //save death/time
    }
    else    //death in the difficulty select room, restart the room
    {
        with(objPlayer)
            instance_destroy();
            
        room_restart();
    }
}
