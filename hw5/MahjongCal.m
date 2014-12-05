
function output = MahjongCal(tiles)
    sample = {'1T', '2T', '3T', '4T', '5T', '6T', '7T', '8T', '9T', '1S', '2S', '3S', '4S', '5S', '6S', '7S', '8S', '9S', '1W', '2W', '3W', '4W', '5W', '6W', '7W', '8W', '9W', 'DONG', 'NAN', 'XI', 'BEI', 'ZHONG', 'FA', 'BAI'};
    tile_ct = zeros(1, 34);
    for i=1:length(tiles)
        for j =1:34
            if strcmp(sample(j), tiles(i))
                tile_ct(j) = tile_ct(j) + 1;
            end
        end
    end
    output = {};
    for i=1:34
        if tile_ct(i) < 4
            tmp = tile_ct;
            tmp(i) = tmp(i) + 1;
            valid = dfs(0, tmp);
            if valid
                output = [output sample(i)];
            end
        end
    end
    if isempty(output)
       output = [output 'Not ready'];
    end
end

function output = dfs(lv, tmp)
    output = 0;
    if lv == 6
       output = 1;
       return;
    end
    if lv == 1
        for i = 1:34
            %eye
            if tmp(i) >= 2
                tmp(i) = tmp(i)-2;
                if dfs(lv+1, tmp)
                    output = 1;
                    return;
                end
                tmp(i) = tmp(i)+2;
            end
        end
    else
        for i = 1:34
            %pong
            if tmp(i) >= 3 
                tmp(i) = tmp(i)-3;
                if dfs(lv+1, tmp)
                    output = 1;
                    return;
                end
                tmp(i) = tmp(i)+3;
            end
            %chow
            if i <= 27 && floor((i-1)/9) == floor((i+1)/9) && tmp(i) && tmp(i+1) && tmp(i+2)
                tmp(i) = tmp(i)-1;
                tmp(i+1) = tmp(i+1)-1;
                tmp(i+2) = tmp(i+2)-1;
                if dfs(lv+1, tmp)
                    output = 1;
                    return;
                end
                tmp(i) = tmp(i)+1;
                tmp(i+1) = tmp(i+1)+1;
                tmp(i+2) = tmp(i+2)+1;
            end
        end
    end
end
