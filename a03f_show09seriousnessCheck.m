function a03f_show09seriousnessCheck(app)
%This function will go from 0802continueStimuli to a03f_show09seriousnessCheck function using instruction button 
%  app - is the parameter that contains the mother GUI interface

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Resetting the visibility and existing values of all input handlesapp.consentCheckBox.Visible = 'off'; %Will be on after preparing the presentation screen
app.consentCheckBox.Visible = 'off'; 
app.titleLabel.Visible = 'off';
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



%Reading the image and displaying in the image display object
app.imageDisplay.Position = [30 250 app.computer_screen(3)-100 app.computer_screen(4)-250];
app.imageDisplay.ImageSource = [app.insDirectory '09Seriousness.JPG'];
app.imageDisplay.Visible = 'on';

app.instructionButton.Position = [450 50 150 35];
app.instructionButton.Visible = 'on';

slider_group_pos = [250 200 600 30];
app.seriousnessLabel.Position = slider_group_pos;
app.Notatall0Veryserious100Label.Position = [slider_group_pos(1) slider_group_pos(2)-50 110 40];
app.seriousnessSlider.Position = [slider_group_pos(1)+130 slider_group_pos(2)-20 350 3]; 
app.seriousnessSlider.Value = 0;
app.seriousnessLabel.Visible = 'on';
app.Notatall0Veryserious100Label.Visible = 'on';
app.seriousnessSlider.Visible = 'on';


%Resetting instruction counter
app.instruction_counter = '10finalThanks';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

