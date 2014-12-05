function regGeneralStar(n ,k)
    t = linspace(0, 2*pi);
    plot(cos(t), sin(t),  'r'); % plot circle
    axis square;
    hold on;
    
    step_deg = (2*pi)/n;
    for deg = 0:step_deg:2*pi
        plot(cos(deg), sin(deg), 'o'); %plot circles on the rim
    end
    
    for j= 0:n
        deg = step_deg*j;
        x = [];
        y = [];
        for i = 0:n
         x = [x, cos(deg)];
         y = [y, sin(deg)];
           deg = deg + step_deg*k;
        end
        plot(x, y);
    end
        
    hold off;
    
    
   