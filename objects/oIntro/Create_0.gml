timerText = 0;
textSpeed = 7;
textSpeedFast = 3.5;
state = 0;
start = 60*6-20;
startVal = 60*3;
textProgress = 0;

alphaSpeed = 0.005;

var m = musicB1;
audio_sound_gain(m, 0,0);
audio_sound_gain(m, 1,1000*4.5);
audio_play_sound(m,1,true);

Music(state);
global.money = 0;
global.firstSub = 1;
global.firstTime = 1;
global.full = false;