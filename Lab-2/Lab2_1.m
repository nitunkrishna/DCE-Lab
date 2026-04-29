t = 0:0.01:2*pi;
s = sin(t);
c = cos(t);

subplot(2,1,1);
plot(t, s, 'r', 'LineWidth', 2);
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
plot(t, c, 'b', 'LineWidth', 2);
title('Cosine Wave');
xlabel('Time');
ylabel('Amplitude');
grid on;