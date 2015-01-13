function output = Q3_101062142(frame, polyOrder)
	x=(1:length(frame))';
	A = [];
	for i=0:polyOrder
		A = [A, x.^i];
	end
	frame = frame'
	theta = A\frame;

	output = frame - A*theta;
	output = output';
end