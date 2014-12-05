function output = Q4_101062142(p)
	p = p';
	[n,m] = size(p);
	function sumDistance=dist2Plane(x)
		sumDistance=0;
		for i=1:n
			g = p(i,:)-x;
			g = g.^2;
			sumDistance = sumDistance + sum(g)^(0.5);
		end
	end
	pp=fminsearch(@dist2Plane, mean(p));
	
	for i=1:3000
		pp=fminsearch(@dist2Plane, pp);
	end
	output = pp';
end