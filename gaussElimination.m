function x = gaussElimination(A, b)
    n = size(A, 1);
    Aug = [A, b];

    for k = 1:n-1
        [~, pivot] = max(abs(Aug(k:n, k)));
        pivot = pivot + k - 1;
        if pivot ~= k
            Aug([k, pivot], :) = Aug([pivot, k], :);
        end

        for i = k+1:n
            factor = Aug(i, k) / Aug(k, k);
            Aug(i, :) = Aug(i, :) - factor * Aug(k, :);
        end
    end

    x = zeros(n, 1);
    x(n) = Aug(n, n+1) / Aug(n, n);
    for i = n-1:-1:1
        x(i) = (Aug(i, n+1) - Aug(i, i+1:n) * x(i+1:n)) / Aug(i, i);
    end
end
