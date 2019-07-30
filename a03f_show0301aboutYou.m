function a03f_show0301aboutYou(app)
%This function will go from 03Consent to 0301aboutYou window using instruction button 
%  app - is the parameter that contains the mother GUI interface


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Remving the visibility of image display object and consent button, as the work for those finished now
app.consentCheckBox.Visible = 'off';
app.imageDisplay.Visible = 'off';
app.instructionButton.Visible = 'off';


% Taking subject information using a prompt
prompt_to_input = {'Subject''s ID:', ...
    'What is your gender: (M/F)', 'What is your age: (year)', 'What is your length: (cm)', ...
    'What is your weight: (kg)', 'What is your nationality: ', ...
    'Do you have any food allergies? If yes, what kind of allergies?', ...
    'Are you currently on a diet? if yes, what kind of diet?'};
default_inputs = {'01', 'F', '22', '165', '70' , 'Chinese', 'None', 'None'};
answer_from_prompt = inputdlg(prompt_to_input, 'Please tell us about you!', ...
    [1 30; 1 30; 1 30; 1 30; 1 30; 1 30; 1 90; 1 90], default_inputs);

app.subData = answer_from_prompt'; %keeping the answers to use in different function
app.subDataHeader = {'SubID', 'Gender', 'Age', 'Length', 'Weight', 'Nationality', 'Allergy', 'Diet'};

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Reading subject status from the sliders

%First managing the visibilty of the labels and sliders to take input
app.titleLabel.Text = 'Your current state';
app.titleLabel.Visible = 'on';

app.explanationLabel.Position = [50 app.titleLabel.Position(2)-100 app.titleLabel.Position(3) 30];
app.explanationLabel.Text = 'Please rate your state by moving slider in the scale and then press the ''Next'' button below.';
app.explanationLabel.FontSize = 24;
app.explanationLabel.Visible = 'on';


%slider_group_pos = [200 450 350 25];
slider_group_pos = [200 app.computer_screen(4)-300 app.computer_screen(3) 30];
app.hungryLabel.Position = slider_group_pos;
app.Nothungryatall0Veryhungry100Label.Position = [slider_group_pos(1) slider_group_pos(2)-50 110 40];
app.hungrySlider.Position = [slider_group_pos(1)+130 slider_group_pos(2)-20 400 3]; 
app.hungrySlider.Visible = 'on';
app.Nothungryatall0Veryhungry100Label.Visible = 'on';
app.hungrySlider.Value = 0;
app.hungryLabel.Visible = 'on';

%slider_group_pos = [200 325 350 25];
slider_group_pos = [200 app.computer_screen(4)-425 app.computer_screen(3) 30];
app.thirstyLabel.Position = slider_group_pos;
app.Notthirstyatall0Verythirsty100Label.Position = [slider_group_pos(1) slider_group_pos(2)-50 110 40];
app.thirstySlider.Position = [slider_group_pos(1)+130 slider_group_pos(2)-20 400 3]; 
app.thirstySlider.Visible = 'on';
app.Notthirstyatall0Verythirsty100Label.Visible = 'on';
app.thirstySlider.Value = 0;
app.thirstyLabel.Visible = 'on';

%slider_group_pos = [200 200 350 25];
slider_group_pos = [200 app.computer_screen(4)-550 app.computer_screen(3) 30];
app.fullLabel.Position = slider_group_pos;
app.Notfullatall0Veryfull100Label.Position = [slider_group_pos(1) slider_group_pos(2)-50 110 40];
app.fullSlider.Position = [slider_group_pos(1)+130 slider_group_pos(2)-20 400 3]; 
app.fullSlider.Visible = 'on';
app.Notfullatall0Veryfull100Label.Visible = 'on';
app.fullSlider.Value = 0;
app.fullLabel.Visible = 'on';

app.instruction_counter = '0301aboutYou'; %Resetting the instruction counter
app.instructionButton.Visible = 'on'; %Enabling the button to move to the next window


end

