function [probAnalitica] = analise(p,k,n)
    probAnalitica = nchoosek(n,k)*p^k*(1-p)^(n-k); % nchoosek(n,k)= n!/(n-k)!/k!
end