%asks if the data is reasonable (the calculations will occur regardless)
fprintf('\n\n\n');
goodData = input('In your judgment, is the data in Column 1 normally distributed? ','s');

%takes a probability as input
try
    prob = input('\nEnter the probability: ');
catch
    prob = .5;
end
if isempty(prob)
    fprintf('\nInvalid Selection.  Using general data.\n')
    prob = .5;
end

if(prob < 0 || prob > 1) %must be a probability, NOT a percent
    fprintf('Error: probability must be between 0 and 1.')
    fprintf('(If you have a percentage, divide by 100)\n\n\n')
    pause(2)
else
    
    %prints the question and answer from before
    fprintf(fileID,strcat("\n\nIn your judgment, is the data normally distributed? ",goodData,'\n\n'));

    %calculates the x and z values for the given probability
    x = norminv(prob,mean(data(:,1)),std(data(:,1)));
    z = (x - mean(data(:,1)))/std(data(:,1));
    
    fprintf(fileID,'For Column 1:');
    fprintf("\n For Column 1:")

    %prints the z value and adds it to the output file
    fprintf(fileID,'\nZ value for given probability %.2f is %.4f\n',prob,z);
    fprintf('\nZ value for given probability %.2f is %.4f\n',prob,z);
    
    %prints the x value and adds it to the output file
    fprintf(fileID,'X value for given probability %.2f is %.4f',prob,x);
    fprintf('X value for given probability %.2f is %.4f\n',prob,x);
    
    pause(3)
end