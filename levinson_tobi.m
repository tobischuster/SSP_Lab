function [R]=levinson(correlation_seq) %var,A,K

corL = length(correlation_seq);

R = zeros(corL,corL);

for i = 1:corL-1
     
    R(i,i) = correlation_seq(1);  % Diagonal
   
   for j = 1:corL-1
     R(j,j+1+(i-1)) = -correlation_seq(i+1); % Upper triangle
   end
   
  for t = 1-(i-1):corL-1
     R(i+1,t+(i-1)) =  correlation_seq(i+1); % Lower triangle
   end
end

R(:,corL+1:end) = [];




