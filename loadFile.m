try %keeps .txt files with words from being accessed
    data = importdata(uigetfile('.txt')); %imports the file (only .txt files)
    %file is converted intto a matrix of numbers
catch 
    fprintf('\n\n\nError opening file, please try again.')
    pause(2)
end

if size(data) > 0 %avoids empty files, since they'll have no data anyway
    nanData = isnan(data);
    checkNan = 0;
    %checks if the data has any NaN elements
    %therefore, if there are two columns, they must be the same length
    for i = 1:size(nanData,1)
        for j = 1:size(nanData,2)
            if nanData(i,j) == 1
                checkNan = 1;
            end
        end
    end

    if checkNan == 1
        fprintf('\n\n\nError: Data must contain one or two columns of the same length of numbers.')
        data = [];
        pause(2)
    else
        switch size(data,2)
            case {1,2} %the file cannot be more than 2 columns
                fprintf('\n\nFile Loaded. Output File Created.');
                pause(1)
            otherwise  %otherwise the data is deleted before it can be used
                data = [];
                file = [];
                fprintf('\n\n\nError: The file must have one or two columns of numbers only.')
                pause(2)
        end
    end
end


