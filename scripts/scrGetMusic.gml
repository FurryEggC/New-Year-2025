///gets which song is supposed to be playing for the current room and plays it

var roomSong;

switch (room)                       //determines which song to play
{
    case rTitle:                    //add rooms here, if you have several rooms that play the same song they can be put together
    case rMenu:
    case rOptions:
    case rDifficultySelect:
        roomSong = -1;
        break;
    case rStage01_1:
    case rStage01_2:
    case rStage01_3:
        roomSong = musStumble;
        break;
    case rStage02_1:
    case rStage02_2:
    case rStage02_3:
        roomSong = musObsoleteSky;
        break;
    case rStage03_1:
    case rStage03_2:
    case rStage03_3:
        roomSong = musBreeze;
        break;
    case rStage04_1:
    case rStage04_2:
    case rStage04_3:
        roomSong = musBlues;
        break;
    case rStage05_1:
    case rStage05_2:
    case rStage05_3:
        roomSong = musDecay;
        break;
    case rStage06_1:
    case rStage06_2:
    case rStage06_3:
        roomSong = musIntro;
        break;
    case rStage07_1:
    case rStage07_2:
    case rStage07_3:
        roomSong = musMetronome;
        break;
    case rStage08_1:
    case rStage08_2:
    case rStage08_3:
        roomSong = musPleaseStay;
        break;
    case rStage09_1:
    case rStage09_2:
    case rStage09_3:
        roomSong = musBirthdayResistance;
        break;
    case rStage10_1:
    case rStage10_2:
    case rStage10_3:
        roomSong = musEve;
        break;
    case rStage11_1:
    case rStage11_2:
    case rStage11_3:
        roomSong = musEr;
        break;
    case rStage12_1:
    case rStage12_2:
    case rStage12_3:
        roomSong = musBlossom;
        break;
    case rStage13_1:
    case rStage13_2:
    case rStage13_3:
        roomSong = musRitual;
        break;
    case rStage14_1:
    case rStage14_2:
    case rStage14_3:
        roomSong = musWaitingForSunrise;
        break;
    case rStage15_1:
    case rStage15_2:
    case rStage15_3:
        roomSong = musIntrospection;
        break;
    default:                        //default option in case the room does not have a song set
        roomSong = -1;
        break;
}

if (roomSong != -2)
    scrPlayMusic(roomSong,true); //play the song for the current room
