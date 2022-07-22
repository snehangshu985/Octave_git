% creating absolute median daviation
function abs_median_dev = absmediandev(x)
% e.g. x = round(100*rand(1,100));

x_bar = median(x);


myvec = abs(x - x_bar);

mysum = sum(myvec);

abs_median_dev = mysum/length(x)
disp(["The absolute mean deviation is " num2str(abs_median_dev)])


endfunction