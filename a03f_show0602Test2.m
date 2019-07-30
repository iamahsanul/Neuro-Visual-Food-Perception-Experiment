function a03f_show0602Test2(app)
%This function will go from a03f_show0601Test1 to a03f_show0601Test2 window using instruction button 
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
app.titleLabel.Text = 'Test2';
app.titleLabel.Visible = 'on';

%Displaying the image by first showing the '+' sign for eye fixation and then the image
app.imageDisplay.ImageSource = [app.insDirectory 'plus_sign_eye_direction.png'];
app.imageDisplay.Visible = 'on';
pause(app.plus_sign_pause_time);

app.imageDisplay.ImageSource = [app.insDirectory 'test2_0663.jpg'];
app.imageDisplay.Visible = 'on';

%Showing the name of the food image
app.explanationLabel.Text = 'Chocolate';
app.explanationLabel.Visible = 'on';

pause(app.stimulus_pause_time); %pausing any operation to have subject expression uninterrupted in the vidoe

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
app.instruction_counter = '0602Test2'; %Resetting the instruction counter


end

