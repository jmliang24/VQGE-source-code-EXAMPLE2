%The simulation of variational quantum generalized eigenvalue problem
%2019-10-17
%AUTHOR:Jin-Min Liang
clc
clear
%%
%%
theta0=[pi/2 pi/2 pi/2 pi/2 pi/2]
%classical minimization algorithm.
x=fminsearch(@Expectation1,theta0)
%%
%Given a initial value of theta=theta0.
theta2=0;
for i=1:1:1000
    theta2=theta2+i*pi/500;
    %theta2=0;theta3=1.5625;theta4=0.6864;theta5=0.7142;
    theta1=2.6922;theta3=0.7665;theta4=1.4287;theta5=1.6793;
    theta=[theta1 theta2 theta3 theta4 theta5];
    if theta2<2*pi
    E1(i)=Expectation1(theta);
    R(i)=i;
    grid on;
    %set(gca,'ytick',0:0.1:1.5);
    hold on;
    subplot(2,2,1);
    plot(R,E1,'LineWidth',2)
    end
end
%ÉèÖÃ×ø±êÖálabel
ylabel('Cost Function','FontSize',13);
xlabel('Optimization step','FontSize',13);