function a03f_show03Consent(app)
%This function will go from 02AboutEXP to 03Consent window using instruction button 
%  app - is the parameter that contains the mother GUI interface

%Reading the image and displaying in the image display object
app.imageDisplay.ImageSource = [app.insDirectory '03Consent.JPG'];


%Resetting instruction counter for button control
app.instruction_counter = '03Consent';

%Setting the consent checkbox in the appropriate place
app.consentCheckBox.Position = [250 50 150 35];
app.consentCheckBox.Visible = 'on';

%Turning off instruction button to comply with the consent checkbox
app.instructionButton.Visible = 'off';



end

