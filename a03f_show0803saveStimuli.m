function a03f_show0803saveStimuli(app)
%This function will go from a03f_show0802continueStimuli to a03f_show0803saveStimuli function using instruction button 
%  app - is the parameter that contains the mother GUI interface

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Open file for writing data collect from the subject

%Fixing the radiobutton values from chinese to english about 'haveEverEaten question'
if (app.YesRadio.Value == 1)
    haveEverEaten = 'Yes';
elseif (app.NotSeenRadio.Value == 1)
    haveEverEaten = 'No, I haven''t seen it before';
else
    haveEverEaten = 'No, but I have seen it before';
end        

%%%%%%%Reading and concatenating the slider data to the sub data file
if(app.current_stimuli_id == 2)
app.subDataHeader = [app.subDataHeader, 'ImgStimulusNumber', 'ImgStimulusName', 'HaveEverEaten', 'Pleasantness', ...
    'Arousalness', 'Healthyness', 'Likingness', 'RestTimeStart', 'RestTimeEnd', ...
    'StimulusTimeStart', 'StimulusTimeEnd', 'ResponseTimeStart', 'ResponseTimeEnd'];
newSubData = [app.subData, char(string(app.trial_img_stimuli_list(app.current_stimuli_id-1, 1))), ...
    char(app.trial_img_stimuli_list(app.current_stimuli_id-1, 2)), haveEverEaten, num2str(app.pleasantSlider.Value), ...
    num2str(app.arousalSlider.Value), num2str(app.healthySlider.Value), num2str(app.likingSlider.Value), ...
    app.restTimeStart, app.restTimeEnd, app.stimulusTimeStart, app.stimulusTimeEnd, ...
    app.responseTimeStart, app.responseTimeEnd];

dataOutFile = app.dataOutFile;
subDataHeader = app.subDataHeader;
subData = newSubData;
trial_img_stimuli_list = app.trial_img_stimuli_list;

else
    load(app.dataOutFile);
newSubData = [app.subData, char(string(app.trial_img_stimuli_list(app.current_stimuli_id-1, 1))), ...
    char(app.trial_img_stimuli_list(app.current_stimuli_id-1, 2)), haveEverEaten, num2str(app.pleasantSlider.Value), ...
    num2str(app.arousalSlider.Value), num2str(app.healthySlider.Value), num2str(app.likingSlider.Value), ...
    app.restTimeStart, app.restTimeEnd, app.stimulusTimeStart, app.stimulusTimeEnd, ...
    app.responseTimeStart, app.responseTimeEnd];
subData = cat(1, subData, newSubData);
end

save(app.dataOutFile, 'dataOutFile', 'subDataHeader', 'subData', 'trial_img_stimuli_list'); %Saving data into the mat file for final use 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

