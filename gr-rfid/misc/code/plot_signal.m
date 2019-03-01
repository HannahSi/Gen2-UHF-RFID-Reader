clc
clear all
close all

path = '/Users/HannahSi/Documents/GNURadio/Gen2-UHF-RFID-Reader/gr-rfid/misc/data/';
% path = '/Users/HannahSi/Downloads/RFID_Signals/';

fi_1 = fopen([path 'source'],'rb');
x_inter_1 = fread(fi_1, 'float32');

% if data is complex
x_1 = x_inter_1(1:2:end) + 1i*x_inter_1(2:2:end);

figure(1)
plot(abs(x_1))
title('Source')

%%
fi_1 = fopen([path 'matched_filter'],'rb');
x_inter_1 = fread(fi_1, 'float32');

% if data is complex
x_1 = x_inter_1(1:2:end) + 1i*x_inter_1(2:2:end);

figure(2)
plot(abs(x_1))
title('Matched Filter')

%%
fi_1 = fopen([path 'gate'],'rb');
x_inter_1 = fread(fi_1, 'float32');

% if data is complex
x_1 = x_inter_1(1:2:end) + 1i*x_inter_1(2:2:end);

figure(3)
plot(abs(x_1))
title('Gate')

%% For some reason, this graph doesn't show anything
fi_1 = fopen([path 'decoder'],'rb');
x_inter_1 = fread(fi_1, 'float32');

% if data is complex
x_1 = x_inter_1(1:2:end) + 1i*x_inter_1(2:2:end);

figure(4)
plot(abs(x_1))
title('Decoder')

%%
fi_1 = fopen([path 'reader'],'rb');
x_inter_1 = fread(fi_1, 'float32');

% if data is complex
%x_1 = x_inter_1(1:2:end) + 1i*x_inter_1(2:2:end);

figure(5)
plot(abs(x_inter_1))
title('Reader')

%%
fi_1 = fopen([path 'sink'],'rb');
x_inter_1 = fread(fi_1, 'float32');

% if data is complex
x_1 = x_inter_1(1:2:end) + 1i*x_inter_1(2:2:end);

figure(6)
plot(abs(x_1))
title('Sink')