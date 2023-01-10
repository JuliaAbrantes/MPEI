function [isThere] = filterTest(filter, key, numFuncs)
    isThere = 1;
    sz = length(filter);
    %disp(filter);
    for i=1:numFuncs
        key = [key num2str(i)];
        pos = mod(DJB31MA(key, 1) , sz)+1;
        isThere = isThere && (filter(pos) == 1);
    end
    %disp("pos / bloom");
    %disp(pos)
end