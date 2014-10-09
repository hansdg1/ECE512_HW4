%--------------------------------------------------------------------------
% Author:       Hans Guthrie
% Due Date:     10/9/14
% Class:        ECE 512
% File:         physconv_HDG
% Description:  
%               Performs convolution on three input arrays (f, h, dTau)
%               Is called by hw4_HDG.m
%--------------------------------------------------------------------------

function [y] = physConv_HDG(f,h,dTau)

%y holds samples of output signal
%f array holds samples of input signal
%h array holds samples of unit imporse response signal
%dTau specifies the spacing between consecutive samples

i = length(f);
j = length(h);
k = i + j - 1 ;

y = zeros(1, k); 
% for loop 1 to i
for m = 1:i
    g = m;
    for n = 1:j
       y(1,g) = y(1,g) + f(m).*dTau.*h(n);  
       g = g + 1;
    end
end

end