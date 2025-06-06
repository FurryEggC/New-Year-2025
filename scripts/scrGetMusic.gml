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
    case rEndRoom:
    case rLevelSelect:
        roomSong = -2;
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
    case rStage16_1:
    case rStage16_2:
    case rStage16_3:
        roomSong = musVolcano;
        break;
    case rFinal_01:
    case rFinal_02:
    case rFinal_03:
    case rFinal_04:
    case rFinal_05:
    case rFinal_06:
    case rFinal_07:
    case rFinal_08:
    case rFinal_09:
    case rFinal_10:
    case rFinal_11:
    case rFinal_12:
    case rFinal_13:
    case rFinal_14:
    case rFinal_15:
    case rFinal_16:
        roomSong = musStarburnedAndUnkissed;
        break;
    case rHidden01_1:
    case rHidden01_2:
    case rHidden01_3:
    case rHidden01_4:
    case rHidden01_5:
    case rHidden01_6:
        roomSong = musLetTheRaversRave;
        break;
    case rHidden02_1:
    case rHidden02_2:
    case rHidden02_3:
        roomSong = musHowYouMakeMeFeel;
        break;
    case rHidden03_1:
    case rHidden03_2:
    case rHidden03_3:
    case rHidden03_4:
        roomSong = musFlubirds;
        break;
    case rHidden04_1:
    case rHidden04_2:
    case rHidden04_3:
        roomSong = musMushroomRadiation;
        break;
    case rHidden05_1:
    case rHidden05_2:
    case rHidden05_3:
        roomSong = musThroughTheWalls;
        break;
    case rHidden06_1:
    case rHidden06_2:
    case rHidden06_3:
        roomSong = musUntilTheShadows;
        break;
    case rHidden07_1:
    case rHidden07_2:
    case rHidden07_3:
    case rHidden07_4:
        roomSong = musALongLostSilence;
        break;
    case rHidden08_1:
    case rHidden08_2:
    case rHidden08_3:
        roomSong = musThanatos;
        break;
    case rHidden09_1:
    case rHidden09_2:
    case rHidden09_3:
        roomSong = musGirls;
        break;
    case rHidden10_1:
    case rHidden10_2:
    case rHidden10_3:
        roomSong = musWolfDrawn;
        break;
    case rHidden11_1:
    case rHidden11_2:
    case rHidden11_3:
    case rHidden11_4:
    case rHidden11_5:
    case rHidden11_6:
        roomSong = musCallOfTheAbyss;
        break;
    case rHidden12_1:
    case rHidden12_2:
    case rHidden12_3:
        roomSong = musNaturalCause;
        break;
    case rHidden13_1:
    case rHidden13_2:
    case rHidden13_3:
        roomSong = musArise;
        break;
    case rHidden14_1:
    case rHidden14_2:
    case rHidden14_3:
    case rHidden14_4:
        roomSong = musRottingHills;
        break;
    case rHidden15_1:
    case rHidden15_2:
    case rHidden15_3:
    case rHidden15_4:
    case rHidden15_5:
        roomSong = musHolySmoke;
        break;
    case rHidden16_1:
    case rHidden16_2:
    case rHidden16_3:
        roomSong = musSunAndMoon;
        break;
    case rEX_1:
    case rEX_2:
    case rEX_3:
    case rEX_4:
    case rEX_5:
    case rEX_6:
        roomSong = musCreditsEX;
        break;
    case rEXEnd:
        roomSong = musPeakMagic;
        break;
    default:                        //default option in case the room does not have a song set
        roomSong = musNull;
        break;
}

if (roomSong != -2)
    scrPlayMusic(roomSong,true); //play the song for the current room
