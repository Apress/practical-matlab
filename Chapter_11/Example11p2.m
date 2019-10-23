%Example11p2
% This records your voice for 8 seconds.
RecorderVar = audiorecorder(22050, 16, 2);
disp('Start speaking now')
recordblocking(RecorderVar, 8);
disp('End of Recording');
play(RecorderVar); % Playing
% Store data in double-precision array.
RecordData = getaudiodata(RecorderVar);
plot(RecordData); % plotting the sound

