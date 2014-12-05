load dataset4lineFit.txt
x=dataset4lineFit(:,1);
y=dataset4lineFit(:,2);
plot(x, y, 'or');
hold on;
A=[x,zeros(length(x),1)+1];
m=A\y;

xx=1.5:0.01:10.5;
yy=m(1)*xx+m(2);
plot(xx,yy, 'b');
[A2, eigVec, eigValue]=pca([x,y]');
[g,id]=min(eigValue)
v=eigVec(id,:);
m=v(1)/v(2);
yy=xx*m+mean(y)-m*mean(x);
plot(xx,yy, 'g');

legend('Sample dataset', 'Least-squares fit', 'Total least-squares fit');
