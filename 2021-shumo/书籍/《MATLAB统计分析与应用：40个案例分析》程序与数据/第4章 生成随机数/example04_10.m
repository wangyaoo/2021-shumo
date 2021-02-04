%--------------------------------------------------------------------------
%                  调用自编crnd函数生成柯西分布随机数
%--------------------------------------------------------------------------

pdffun = '1/(pi*(1+x^2))';    % 密度函数表达式
% 调用crnd函数生成1000个服从指定一元连续分布的随机数
x = crnd(pdffun, [-200 200], 1000, 1);
[fp,xp] = ecdf(x);       % 计算经验累积概率分布函数值
ecdfhist(fp, xp, 100);   % 绘制频率直方图
hold on
fplot(pdffun, [-20 20], 'r')    % 绘制真实密度函数曲线
xlabel('x');       % 为X轴加标签
ylabel('f(x)');    % 为Y轴加标签
legend('频率直方图', '密度函数曲线')    % 为图形加标注框