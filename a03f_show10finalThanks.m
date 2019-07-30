function a03f_show10finalThanks(app)
%This function will go from a03f_show09seriousnessCheck to a03f_show10finalThanks function using instruction button 
%  app - is the parameter that contains the mother GUI interface

app.instructionButton.Visible = 'off'; %No need to show this anymore
app.seriousnessLabel.Visible = 'off';
app.Notatall0Veryserious100Label.Visible = 'off';
app.seriousnessSlider.Visible = 'off';


%Saving the data from seriousness slider
load(app.dataOutFile);
subjectSeriousnessHeader = {'SubjectSeriousness'};
subjectSeriousnessData(1:size(subData, 1), 1) = {num2str(app.seriousnessSlider.Value)}; %saving the seriousness value from the slider
subDataHeader = cat(2, subDataHeader, subjectSeriousnessHeader);
subData = cat(2, subData, subjectSeriousnessData);
save(app.dataOutFile, 'dataOutFile', 'subDataHeader', 'subData', 'trial_img_stimuli_list'); %Saving data into the mat file for final use 

%Reading the image and displaying in the image display object
app.imageDisplay.Position = [30 100 app.computer_screen(3)-100 app.computer_screen(4)-200];
app.imageDisplay.ImageSource = [app.insDirectory '10Thanks.JPG'];
app.imageDisplay.Visible = 'on';


%Resetting instruction counter
app.instruction_counter = 'Goodbye';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

