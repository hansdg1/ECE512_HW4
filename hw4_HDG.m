%--------------------------------------------------------------------------
% Author:       Hans Guthrie
% Due Date:     10/9/14
% Class:        ECE 512
% File:         hw4_HDG
% Description:  
%               Reads input file, filterType, and corner frequency
%               filterType:
%                   0 = low pass filter
%                   1 = high pass filter
%--------------------------------------------------------------------------

function hw4_HDG(inputFile, filterType, fc);
A = load(inputFile, '-ascii');
t = A(:,1);
f = A(:,2);
tau = 1/(2*pi*fc);
LowPass = 1/(tau^2) .* t .* exp(-t ./ tau);
HighPass = (-2/tau + t ./ tau^2) .* exp(-t ./ tau);
dTau = t(2) - t(1);

if      filterType == 0
            func = physConv_HDG(f,LowPass,dTau);
            subplot(3,1,2);
            plot(t, LowPass);
            title(strcat('Low Pass Filter', ' fc: ', num2str(fc), 'hz'));
            xlabel('Time (seconds)');
            
elseif  filterType == 1
            func = physConv_HDG(f, HighPass, dTau);
            subplot(3,1,2)
            plot(t,HighPass);
            title(strcat('High Pass Filter', ' fc: ', num2str(fc), ' hz'))
            xlabel('Time (seconds)');
end
% Other plots
subplot(3,1,1); 
plot(t,f);
title(strcat(inputFile,' Samples: ', num2str(length(t)),' \Delta\tau: ', num2str(dTau)))
xlabel('Time (seconds)');

%Total Circuit Response graph
t = 0:dTau:(length(t) + length(HighPass)-2)*dTau;  
subplot(3,1,3); 
plot(t,func);
title('Total Circuit Response') 
xlabel('Time (s)')
end