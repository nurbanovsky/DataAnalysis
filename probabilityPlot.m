if size(data) == 0 %if data hasn't been loaded yet
    fprintf('\n\n\nError: No data available.  Please Load Data')
    pause(2)
else
    fprintf('\n\n\nComputing for column 1')
    %plots a probability plot
    figure
    probplot(data(:,1))
    title(strcat(fileOutputName,": Probability Plot"))
end

    