function [filter] = filterAdd(filter, numFuncs, key)
    sz = length(filter);
    for i=1:numFuncs
        key = [key num2str(i)];
        pos = mod(DJB31MA(key, 1) , sz)+1;
        filter(pos) = 1;
    end
    %disp("pos / bloom");
    %disp(pos)
    %disp(newFilter);
end