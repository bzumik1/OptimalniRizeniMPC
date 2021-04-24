function [a,b] = dv(c)
%Rozdělí vektor na dva
% [1 a 2 b 3 c 4 d] -> [1 2 3 4] a [a b c d] 
a =[];
b = [];
size_c = size(c);

if(size_c(1) == 1) %c je řádkový vektor
   for(i = 1:(size_c(2)/2))
       a = [a, c(2*i-1)];
       b = [b, c(2*i)];
   end
else  % c je sloupcový vektor 
    for(i = 1:(size_c(1)/2))
       a = [a; c(2*i-1)];
       b = [b; c(2*i)];
   end
end
end

