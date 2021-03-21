clearvars;
clc;
T = readtable('DeathData.csv');
date = datetime(2020,12,19) + caldays(0:90);
% Time series
xDate = 0:1:90;
% Number of dead people
deaths = cell2mat(table2cell(T(:,"cumulative_deaths")));
% % plot(date,deaths,'*');
plot(xDate,deaths);
% Linear Regression Part
format long
% 1. Calculate the intercept(b0) & coefficient(b1)
X = [ones(length(xDate),1) xDate']; % X = [b0, b1]
b = X\deaths;
% 2. The expected value of the Linear Regression model
yCalc2 = X*b;
plot(date,yCalc2,'--');
legend('Predictions');
hold on
scatter(date,deaths);
title('Number of Dead People vs Date');
ylabel('# of People');
xlabel('Date');
% ask for the future prediction
days = input('Input the number of days you want to predict:');
% make predictions
prediction = b(1) * (length(xDate) + days) + b(2);
fprintf('The total number of dead people in the next %i days is: ',days);
disp(round(prediction));