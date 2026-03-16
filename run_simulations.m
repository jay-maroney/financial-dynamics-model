clear
clc
close all

tspan = [0 50];

% Initial conditions
C0 = 5;
A0 = 10;
D0 = 8;

X0 = [C0 A0 D0];

%% Strategy 1: Low Savings / Slow Debt Repayment

p1.I = 1;
p1.a = 0.05;
p1.b = 0.02;
p1.c = 0.05;
p1.d = 0.03;
p1.e = 0.07;
p1.f = 0.04;
p1.g = 0.06;

[t1,X1] = ode45(@(t,X) wealth_model(t,X,p1), tspan, X0);

%% Strategy 2: Balanced Strategy

p2.I = 1;
p2.a = 0.05;
p2.b = 0.02;
p2.c = 0.12;
p2.d = 0.08;
p2.e = 0.07;
p2.f = 0.04;
p2.g = 0.06;

[t2,X2] = ode45(@(t,X) wealth_model(t,X,p2), tspan, X0);

%% Strategy 3: Aggressive Debt Repayment

p3.I = 1;
p3.a = 0.05;
p3.b = 0.02;
p3.c = 0.08;
p3.d = 0.18;
p3.e = 0.07;
p3.f = 0.04;
p3.g = 0.06;

[t3,X3] = ode45(@(t,X) wealth_model(t,X,p3), tspan, X0);

%% Extract Variables

C1=X1(:,1); A1=X1(:,2); D1=X1(:,3);
C2=X2(:,1); A2=X2(:,2); D2=X2(:,3);
C3=X3(:,1); A3=X3(:,2); D3=X3(:,3);

%% Compute Total Wealth

W1 = C1 + A1 - D1;
W2 = C2 + A2 - D2;
W3 = C3 + A3 - D3;

%% Plot Asset Trajectories

figure

plot(t1,A1,'LineWidth',2)
hold on
plot(t2,A2,'LineWidth',2)
plot(t3,A3,'LineWidth',2)

xlabel('Time')
ylabel('Assets')

legend('Low Savings','Balanced','Aggressive Debt Repayment')

title('Asset Trajectories Under Different Financial Strategies')

grid on

%% Plot Total Wealth

figure

plot(t1,W1,'LineWidth',2)
hold on
plot(t2,W2,'LineWidth',2)
plot(t3,W3,'LineWidth',2)

xlabel('Time')
ylabel('Total Wealth')

legend('Low Savings','Balanced','Aggressive Debt Repayment')

title('Total Wealth Comparison')

grid on

%% Cash Dynamics

figure

plot(t1,C1,'LineWidth',2)
hold on
plot(t2,C2,'LineWidth',2)
plot(t3,C3,'LineWidth',2)

xlabel('Time')
ylabel('Cash')

legend('Low Savings','Balanced','Aggressive Debt Repayment')

title('Cash Trajectories')

grid on

%% Debt Dynamics

figure

plot(t1,D1,'LineWidth',2)
hold on
plot(t2,D2,'LineWidth',2)
plot(t3,D3,'LineWidth',2)

xlabel('Time')
ylabel('Debt')

legend('Low Savings','Balanced','Aggressive Debt Repayment')

title('Debt Trajectories')

grid on