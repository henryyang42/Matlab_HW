function output = pageRankViaPower(A)
	[n, m] = size(A);
	x = zeros(1, n)' + 1/n;
	xx = zeros(1, n)';
	while norm(x-xx,1) > eps
		xx = x;
		x = A*x;
	end
	output = x;
end