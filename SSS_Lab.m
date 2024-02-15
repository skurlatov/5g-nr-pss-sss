function d_sss = SSS_Lab(N_ID_1, N_ID_2)
start_seq = [1 0 0 0 0 0 0]; %перевернуто для упрощения циклических операций;
d = zeros([1 127]);
m_0 = round (15 * N_ID_1 / 112 + 5 * N_ID_2);
m_1 = mod(N_ID_1, 112);
for n = 1:128
    d(n) = (1 - 2 * x_ss(mod(n+m_0, 127) + 1, start_seq, 1)) * (1 - 2 * x_ss(mod(n+m_1, 127) + 1, start_seq, 2));
end
d_sss = d;
end
