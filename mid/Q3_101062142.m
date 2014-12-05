function output = Q3_101062142(data)
	[A2, eigVec, eigValue]=pca(data);
	[g,id]=min(eigValue);
	v=eigVec(:,id)';
	d = -( mean(data(1,:))*v(1) + mean(data(2,:))*v(2) + mean(data(3,:))*v(3));
	v=[v, d];
	output=v;
end