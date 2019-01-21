%% read the file to M
M = dlmread('female.txt');

%% add how many females, and store it in female_count
%  compute how many males, and store it in male_count
female_count = 0;
for k=1:length(M)
    if(M(k)==1)
        female_count = female_count+1;
    end
end

male_count = length(M)-female_count;

%% graph
c = categorical({'female','male'});
distribution = [female_count, male_count];
bar(c, distribution);

%% find the mean, variance, standard deviation of this distribution
mean = (female_count*1+male_count*0)/length(M);
variance = ((1-mean)*(1-mean)*female_count + mean*mean*male_count)/length(M);
starndard_deviation = sqrt(variance);

%% sample size of 10
%  sample distribution of the sample mean for n = 10
distribution = [0,0,0,0,0,0,0,0,0,0,0];
for i=1:10000
    mean = 0;
    female_count = 0;
    male_count = 0;
    for j=1:10
        x = round(rand*999)+1;
        female_count=female_count+M(x);
    end
    male_count = 10-female_count;
    mean = female_count;
    distribution(mean+1)= distribution(mean+1)+1;
end

mean = 0.0:0.1:1.0;
plot(mean, distribution)
hold on

%% 
distribution = zeros(1, 41);
for i=1:10000
    mean = 0;
    female_count = 0;
    male_count = 0;
    for j=1:40
        x = round(rand*999)+1;
        female_count=female_count+M(x);
    end
    male_count=40-female_count;
    mean = female_count/40;
    variance = ((1-mean)*(1-mean)*female_count + mean*mean*male_count)/40;
    starndard_deviation = sqrt(variance);
    distribution(female_count+1) = distribution(female_count+1)+1;
end

mean = 0.0:0.025:1.0;
plot(mean, distribution);


%% 