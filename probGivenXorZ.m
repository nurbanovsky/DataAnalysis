%asks if the data is reasonable, and prints that answer on the output file
%the calculations will still occur regardless
fprintf('\n\n\n');
goodData = input('In your judgment, is the data in Column 1 normally distributed? ','s');
fprintf(fileID,strcat("\n\nIn your judgment, is the data in Column 1 normally distributed? ",goodData,'\n\n'));

%determines if the calculations will be based on x or z
try
    xorz = input('\nGiving an x or z value?  Type 1 for x, any other number for z: ');
catch
    xorz = 1;
end
if isempty(xorz)
    fprintf('\nInvalid Selection.  Assuming x.\n')
    xorz = 1;
end

%calculates the probability and percent through value input
switch xorz
    case 1 %based on x
        
        try
            x = input('Enter a value of x: ');
        catch
            x = 1;
        end
        if isempty(x)
            fprintf('\nInvalid Selection.  Using general values.\n')
            x = 1;
        end

        prob = normcdf(x,mean(data(:,1)),std(data(:,1)));
        perc = 100*prob;
        
        %prints to the output file and the command window
        fprintf(fileID,'For Column 1:');
        fprintf('\nFor Column 1:');
        
        fprintf(fileID,'\nProbability for given x value %.2f is %.6f\n',x,prob);
        fprintf('\nProbability for given x value %.2f is %.6f\n',x,prob);
        fprintf(fileID,'Percentage is %.4f',perc);
        fprintf('Percentage is %.4f',perc);
        
    otherwise %based on z
        
        try
            z = input('Enter a value of z: ');
        catch
            z = .1;
        end
        if isempty(z)
            fprintf('\nInvalid Selection.  Using general values.\n')
            z = .1;
        end
        
        prob = normcdf(z);
        perc = 100*prob;
        
        %prints to the output file and the command window
        fprintf(fileID,'For Column 1:');
        fprintf('\nFor Column 1:');
        
        fprintf(fileID,'\nProbability for given z value %.2f is %.6f\n',z,prob);
        fprintf('\nProbability for given z value %.2f is %.6f\n',z,prob);
        fprintf(fileID,'Percentage is %.4f\n',perc);
        fprintf('Percentage is %.4f\n',perc);
end

pause(3)
        