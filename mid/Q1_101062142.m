function output = Q1_101062142(x,y)
	A=[x,zeros(length(x),1)+1];
	m=A\y;
	output = m;
end