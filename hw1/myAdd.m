function output = myAdd(a, b)
	row = max(length(a(:,1)), length(b(:,1)));
	col = max(length(a(1,:)), length(b(1,:)));
	output = zeros(row, col);
	
	for i = 1:length(a(:,1))
		for j = 1:length(a(1,:))
			output(i, j) = output(i, j) + a(i, j);
		end
	end

	for i = 1:length(b(:,1))
		for j = 1:length(b(1,:))
			output(i, j) = output(i, j) + b(i, j);
		end
	end