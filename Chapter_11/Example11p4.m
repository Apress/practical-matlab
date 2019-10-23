%Example11p4
% This code pauses and resumes playing 
load handel;
player = audioplayer(y, Fs);
play(player);disp('playing is on');
pause(3);
pause(player);disp('playing is paused');
pause(3);
resume(player),disp('playing is resumed');
pause(3);
stop(player),disp('playing is off');
