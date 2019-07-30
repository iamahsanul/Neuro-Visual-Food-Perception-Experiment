function a03f_show04Instruction1(app)
%This function will go from a03f_show0302prepareInputFile to a03f_show04Instruction01 function using instruction button 
%  app - is the parameter that contains the mother GUI interface

%Clearing the app window and placing the next slide contents
app.titleLabel.Visible = 'off';
app.explanationLabel.Visible = 'off';

app.hungrySlider.Visible = 'off';
app.Nothungryatall0Veryhungry100Label.Visible = 'off';
app.hungryLabel.Visible = 'off';

app.thirstySlider.Visible = 'off';
app.Notthirstyatall0Verythirsty100Label.Visible = 'off';
app.thirstyLabel.Visible = 'off';

app.fullSlider.Visible = 'off';
app.Notfullatall0Veryfull100Label.Visible = 'off';
app.fullLabel.Visible = 'off';


%Reading the image and displaying in the image display object
app.imageDisplay.ImageSource = [app.insDirectory '04Instruction1.JPG'];
app.imageDisplay.Visible = 'on';


%Resetting instruction counter
app.instruction_counter = '04Instruction1';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

