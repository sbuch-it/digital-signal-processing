function X = dtft(x, n, omega)
    X = zeros(size(omega));
    for k = 1:length(omega)
        X(k) = sum(x .* exp(-1i * omega(k) * n));
    end
end