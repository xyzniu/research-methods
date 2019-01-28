function [mean,variance, standard_deviation] = calculation(data)
%CALCULATION Summary of this function goes here
%   Detailed explanation goes here
    sum = 0;
    variance = 0;
    
    for i=1:length(data)
        sum = sum+data(i);
    end
    mean = sum/length(data);
    
    for i = 1:length(data)
        variance = variance+power(data(i)-mean, 2);
    end
    
    variance = variance/length(data);
    standard_deviation = sqrt(variance);
end

