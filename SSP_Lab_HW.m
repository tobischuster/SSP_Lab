%% SSP Matlab Lab - HW 2

clear all
close all
% Part I

%% a)



%% b)

f1 = .057;
f2 = .082;
A1 = 20;
A2 = 20;
sigpar = [f1,f2,A1,A2];
N = 256;
[y,sigpar]=sig(N,sigpar);

signal = y;

figure('Name','b) Histogram','NumberTitle','off')
hold on
N0 = 32;
Nnew = N0;

for i = 1:5
Nnew = Nnew*2
subplot(3,2,i)
[y,sigpar]=sig(Nnew,sigpar);
if Nnew < N
    y_new = y(1:Nnew);
else
    y_new = y;
end
periodo(y_new,N)
title(strcat('N = ',num2str(Nnew)))
end

% In the first two plots we cut the values which doesnt make them more
% reliable. It only shows that they are more smoother. The 

%% c)

% Reverses y 
n_length = 20;
y_rev = y(1024:-1:1);

convolution_seq=conv(y,y_rev);
for n = 0:n_length
    correlation_seq(n+1)=(1024+n)/1024;
end

%% d)

[R]=levinson_tobi(correlation_seq)

figure('Name','d) Periodogram and Autoregressive Spectrum','NumberTitle','off')
hold on
periodo(y_new,N)
%plot() % Autoregressive Spectrum
%plot() % Prediction Error Coefficients A
%plot() % Prediction error variance var
%plot() % Sequence of PARCORS K
%legend('Periodogram','Autoregressive Spectrum','Prediction Error Filter Coefficient','Prediction Error Variance','PARCORS Sequence')


