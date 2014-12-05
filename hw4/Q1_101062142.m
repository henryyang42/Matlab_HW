function output = Q1_101062142(a,b)
    fields = unique([fieldnames(a) fieldnames(b)]);
    values = cell(length(a)+length(b), length(fields));
    index = 1;
    for i = 1:length(a)
        for j = 1:length(fields)
            field = num2str(cell2mat(fields(j)));
            if ~isfield(a(i), field)
                values{index, j} = [];
            else
                values{index, j} = getfield(a(i), field);
            end
        end
        index = index + 1;
    end
    
    for i = 1:length(b)
        for j = 1:length(fields)
            field = num2str(cell2mat(fields(j)));
            if ~isfield(b(i), field)
                values{index, j} = [];
            else
                values{index, j} = getfield(b(i), field);
            end
        end
        index = index + 1;
    end
    output = cell2struct(values, fields, 2)';
end