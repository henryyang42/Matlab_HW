function output = Q4_101062142(p)
	function tot=f(v)
        tot=0;
        for i=1:n
            u = p(:,i);
            dis=0;
            for j=1:di
                dis= dis+(u(j)-v(j))^2;
            end
            tot = tot+sqrt(dis);
        end
    end
    [di, n] = size(p);
    k=mean(p,2);
    [v, totr] = fminsearch(@f, k);
    output=v;
end