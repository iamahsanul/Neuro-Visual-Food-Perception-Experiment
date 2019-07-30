function a03f_show0801expStimuli(app)
%This function will go from a03f_show07getStarted to a03f_show08expStimuli window using instruction button 
%  app - is the parameter that contains the mother GUI interface

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Prepare Stimuli data 
load([app.stimuliDirectory 'trial_img_stimuli_list.mat']);
app.trial_img_stimuli_list = squeeze(trial_img_stimuli_list(:, :, str2num(char(app.subData(1)))));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Preparing the presentation window
%Remving the visibility of image display object and consent button, as the work for those finished now
app.instructionButton.Visible = 'off'; %At the beginning visibility will be off and controlled by checkbox later 
app.consentCheckBox.Visible = 'off'; %Will be on after preparing the presentation screen

%First managing the visibilty of the labels and sliders to present and take input
app.titleLabel.Text = ['Session ' app.current_stimuli_session '/5: Stimulus 0/76'];
app.titleLabel.Visible = 'on';

%Displaying the image by first showing the '+' sign for eye fixation and then the image
app.imageDisplay.Position = [10 60 app.computer_screen(3)-430 app.computer_screen(4)-190];
app.imageDisplay.ImageSource = [app.insDirectory 'plus_sign_eye_direction.png'];
app.imageDisplay.Visible = 'on';

%Showing the name of the food image
app.explanationLabel.Position = [350 app.imageDisplay.Position(2)+app.imageDisplay.Position(4)+1 250 30];
app.explanationLabel.Text = 'Preparing';
app.explanationLabel.FontWeight = 'bold';
app.explanationLabel.FontSize = 20;
app.explanationLabel.Visible = 'on';

%Asking the 'have eaten' question using radio button
app.YesRadio.Value = 1;
app.haveEatenRadio.Position = [app.computer_screen(3)-420 app.computer_screen(4)-210 400 100];

slider_group_pos = [app.computer_screen(3)-420 app.haveEatenRadio.Position(2)-60 400 30];
app.pleasantLabel.Position = slider_group_pos;
app.Veryunpleasant0Verypleasant100Label.Position = [slider_group_pos(1) slider_group_pos(2)-50 110 40];
app.pleasantSlider.Position = [slider_group_pos(1)+130 slider_group_pos(2)-20 250 3]; 
app.pleasantSlider.Value = 0;

slider_group_pos = [slider_group_pos(1) slider_group_pos(2)-125 slider_group_pos(3:4)];
app.arousingLabel.Position = slider_group_pos;
app.Notatall0Extremely100Label.Position = [slider_group_pos(1) slider_group_pos(2)-50 110 40];
app.arousalSlider.Position = [slider_group_pos(1)+130 slider_group_pos(2)-20 250 3]; 
app.arousalSlider.Value = 0;

slider_group_pos = [slider_group_pos(1) slider_group_pos(2)-125 slider_group_pos(3:4)];
app.healthyLabel.Position = slider_group_pos;
app.Veryunhealthy0Veryhealthy100Label.Position = [slider_group_pos(1) slider_group_pos(2)-50 110 40];
app.healthySlider.Position = [slider_group_pos(1)+130 slider_group_pos(2)-20 250 3]; 
app.healthySlider.Value = 0;

slider_group_pos = [slider_group_pos(1) slider_group_pos(2)-125 slider_group_pos(3:4)];
app.likeLabel.Position = [slider_group_pos(1:3) 40];
app.Notatall0Extremely100Label_2.Position = [slider_group_pos(1) slider_group_pos(2)-50 110 40];
app.likingSlider.Position = [slider_group_pos(1)+130 slider_group_pos(2)-20 250 3]; 
app.likingSlider.Value = 0;

%Setting the consent checkbox in the appropriate place
app.consentCheckBox.Position = [200 20 350 35];
app.instructionButton.Position = [app.consentCheckBox.Position(1)+400 20 app.instructionButton.Position(3:4)];
app.consentCheckBox.Value = 0;
app.consentCheckBox.Text = 'I have answered all 5 questions.';


end

