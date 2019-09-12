%creates the file and gives a pathway for future editing
fileID = fopen(strcat(fileOutputName,'.txt'),'wt');

%prints a nice heading for the output file, using the entered username
fprintf(fileID,strcat("Created by ", userName," on ", date, '\n'));

%provides data for each column (1 or 2 columns)
%prints said data to the output file
for x = 1: size(data,2)
    fprintf(fileID,'\n\nFor Column %.0f:\n',x); 
    fprintf('\n\nFor Column %.0f:\n',x);
    
    fprintf(fileID,"Mean    = %10.2f\n",mean(data(:,x))); %mean
    fprintf("Mean    = %10.2f\n",mean(data(:,x)));
    
    fprintf(fileID,"Median  = %10.2f\n",median(data(:,x))); %median
    fprintf("Median  = %10.2f\n",median(data(:,x)));
    
    fprintf(fileID,"Mode    = %10.2f\n",mode(data(:,x))); %mode
    fprintf("Mode    = %10.2f\n",mode(data(:,x)));
    
    fprintf(fileID,"Var     = %10.2f\n",var(data(:,x))); %variance
    fprintf("Var     = %10.2f\n",var(data(:,x))); 
    
    %standard deviation
    if size(data,1) > 30 %population SD
        fprintf(fileID,"Stdev   = %10.2f (Using Population Standard Deviation)\n",std(data(:,x),1));
        fprintf("Stdev   = %10.2f (Using Population Standard Deviation)\n",std(data(:,x),1));
    else %sample SD
        fprintf(fileID,"Stdev   = %10.2f (Using Sample Standard Deviation)\n",std(data(:,x)));
        fprintf("Stdev   = %10.2f (Using Sample Standard Deviation)\n",std(data(:,x)));
    end
    
    fprintf(fileID,"Min     = %10.2f\n",min(data(:,x))); %minimum value
    fprintf("Min     = %10.2f\n",min(data(:,x)));
    
    fprintf(fileID,"Max     = %10.2f\n",max(data(:,x))); %maximum value
    fprintf("Max     = %10.2f\n",max(data(:,x)));
    
    fprintf(fileID,"Count   = %10.0f",size(data,1)); %number of values
    fprintf("Count   = %10.0f",size(data,1));
    
    pause(3)
end
