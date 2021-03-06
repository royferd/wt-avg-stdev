function f = wt_avg_stdev(y,dy)

% 1-8-2018. Turn this code into a routine that calculates a weighted mean
% and standard deviation for a given vector of measurements and errors.
% Maybe calculate standard error and chi-square too.

clearvars -except masterlist binsize
close all

% for now I'm going to just manually put in measuremnts and errors for 
% a set of optical calibration runs with Ad Gap.

sample_size = 7;

x = zeros(sample_size,2);

x(1,1) = 0.0198;
x(1,2) = 0.0002;
x(2,1) = 0.0198;
x(2,2) = 0.0002;
x(3,1) = 0.0198;
x(3,2) = 0.0002;
x(4,1) = 0.0197;
x(4,2) = 0.0002;
x(5,1) = 0.0195;
x(5,2) = 0.0002;
x(6,1) = 0.0199;
x(6,2) = 0.0003;
x(7,1) = 0.0197;
x(7,2) = 0.0003;

%calculate weights & product of weight and measurement
wt_x = zeros(sample_size,1);

xwt = zeros(sample_size,1);

for i = 1:sample_size
    wt_x(i) = x(i,2)^(-2);
    
    xwt(i) = x(i,1)*wt_x(i);
end

%calculate weight sum

wt_x_sum = sum(wt_x(:));

x_avg_wt = sum(xwt(:))/wt_x_sum;

x_stdev_wt = (sum(wt_x(:)))^(-1/2);



    
    

