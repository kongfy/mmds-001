function r = pageRank(G, beta, max_iteration)

n = size(G, 1);
r = ones(n, 1);
d = sum(G, 2);

for iter = 1:max_iteration
    temp = zeros(n, 1);

    for j = 1:n
        for i = 1:n
            if G(i, j) == 1
                temp(j) += beta * (r(i)/d(i));
            end
        end
    end
    
    s = sum(temp);
    temp += (n - s) / n;

    r = temp;
end

end

