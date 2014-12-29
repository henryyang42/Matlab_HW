U = {'http://www.alpha.com'
'http://www.beta.com'
'http://www.gamma.com'
'http://www.delta.com'
'http://www.rho.com'
'http://www.sigma.com'};

n=6;
i = [2 6 3 4 4 5 6 1 1];
j = [1 1 2 2 3 3 3 4 6];
G = sparse(i,j,1,n,n);
y = [];
pp = [];
for p=0:0.099:1
	pp = [pp, p];
	x = pagerank(U, G, p)';
	y = cat(1, y, x);
end
% Bar graph of page rank.

bar(pp, y);
title('Page rank vs. random transition probability');
ylabel('Page ranks');
xlabel('Random transition probability');
