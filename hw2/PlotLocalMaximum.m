t=0:0.1:4*pi;
y=sin(t)+rand(1, length(t));
plot(t, y, '.-');
hold on;

for i = 2:length(t)-1
    if y(i) > y(i-1) && y(i) > y(i+1)
        plot(t(i), y(i), 'marker', 'o', 'markerEdgeColor', 'r');
        text(t(i), y(i), ['(', num2str(t(i), '%.02f'),',', num2str(y(i), '%.02f'), ')']);
    end    
end

hold off;