clear; close all; clc;
s = tf('s');

G = (-s+30)/(s*(s+30)*(s+10));
K = 40 + (60/s) + 0.6*s/(0.1*s+1);
L = G*K;

figure; margin(L); % display margin
op = nyquistoptions('cstprefs');
op.ShowFullContour = 'off'; % do not show negative freqs
saveas(gcf, 'figures/bode.png');
figure; nyquist(L); % display nyquist plot
xlim([-2,0.5]);ylim([-2,0.5]);
pbaspect([1 1 1]); % aspect ratio 1:1
saveas(gcf, 'figures/nyquist.png');