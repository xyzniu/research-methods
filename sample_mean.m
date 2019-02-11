function [] = sample_mean(data, sample_size, times)
% SAMPLE_MEAN
% taking a random sample of size 10 from the data
% calculating the mean of each sample
% sampling distribution of the sample mean
    len = length(data);
    means = zeros(1, times);
    
    for i=1:times
        samples = randperm(len, sample_size);
        mean = 0;
        for j=1:sample_size
            mean = mean + data(samples(j));
        end
        mean = mean/sample_size;
        means(i) = mean;
    end
    
    hist(means);
    
end

