v_1=[0:0.01:30];v_2=[77:0.01:120];v_3=[30:0.01:77];
i_2=v_3./3.6./L./G_s./(ones(1,4701)+K.*(v_3./3.6).^2);
i_max=24;i_min=10;
i_2(1)=10;i_2(4701)=24;
syms x y
x=solve(x/L/G_s/(1+K*x^2)==24,x);
y=solve(y/L/G_s/(1+K*y^2)==10,y);
point_1=double(x)*3.6;point_2=double(y)*3.6;