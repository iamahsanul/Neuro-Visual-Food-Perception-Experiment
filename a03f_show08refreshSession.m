function a03f_show08refreshSession(app)
%This function will go from show07getStarted to a03f_show08refreshSession function using instruction button 
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
app.imageDisplay.Position = [30 100 app.computer_screen(3)-100 app.computer_screen(4)-200];
app.imageDisplay.ImageSource = [app.insDirectory '08refreshSession.JPG'];
app.imageDisplay.Visible = 'on';

app.instructionButton.Position = [450 50 150 35];
app.instructionButton.Visible = 'on';


%Resetting instruction counter
app.instruction_counter = '08refreshSession';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

