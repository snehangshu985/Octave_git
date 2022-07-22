% finding max/avg ratio function
% myval = round(10*rand(1,10));
function myratio = minavgRatio(myval)

mymax = max(myval);
myavg = mean(myval);
disp(["The maximum value is " num2str(mymax) ])

disp(["The average value is " num2str(myavg)])

myratio = mymax/myavg


