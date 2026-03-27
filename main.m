clear; clc; close all;

f1 = @(x) log10(x) - cos(x);

x = 0.1:0.01:2; 
y = arrayfun(f1, x);

figure(1);
plot(x, y, 'b-', 'LineWidth', 2);
hold on;
plot(x, zeros(size(x)), 'k--');
xlabel('x');
ylabel('f(x) = lg(x) - cos(x)');
title('Графическое отделение корней уравнения lg(x) - cos(x) = 0');
grid on;
hold off;

for i = 1:length(x)-1
    if y(i) * y(i+1) < 0
        fprintf('Корень находится на интервале [%.3f, %.3f]\n', x(i), x(i+1));
    end
end