function [soundGuit,blk] = GuitarRy(f,t)
% 该函数周期为2，改变频率*2f
timbre=sqrt(3)./2.*sin(pi.*2.*f.*t)+sqrt(3)./2.*cos(pi.*2.*f.*t)+sqrt(3)./2.*sin(2.*pi.*2.*f.*t)+sqrt(3)./2.*cos(2.*pi.*2.*f.*t)-1./4.*sin(3.*pi.*2.*f.*t)-1./4.*cos(3.*pi.*2.*f.*t);
% other test timbre: 
% timbre=(-1./4.*sin(3.*pi.*2.*f.*t)+1./4.*sin(pi.*2.*f.*t)+sqrt(3)./2.*cos(pi.*2.*f.*t));
% timbre=-1./4.*sin(3.*pi.*2.*f.*t)+1./4.*sin(pi.*2.*f.*t)+sqrt(3)./2.*cos(pi.*2.*f.*t)+1./2.*sin(2.*pi.*2.*f.*t);
% timbre=-1./4.*sin(4.*pi.*2.*f.*t)-sqrt(3)./4.*sin(3.*pi.*2.*f.*t)+1./4.*sin(pi.*2.*f.*t)+sqrt(3)./2.*cos(pi.*2.*f.*t)+1./2.*sin(2.*pi.*2.*f.*t);
% timbre=-sqrt(3)./4.*sin(3.*pi.*2.*f.*t)+1./4.*sin(pi.*2.*f.*t)+sqrt(3)./2.*cos(pi.*2.*f.*t)+1./2.*sin(2.*pi.*2.*f.*t);
% timbre=1./4.*sin(3.*pi.*2.*f.*t+1./4.*sin(pi.*2.*f.*t)+sqrt(3)./2.*cos(pi.*2.*f.*t));
% timbre=1./4.*sin(pi.*2.*f.*t)+sqrt(3)./2.*cos(pi.*2.*f.*t)+1./2.*sin(2.*pi.*2.*f.*t)-1./4.*sin(3.*pi.*2.*f.*t);

a=0.5*1e-3;k=5;% tuning parameter of A
A=t.^a./exp(k.*t);% the change of amplitude of the note

% other type of amplitude
% a=-5;b=-10;
% A=exp(a*t)-exp(b*t)-(exp(a*t(end))-exp(b*t(end)));% amplitude

soundGuit=A.*timbre; % make use of amplitude and timbre

soundGuit=soundGuit./max(soundGuit,2); % regularize volume

blk = zeros(size(A)); % blank, same length as the note but no sound
end