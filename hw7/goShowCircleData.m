function goShowCircleData
    load circleData.txt
    x=circleData(:,1);
    y=circleData(:,2);
    plot(x, y, '.');
    hold on;
    axis image
    % z = (x^2 + y^2)/2 = (2ax + 2by + (r^2-a^2-b^2))/2
    % z = ax + by + c
    % c = (r^2-a^2-b^2)/2
    z = ((x.^2 + y.^2)/2);
    A(:,1) = x;
    A(:,2)= y;
    A(:,3)= 1;
    p=A\z;
    p(3) = sqrt(2*p(3) + p(1)^2 + p(2)^2);
    fprintf('x=%g, y=%g, r=%g\n', p(1), p(2), p(3));
    fprintf('error before = %g\n',dist2Circle(p));
    circleplot(p(1), p(2), p(3), 'g');
    p=fminsearch(@dist2Circle, p);
    
    circleplot(p(1), p(2), p(3), 'r');
    fprintf('x=%g, y=%g, r=%g\n', p(1), p(2), p(3));
    fprintf('error after = %g\n',dist2Circle(p));
    
    function dist = dist2Circle(arr)
        xx=arr(1); yy=arr(2); r=arr(3);
        dist = ((x-xx).^2+(y-yy).^2);
        dist=sum((dist.^(0.5) -r).^2);
    end

    function circleplot(xc, yc, r, color)
        t = 0 : .1 : 2*pi; 
        xx = r * cos(t) + xc; 
        yy = r * sin(t) + yc; 
        plot(xx, yy, color) 
    end
end

