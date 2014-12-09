function output = Q2_101062142(p)
	[n,m] = size(p);
	function sumDistance=dist2Plane(x)
		sumDistance=0;
		for i=1:n
			sumDistance = sumDistance + ((p(i,1)*x(1) + p(i,2)*x(2) + p(i,3)*x(3) + p(i,4))^2) / ((p(i,1)^2 + p(i,2)^2 + p(i,3)^2));
		end
	end
	A = p(:,1:3);
	y = -p(:,4);
	pp = (A\y)';
	pp=fminsearch(@dist2Plane, pp);
	output = pp;
end