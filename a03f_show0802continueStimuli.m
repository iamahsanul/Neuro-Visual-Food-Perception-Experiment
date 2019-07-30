function a03f_show0802continueStimuli(app)
%This function will go from a03f_show08expStimuli to a03f_show0801continueStimuli window using instruction button 
%  app - is the parameter that contains the mother GUI interface


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Resetting the visibility and existing values of all input handles
app.instructionButton.Visible = 'off'; %At the beginning visibility will be off and controlled by checkbox later 
app.consentCheckBox.Visible = 'off'; %Will be on after preparing the presentation screen

app.explanationLabel.Visible = 'off';
app.haveEatenRadio.Visible = 'off';

app.pleasantSlider.Visible = 'off';
app.Veryunpleasant0Verypleasant100Label.Visible = 'off';
app.pleasantLabel.Visible = 'off';

app.arousalSlider.Visible = 'off';
app.Notatall0Extremely100Label.Visible = 'off';
app.arousingLabel.Visible = 'off';

app.healthySlider.Visible = 'off';
app.Veryunhealthy0Veryhealthy100Label.Visible = 'off';
app.healthyLabel.Visible = 'off';

app.likingSlider.Visible = 'off';
app.Notatall0Extremely100Label_2.Visible = 'off';
app.likeLabel.Visible = 'off';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%First managing the visibilty of the labels and sliders to take input
app.titleLabel.Text = ['Session ' num2str(app.current_stimuli_session) '/5: Stimulus ' num2str(app.current_stimuli_id) '/76'];
app.titleLabel.Visible = 'on';

%Displaying the image by first showing the '+' sign for eye fixation and then the image
app.imageDisplay.ImageSource = [app.insDirectory 'plus_sign_eye_direction.png'];
app.imageDisplay.Visible = 'on';

app.timerLabel.BackgroundColor = [0.5 0.5 0.5]; %keeping track for camera synchronization
app.restTimeStart = datestr(now,'mmmm dd, yyyy HH:MM:SS.FFF'); %keeping the track of the time
pause(app.plus_sign_pause_time);
app.restTimeEnd = datestr(now,'mmmm dd, yyyy HH:MM:SS.FFF'); %keeping the track of the time
app.timerLabel.BackgroundColor = [1 1 1]; %keeping track for camera synchronization


app.imageDisplay.ImageSource = [app.stimuliDirectory num2str(cellfun(@str2num,string(app.trial_img_stimuli_list(app.current_stimuli_id, 1))),'%04.f') '.jpg'];
app.imageDisplay.Visible = 'on';

%Showing the name of the food image
app.explanationLabel.Text = char(app.trial_img_stimuli_list(app.current_stimuli_id, 2));
app.explanationLabel.Visible = 'on';

app.stimulusTimeStart = datestr(now,'mmmm dd, yyyy HH:MM:SS.FFF'); %keeping the track of the time
app.timerLabel.BackgroundColor = [0 0 0]; %keeping track for camera synchronization
pause(app.stimulus_pause_time); %pausing any operation to have subject expression uninterrupted in the vidoe
app.timerLabel.BackgroundColor = [1 1 1]; %keeping track for camera synchronization
app.stimulusTimeEnd = datestr(now,'mmmm dd, yyyy HH:MM:SS.FFF'); %keeping the track of the time



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Asking the 'have eaten' question using radio button
%app.haveEatenRadio.reset;
app.YesRadio.Value = 1;
app.haveEatenRadio.Visible = 'on';
%buttonnumber = ismember(app.haveEatenRadio.Buttons,app.haveEatenRadio.SelectedObject);

app.pleasantSlider.Value = 0;
app.pleasantSlider.Visible = 'on';
app.Veryunpleasant0Verypleasant100Label.Visible = 'on';
app.pleasantLabel.Visible = 'on';


app.arousalSlider.Value = 0;
app.arousalSlider.Visible = 'on';
app.Notatall0Extremely100Label.Visible = 'on';
app.arousingLabel.Visible = 'on';


app.healthySlider.Value = 0;
app.healthySlider.Visible = 'on';
app.Veryunhealthy0Veryhealthy100Label.Visible = 'on';
app.healthyLabel.Visible = 'on';


app.likingSlider.Value = 0;
app.likingSlider.Visible = 'on';
app.Notatall0Extremely100Label_2.Visible = 'on';
app.likeLabel.Visible = 'on';



%Setting the consent checkbox in the appropriate place
app.consentCheckBox.Value = 0;
app.consentCheckBox.Visible = 'on';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Getting data
if app.current_stimuli_id==76
    app.instruction_counter = '09Seriousness'; %Resetting the instruction counter to refresh session 
elseif (rem(app.current_stimuli_id, 15) == 0) && (app.current_stimuli_id~=75)
    app.current_stimuli_session = app.current_stimuli_session + 1;
    app.instruction_counter = '07getStarted'; %Resetting the instruction counter to refresh session 
else
    app.instruction_counter = '0802continueStimuli'; %Resetting the instruction counter
end


%Resetting different counters
app.current_stimuli_id = app.current_stimuli_id + 1;

app.responseTimeStart = datestr(now,'mmmm dd, yyyy HH:MM:SS.FFF'); %calculating response time
app.timerLabel.BackgroundColor = [0 0 1]; %keeping track for camera synchronization



end

