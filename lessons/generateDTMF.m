function [signal] = generateDTMF(teclas)

fs=8192; % sampling frequency
toneduration = 0.4;
spaceduration = 0.1;

% This vector contains the frequencies in ascending order
sourcefrequencies = [697 770 852 941 1209 1336 1477 1633];
% The first 4 correspond to the rows and
% the last 4 to the columns of the DTMF frequencies table

% Keyboard elements in the same order than in the DTMF table
symbols = {'1','2','3','A';
           '4','5','6','B';
           '7','8','9','C';
           '*','0','#','D'};

% Signal duration
t = 0:(1/fs):toneduration;
signal = [];

% Loop through the elements of the input vector "teclas"
for k = 1:numel(teclas)
    
    % In [row col] the number of row and column in the DTMF table
    % of the current element of “teclas” is stored.
    [row col] = find(strcmpi(teclas(k),symbols));
    
    % FL stores the “row” frequency needed to generate
    % the current element of “teclas”
    FL = sourcefrequencies(row);
    
    % FH stores, analogously, the “column” frequency
    FH = sourcefrequencies(col+4);
    
    % Introducing silence, if necessary
    if k~=1
        signal = [signal zeros(1, round(fs*spaceduration))];
    end
    
    % Building the signal
    signal = [signal cos(2*pi*FL*t)+cos(2*pi*FH*t)];
    
end

% Signal playback
fs=8192;
sound(signal, fs)