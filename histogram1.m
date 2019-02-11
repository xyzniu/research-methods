function [] = histogram1(data, bin_size)
% HISTOGRAM 
% plot a histogram for data
    bin_num = ceil(length(data)/bin_size);
    bin = zeros(bin_num,1);

    for i=1:length(data)
        d = data(i);
        n = floor(d/bin_size)+1;
        bin(n) = bin(n)+1;
    end
    x = 0:bin_size:(bin_num-1)*bin_size;
    bar(x, bin);
    end