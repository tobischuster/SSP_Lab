function [R]=levinson(correlation_seq) %var,A,K

for i = 1:lenght(correlation_seq)
    
    R(i,i) = correlation_seq(i); % prints the diagonal
    
    for j = 1 : lenght(correlation_seq)
        
        R(i+j,j) = correlation_seq(i);
        R(i,i+j) = -correlation_seq(i);
        
    end
end


