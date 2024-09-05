% Dijkstra 算法 
% 输入带权矩阵 W
[m,n]=size(W);
%赋初值
%l(v)——顶点 v 的标号，表示从顶点 u0到 v 的一条路的权值；
%z(v)——顶点 v 的父节点标号，用以确定短路的路线。 
n=size(W,1);
for i=1:n
    l(i)=W(1,i);
    z(i)=0;
end
%初始化l(i),z(i)向量
%l(i) 存储的是从源点（假设为顶点 1）到顶点 i 的初始路径长度。
%z(i) 存储的是从源点到顶点 i 的初始父节点，初始值为 0。
i=1;
while i<=n
    for j=1:n
        if l(i)>l(j)+W(j,i)
            l(i)=l(j)+W(j,i);
            z(i)=j-1;
            if j<i
                i=j-1;
            end
        end
    end
    i=i+1;
end
z=z+1;
z
l
%输出向量z为最短路径
%输出向量l为最短路长