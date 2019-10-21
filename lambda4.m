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
    theta2=0;theta3=1.6804;theta4=0.8649;theta5=1.2389;
    theta=[theta1 theta2 theta3 theta4 theta5];
    if theta1<2*pi
    E4(i)=Expectation4(theta);
    R(i)=i;
    subplot(2,2,4);
    grid on;
    %set(gca,'ytick',0:0.05:0.7);
    hold on;
    plot(R,E4,'LineWidth',2);
    end
end
%ÉèÖÃ×ø±êÖálabel
ylabel('Cost Function','FontSize',13);
xlabel('Optimization step','FontSize',13);
%%
theta0=[pi pi/2 pi/2 pi/2 pi/2]
%classical minimization algorithm.
x=fminsearch(@Expectation4,theta0)