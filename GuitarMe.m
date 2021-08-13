function [soundGuit,blk] = GuitarMe(f,t)
%Function of getting a note based on style: guitar in melody
% input: 
% f frequency of the note 
% t time span of the note
% 
% return: 
% soundGuit  a note based on giving frequency f and time length t in style: guitar in melody
% blk  blank note, same time length as soundGuit but no sound

% 该函数周期为2，改变频率*2f
timbre = -1./4.*sin(3.*pi.*2.*f.*t)+1./2.*sin(2.*pi.*2.*f.*t)+...
    1./4.*sin(pi.*2.*f.*t)+sqrt(3)./2.*cos(pi.*2.*f.*t); % timbre (specifically wave shape)

a=0.5*1e-3; k=5; % tuning parameter of A
A=t.^a./exp(k.*t); % the change of amplitude of the note

soundGuit=A.*timbre; % make use of amplitude and timbre

soundGuit=soundGuit./max(soundGuit,2); % regularize volume

blk = zeros(size(A)); % blank, same length as the note but no sound
end