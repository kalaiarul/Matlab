close all; 
clear all;
%creating recorder object
t = audiorecorder(8000,24, 1);
disp('start speaking');
recordblocking(t,1);
disp('Stop recording');
play(t);
% get audio data
y = getaudiodata(t);
% to save the audio
audiowrite('My_voice.wav', y, 8000);
% change to time domain
f = length(y);
s = (0:f-1)/80000;
plot(s,y),xlabel('Time(s)'),ylabel('Amplitude'),title('Recorded audio')
grid on
