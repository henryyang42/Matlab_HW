function output = Q1_101062142(frame, polyOrder)
	x=(1:length(frame))';
	A = [];
	for i=0:polyOrder
		A = [A, x.^i];
	end
	theta = A\frame';

	output = frame' - A*theta;
end
