function output = Q2_101062142(cashFlowVec, x0, timeUnit4cashFlow, timeUnit4compounding)
    % Function for computing IRR
    if nargin == 1
        x0 = 0;
        timeUnit4cashFlow = 12;
        timeUnit4compounding = 'month';
    end
    if nargin == 2
        timeUnit4cashFlow = 12;
        timeUnit4compounding = 'month';
    end
    if nargin == 3
        timeUnit4compounding = 'month';
    end
    gap = timeUnit4cashFlow;
    function npv=npvCompute(x)
        n=length(cashFlowVec);
        compounding=12;
        if strcmp(timeUnit4compounding,'year') && timeUnit4cashFlow == 12
            gap = 1;
            compounding = 1;
        end
        
        npv=sum(cashFlowVec./((1+x/(compounding)).^(0:gap:gap*(n-1))));
    end
    
    if strcmp(timeUnit4compounding, 'year') && timeUnit4cashFlow ~= 12
        output = nan;
    else
        r=fzero(@npvCompute, x0);
        format long;
        output = r;
    end
end