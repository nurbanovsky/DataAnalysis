clearData() %In case of repeated use
fprintf('Welcome to the Turbo Data Analysis Machine')
pause(3) %Pauses are used throughout to allow the user to read data & errors more easily

while(menuChoice ~= 11) %repeats after every decision, until choice 11 is made (Exit Program)
    
    printMenu()
    
    if isempty(menuChoice) %used with all numeric inputs to avoid error by just pressing enter
        fprintf('\n\n\nERROR: Invalid Selection')
        menuChoice = 1;
        pause(2)
    else
        switch menuChoice
            
            case 1 %Set User Name
                newUser()
                
                
            case 2 %Load Data File
                if size(data) == 0
                    fprintf('\n\n\nWARNING: if output file has the same name as before, data will be overwritten.')
                    loadFile()
                    OutputFile() %creates the output file, with basic data
                else %if a file is already loaded
                    fprintf('\n\nERROR: Data Already Present.  Please Clear Existing Data First.');
                    pause(3)
                end
                
                
            case 3 %Clear Data From Memory
                clearData()
                fprintf('\n\n\nData Wiped From Memory');
                pause(2)
                
                
            case 4 %Set Output Filename
                %renames the output file; also applies to titles of graphs
                fprintf('\n\n\n');
                fileOutputName = input('Enter the output file''s name: ','s');
                %renames the x and y labels for graphs
                xtitle = input('Enter the name for column 1: ','s');
                ytitle = input('Enter the name for column 2: ','s');
                fprintf('Names and labels updated.');
                pause(2)
                
                
            case 5 %Plot Histogram
                plotHistogram()
                
                
            case 6 %Plot Histogram Fit
                plotHistFit()
                
                
            case 7 %Plot Probability Plot
                probabilityPlot()
                
                
            case 8 %Regression of Y on X
                if size(data) == 0 %if data hasn't been loaded yet
                    fprintf('\n\n\nError: No data available.  Please Load Data')
                    pause(2)
                else
                    regressionYonX()
                end
                
                
            case 9 %Find Probability Given X or Z
                if size(data) == 0 %if data hasn't been loaded yet
                    fprintf('\n\n\nError: No data available.  Please Load Data')
                    pause(2)
                else
                    probGivenXorZ()
                end
                
                
            case 10 %Find X and Z Given Probability
                if size(data) == 0 %if data hasn't been loaded yet
                    fprintf('\n\n\nError: No data available.  Please Load Data')
                    pause(2)
                else
                    xAndZGivenProb()
                end
                
                
            case 11 %Exit
                fprintf('\n\nThank you for using this program.\n')
                
                
            otherwise                
                fprintf('\n\n\nERROR: Invalid Selection')
                pause(2)
        end
    end
end