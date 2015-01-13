function output = Q2_101062142(X)
	[row, col] = size(X);
	mu = mean(X');
	mu = mu';
	sum = 0;
	for i=1 : col
		sum = sum + (X(:, i)-mu)*((X(:, i)-mu)');
	end
	sum = sum / col;
	output = sum;
end