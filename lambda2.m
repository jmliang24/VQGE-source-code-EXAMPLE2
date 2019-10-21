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
    theta2=1.5806;theta3=1.6725;theta4=1.6390;theta5=1.6043;
    theta=[theta1 theta2 theta3 theta4 theta5];
    if theta1<2*pi
    E2(i)=Expectation2(theta);
    R(i)=i;
    subplot(2,2,2);
    grid on;
    set(gca,'ytick',0:0.05:0.3);
    hold on;
    plot(R,E2,'LineWidth',2);
    end
end
%ÉèÖÃ×ø±êÖálabel
ylabel('Cost Function','FontSize',13);
xlabel('Optimization step','FontSize',13);
%%
theta0=[pi/2 pi/2 pi/2 pi/2 pi/2]
%classical minimization algorithm.
x=fminsearch(@Expectation2,theta0)