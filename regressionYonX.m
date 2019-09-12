if size(data,2) ~= 2 %Regression plots need two columns of data
    fprintf("\n\n\nERROR: For a regression plot, the data must have two columns.")
    pause(3)
else
    %the degree of regression, based on user input
    try
        degree = input('\n\n\nWhat degree of regression would be best? ');
    catch
        degree = 2;
    end
    if isempty(degree)
        degree = 2;
        fprintf('\nInvalid Selection.  Degree changed to 2.\n')
    end
    
    %makes the two columns easier to understand in code
    x = data(:,1);
    y = data(:,2);
    
    %creates the fitted data
    p = polyfit(x,y,degree);
    xfit = linspace(min(x),max(x),size(data,1));
    yfit = polyval(p,xfit);
    
    %plots the original data and the regression line
    plot(x,y,'bd',xfit,yfit,'r-')
    legend('Data Points','Regression Line')
    xlabel(xtitle)
    ylabel(ytitle)
    title(strcat(fileOutputName,": Regression of Degree ",num2str(degree)))
end