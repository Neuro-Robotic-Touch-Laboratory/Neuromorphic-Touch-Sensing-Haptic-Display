function xyz = createmotormesh(A,B,showfig)

%create the mesh
N1=5; N2=5;
[X2,Y2] = meshgrid(linspace(0,4*A,N1),linspace(0,4*B,N2));
Z2 = zeros(size(X2));
x2=reshape(X2,[],1);
y2=reshape(Y2,[],1);
z2=reshape(Z2,[],1);

%adjust for honeycomp
x2(22:2:24)=[];
y2(22:2:24)=[];
z2(22:2:24)=[];

%adjust for honeycomb
x2(2:5:17)=x2(2:5:17)+A/2;
x2(4:5:19)=x2(4:5:19)+A/2;

% %reverse
x2=-x2;
X2=-X2;
% y2=y2(end:-1:1);

%in case show it
if showfig
    figure; hold on;
    mesh(X2,Y2,Z2,'FaceColor','b','FaceAlpha',0.2); 
    scatter3(x2,y2,z2,30,'b','o','filled','LineWidth',1);
    for i=1:length(x2)
        text(x2(i),y2(i),z2(i),sprintf('%d',i));
    end
    axis equal;
    hold off;
end

%return
xyz=[x2 y2 z2];

end