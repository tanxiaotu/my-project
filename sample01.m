x = 0:0.01:2*pi;
y = sin(x);
figure %建立一个幕布
plot(x,y) %绘制当前的二维的平面的图
title('y = sin(x)') %取标题
xlabel('x') 
ylabel('sin(x')
xlim([0 2*pi]) %x的取值范围，让后面没有空白

x = 0:0.01:20;
y1 = 200*exp(-0.05*x).*sin(x);
y2 = 0.8*exp(-0.5*x).*sin(10*x); %在一个幕布上可以绘制多条线
figure
[AX,H1,H2] = plotyy(x,y1,x,y2,'plot'); %共用一个x坐标系，在y上面有不同的取值
set(get(AX(1),'Ylabel'),'String','Slow Decay')
set(get(AX(2),'Ylabel'),'String','Fast Decay')
xlabel('Time(\musec)')
title('Multiple Decay Rates')
set(H1,'LineStyle','--') %虚线
set(H2,'LineStyle',':') %冒号线

t = 0:pi/50:10*pi;
plot3(sin(t),cos(t),t)
xlabel('sin(t)')
ylabel('cos(t)')
zlabel('t')
% hold on %后面的东西再同一张幕布上等会再显示
% hold off %不保存当前的东西
grid on %在图片当中加网格线
axis square %将各个方向变成正方形


x = linspace(0,2*pi,60);
subplot(2,2,1) %分成2x2的，在第一个图的位置
plot(x,sin(x)-1);
title('sin(x)-1');
axis([1,2*pi,-2,0])
subplot(2,1,2) %分成2x2的，在第2个图的位置
plot(x,cos(x)+1);
title('cos(x)+1');
axis([0,2*pi,0,2])
subplot(4,4,3) %分成4x4的，在第3个图的位置
plot(x,tan(x));
title('tan(x)');
axis([0,2*pi,-40,40])
subplot(4,4,8) %分成4x4的，在第8个图的位置
plot(x,cot(x));
title('cot(x)');
axis([0,2*pi,-35,35])










