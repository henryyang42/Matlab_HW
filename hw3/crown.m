subplot(121);
ezplot('sin(x)/x', pi*[-1,1]);
subplot(122);
ezplot('abs(sin(x)/x)', pi*[-1,1]);
figure;

theta = -pi:0.05:pi;
x = cos(theta);
y = sin(theta);
z = 0.5+abs(sin(4*theta)./theta);
stem3(x, y, z, 'fill');
view(-60, 45);
xlabel('X-axis');
ylabel('Y-axis');