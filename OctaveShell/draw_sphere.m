[x, y, z] = sphere(50); % 生成球体上的点
r = 100; % 球体半径
x1 = x * r - 50; % 第一个球的x坐标
y1 = y * r; % 第一个球的y坐标
z1 = z * r; % 第一个球的z坐标
x2 = x * r + 50; % 第二个球的x坐标
y2 = y * r; % 第二个球的y坐标
z2 = z * r; % 第二个球的z坐标
hold on; % 保持绘图区域
plot3(x1, y1, z1, 'Color', [1 0 0], 'LineWidth', 1, 'LineStyle', '--', 'Marker', 'o'); % 绘制第一个球
plot3(x2, y2, z2, 'Color', [0 0 1], 'LineWidth', 1, 'LineStyle', '-', 'Marker', 's'); % 绘制第二个球
hold off; % 结束绘图区域
grid on; % 显示网格线
axis([-r-50, r+50, -r, r, -r, r]); % 设置坐标系范围和原点
view(3); % 将视角设置为 3D
xlim([-150, 150]); % 设置x轴范围
ylim([-100, 100]); % 设置y轴范围
zlim([-100, 100]); % 设置z轴范围