if size(data) == 0 %if data hasn't been loaded yet
    fprintf('\n\n\nError: No data available.  Please Load Data')
    pause(2)
else
    fprintf('\n\n\nComputing for column 1')
    %plots a histogram for column 1 (the x-value) of the data
    figure
    histogram(data(:,1))
    title(fileOutputName)
    xlabel(xtitle)
    ylabel('frequency')
end