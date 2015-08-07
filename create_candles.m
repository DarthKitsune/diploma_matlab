function [ candles ] = create_candles( arr, step )
%CREATE_CANDLE Summary of this function goes here
%   Detailed explanation goes here

[n, m] = size(arr);
n = step*(fix(n/step));
candles = zeros(fix(n/step), m);
k = 1;
for i = 1:step:n
    j = i + step - 1;
    
    %Check the out of range
    if j > n
        break;
    end
    
    %If ok - continue
    candles(k, 1) = arr(i,1);
    candles(k, 2) = arr(j,2);
    candles(k, 3) = max(arr(i:j,3));
    candles(k, 4) = min(arr(i:j,4));
    k = k +1;   
end

end

