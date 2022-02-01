function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;
l=1;m1=1;

% ====================== YOUR CODE HERE ======================
%{ for i = 1:size(X,1)
 if(y(i)==1)
   X_plot1(l,:) = X(i,:);
   l=l+1;
 elseif (y(i)==0) 
    X_plot2(m1,:) = X(i,:);
    m1=m1+1;
   endif
endfor
%}
%{
size(X_plot1)
size(X_plot2)
 plot(X_plot1(:,1),X_plot1(:,2), 'k+','LineWidth', 2, 'MarkerSize', 7 );
 plot(X_plot2(:,1),X_plot2(:,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
%}
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

pos = find(y==1); neg =  find(y==0);

plot(X(pos,1), X(pos,2),'k+','LineWidth', 2, 'MarkerSize', 7);
plot(X(neg,1), X(neg,2),'k+','LineWidth', 2, 'MarkerSize', 7);








% =========================================================================



hold off;

end
