%% read xls
student_marks = xlsread("StudentMarks.xls");

%% draw diagram
histogram(10, student_marks);

%% calculate the mean, variance, and standard deviation of this distribution
