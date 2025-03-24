function [row,col] = hashix(n)
%HASHIX Computes the col and row correspondent to a motor n in the FHD skin

if n<=20
    
    %compute the division
    r=mod(n-1,5);
    q= floor((n-1)./5);
    
    %assign
    row=r+1;
    col=q+1;

elseif n==21
    
    %assign
    row=1;
    col=5;

elseif n==22
    
    %assign
    row=3;
    col=5;

elseif n==23

    %assign
    row=5;
    col=5;
end

end