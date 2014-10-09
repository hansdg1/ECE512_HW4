figure(1)
hw4_HDG('square-400ms.txt',0,20);
savefig('Square_LP_20Hz.fig')
print('Square_LP_20Hz','-dpng','-r125')

figure(2)
hw4_HDG('square-400ms.txt',1,20);
savefig('Square_HP_20Hz.fig')
print('Square_HP_20Hz','-dpng','-r125')

figure(3)
hw4_HDG('ecg.txt',0,60);
savefig('ECG_LP_60Hz.fig')
print('ECG_LP_60Hz','-dpng','-r125')

figure(4)
hw4_HDG('SpO2.txt',1,30);
savefig('SpO2_HP_30Hz.fig')
print('SpO2_HP_30Hz','-dpng','-r125')