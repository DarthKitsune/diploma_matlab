function [ out ] = normalize( arr )
%NORMALIZE Summary of this function goes here
%   input array: [price_open, price_close, price_high, price_low]
%   output array: [price_open, price_close, price_high, len_abs, len_body, body/abs, shadow_upper, shadow_lower, upper/lower]

%step 1: new array
n = length(arr);
out = zeros(n, 9);
disp(n);
%step 2: define const
price_open = 1;
price_close = 2;
price_high = 3;
len_abs = 4; 
len_body = 5; 
body_abs = 6; 
shadow_upper = 7;
shadow_lower = 8;
upper_lower = 9;

%step 3: filling new array
for i = 1:n
    diff = arr(i, 4) - 1; %only this exist magic number
    %X = [num2str(i), ' : ', num2str(arr(i, 3)), ' - 1 = ', num2str(diff)];
    %disp(X);
    out(i, price_open) = arr(i, price_open) - diff;
    out(i, price_close) = arr(i, price_close) - diff;
    out(i, price_high) = arr(i, price_high) - diff;
    out(i, len_abs) = out(i, price_high) - 1;
    out(i, len_body) = abs(out(i, price_open) - out(i, price_close));
    out(i, body_abs) = out(i, len_body)/out(i, len_abs);
    out(i, shadow_upper) = out(i, price_high) - max(out(i, price_open), out(i, price_close));
    out(i, shadow_lower) = min(out(i, price_open), out(i, price_close)) - 1;
    out(i, upper_lower) = out(i, shadow_upper)/out(i, shadow_lower);
end
end

