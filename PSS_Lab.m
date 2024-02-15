function d_pss = PSS_Lab(N_ID_2)
start_seq = [0 1 1 0 1 1 1]; %перевернуто для упрощения циклических операций;
d = zeros([1 127]);
for n = 1:128
    m = mod(n + 43 * N_ID_2, 127) + 1;
    d(n) = 1 - 2 * x_ss(m, start_seq, 1);
end
d_pss = d;
end
