%% WindVane
%% Combine
fs=44100; % set sample frequency of function sound 

RythmPart=Rhythm(); % obtain rythem part of sound
MelodPart=Melody(); % obtain melody part of sound

% MelodPart = 0; 

s=RythmPart+MelodPart; % esnemble
s=s./max(s,2); % regularize volume

%% Experiment
sound(s,fs)

%% output
audiowrite('WindVane.mp4',s,fs) % save mp4 file