%prints out the menu options
fprintf('\n\n\n\n\n\n\n\n\n\n');

disp('(1) Set User Name')
disp('(2) Load Data File')
disp('(3) Clear Data from Memory')
disp('(4) Set Output Filename')
disp('(5) Plot Histogram')
disp('(6) Plot Histogram Fit')
disp('(7) Plot Probablility Plot')
disp('(8) Regression of Y on X')
disp('(9) Find Probability Given X or Z')
disp('(10) Find X and Z Given Probability')
disp('(11) Exit')

%allows the user to make a choice (choice determined in the main script)
try %avoids nonnumber answers.  This structure is used for all numeric inputs
    menuChoice = input('Please Select an Option: ');
catch
    menuChoice = 0;
end