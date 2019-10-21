%The simulation of variational quantum generalized eigenvalue problem
%2019-10-17
%AUTHOR:Jin-Min Liang
clc
clear
%%
%Given a initial value of theta=theta0.
theta1=0;
for i=1:1:1000
    theta1=theta1+i*pi/500;
    %theta2=0;theta3=1.5625;theta4=0.6864;theta5=0.7142;
    theta2=1.2499;theta3=1.3053;theta4=1.6157;theta5=0.6856;
    theta=[theta1 theta2 theta3 theta4 theta5];
    if theta1<3*pi
    E3(i)=Expectation3(theta);
    R(i)=i;
    subplot(2,2,3);
    grid on;
    %set(gca,'ytick',0:0.005:0.035);
    hold on;
    plot(R,E3,'LineWidth',2);
    end
end
%ÉèÖÃ×ø±êÖálabel
ylabel('Cost Function','FontSize',13);
xlabel('Optimization step','FontSize',13);
%%
theta0=[pi pi/2 pi/2 pi/2 pi/2]
%classical minimization algorithm.
x=fminsearch(@Expectation3,theta0)