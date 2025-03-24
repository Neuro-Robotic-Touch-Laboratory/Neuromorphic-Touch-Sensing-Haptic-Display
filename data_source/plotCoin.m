function [h1, h2, h3] = plotCoin(r,cnt,height,nSides,color)
[X,Y,Z] = cylinder(r,nSides);
X = X + cnt(1); 
Y = Y + cnt(2); 
Z = Z * height;
Z = Z + cnt(3);
h1 = surf(X,Y,Z,'facecolor',color,'LineStyle','none','EdgeColor','k','FaceAlpha',0.5);
h2 = fill3(X(1,:),Y(1,:),Z(1,:),color,'FaceColor',color,'EdgeColor','k','FaceAlpha',0.5);
h3 = fill3(X(2,:),Y(2,:),Z(2,:),color,'FaceColor',color,'EdgeColor','k','FaceAlpha',0.5);
end  %only needed if this is within a script
