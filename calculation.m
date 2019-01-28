function [mean,variance, standard_deviation] = calculation(data)
%CALCULATION Summary of this function goes here
%   Detailed explanation goes here
    sum = 0;
    for i=1:length(data)
        sum = sum+data(i);
    end
    mean = sum/length(data);
    
    variance = 0;
    standard_deviation = 0;
    
    for i = 1:length(data)
        variance = variance+power(data(i)-mean, 2);
    end

end

