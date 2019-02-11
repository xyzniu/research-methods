%% read xls
student_marks = xlsread("StudentMarks.xls");

%% draw diagram
histogram(student_marks, 20);

%% calculate the mean, variance, and standard deviation of this distribution
[mean, variance, standard_deviation] = calculation(student_marks);

%% random select 10 samples for 10000 times, plot the histogram for its mean
sample_mean(student_marks, 10, 10000);

%% random select 40 samples for 10000 times, plot the histogram for its mean
sample_mean(student_marks, 40, 10000);