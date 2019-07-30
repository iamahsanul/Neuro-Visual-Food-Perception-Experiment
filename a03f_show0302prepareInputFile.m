function a03f_show0302prepareInputFile(app)
%This function will go from 0301aboutYou to a03f_show0302prepareInputFile function using instruction button 
%  app - is the parameter that contains the mother GUI interface


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Open file for writing data collect from the subject
[SubID, Gender, Age, Length, Weight, Nationality, Allergy, Diet] = deal(app.subData{:}); % all input variables are strings
outputname = [app.outDirectory 'Sub' SubID Gender Age Nationality '.mat']; %Saving data into a mat file 
%outputname = ['Sub' SubID Gender Age Nationality '.xls'];

%myb = cat(1, app.subDataHeader, app.subData);
if exist(outputname)==2 % check to avoid overiding an existing file
    fileproblem = cell2mat(inputdlg('That file already exists! Append a ''.mat'' (1) or overwrite (2/default)?', 'What to do', [1 100], {'2'}));
    if str2num(fileproblem)==1
        outputname = [outputname '.mat'];
    end
end
app.dataOutFile = outputname; % open a file for writing data out

%%%%%%%Reading and concatenating the slider data to the sub data file
app.subDataHeader = [app.subDataHeader 'Hungry', 'Thirsty', 'FeelingFull'];
app.subData = [app.subData num2str(app.hungrySlider.Value), num2str(app.thirstySlider.Value), num2str(app.fullSlider.Value)];

dataOutFile = app.dataOutFile;
subDataHeader = app.subDataHeader;
subData = app.subData;

save(app.dataOutFile, 'dataOutFile', 'subDataHeader', 'subData'); %Saving data into the mat file for final use 

%Resetting instruction counter for button control
app.instruction_counter = '0302prepareInputFile';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

