function x = x_ss(m, start_seq, flag)
x_seq = zeros ([1 127]);
for i = 1:128
    if (i < 8)
        x_seq(i) = start_seq(i);
    end
    if (flag == 1)
        x_seq(i + 7) = mod(x_seq(i+4) + x_seq(i), 2);
    elseif (flag == 2)
        x_seq(i + 7) = mod(x_seq(i+1) + x_seq(i), 2);
    end
end
x = x_seq(m);
end