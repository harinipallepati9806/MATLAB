X = linspace(-2*pi, 2*pi, (4*pi)/(pi/2) + 1);  
figure;
subplot(3,1,1);
plot(X, sin(X), 'b', 'LineWidth', 1.5); 
title('Sine Function');
xlabel('X (radians)');
ylabel('sin(X)');
legend('sin(X)');
grid on;
subplot(3,1,2);
plot(X, cos(X), 'r', 'LineWidth', 1.5); 
title('Cosine Function');
xlabel('X (radians)');
ylabel('cos(X)');
legend('cos(X)');
grid on;
subplot(3,1,3);
plot(X, tan(X), 'g', 'LineWidth', 1.5);  
title('Tangent Function');
xlabel('X (radians)');
ylabel('tan(X)');
legend('tan(X)');
ylim([-10, 10]);  
grid on;
subplot(3,1,1);
set(gca,'Position',[0.13, 0.75, 0.775, 0.2]);
subplot(3,1,2);
set(gca,'Position',[0.13, 0.50, 0.775, 0.2]);
subplot(3,1,3);
set(gca,'Position',[0.13, 0.25, 0.775, 0.2]);