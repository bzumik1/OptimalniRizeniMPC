function c = mv(a,b)
%MV Spojí dva vektory tak, že jejich hodnoty budou cik cak
%   [1 2 3 4] a [a b c d] -> [1 a 2 b 3 c 4 d]
c = [];
size_a = size(a);
size_b = size(b);

if(size_a(1) ==1 ) %vektory jsou řádkové
    for(i = 1:size_a(2))
       c =[c, [a(i), b(i)]];
    end
else
    for(i = 1:size_a(1)) %vektory jsou sloupcové
        c = [c; [a(i);b(i)]];
    end
end    
end

