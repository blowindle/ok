G_s=0.319;v=[0:0.01:120];;i_1=v./3.6./L./G_s./(ones(1,12001)+K.*(v./3.6).^2);%化简很容易得到这个关系是个三次函数
