i=[ones(1,3000)*10,i_2,ones(1,4300)*24];k=[0:0.01:120];max=-inf;
for k_0=[50:0.01:60]
k_1=[0:0.01:(k_0-0.01)];k_2=[k_0:0.01:100];
syms A B
eq1=A*k_0^3-B*(k_0-100)^3-14;
eq2=A*k_0^2-B*(k_0-100)^2;
S=solve(eq1,eq2);
S_a=double(S.A);
S_b=double(S.B);
i_m1=S_a.*k_1.^3+10.*ones(1,(k_0*100));
i_m2=S_b.*(k_2-100.*ones(1,(10001-100*k_0))).^3+24.*ones(1,(10001-100*k_0));
i_m=[i_m1,i_m2,24.*ones(1,2000)];g=(i_m-i).^2;xi=1-trapz(k,g);
if xi>=max
    max=xi;
    z=k_0;
end
end
