function [pr, iterCount] = Q2_101062142(A)
	[n, m] = size(A);
	x = zeros(1, n)' + 1/n;
	xx = zeros(1, n)';
	iterCount = 0;
	while norm(x-xx,1) > eps
		xx = x;
		x = A*x;
		iterCount = iterCount + 1;
	end
	pr = x;
end