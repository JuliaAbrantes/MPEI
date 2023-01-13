function hashArray = aplyToKeys(keys, type, sz)
    hashArray = zeros(1, length(keys));
    switch(type)
        case 'djb2'
            for i = 1:length(keys)
                hashArray(i) = mod(string2hash(keys{i}, 'djb2') , sz);
            end
            
        case 'sdbm'
            for i = 1:length(keys)
                hashArray(i) = mod(string2hash(keys{i}, 'sdbm') , sz);
            end

        case 'DJB31MA'
            seed = 1;
            for i = 1:length(keys)
                hashArray(i) = mod(DJB31MA(keys{i}, seed) , sz);
            end

        case 'hashstring'

            for i = 1:length(keys)
                hashArray(i) = hashstring(keys{i}, sz);
            end
    end
end