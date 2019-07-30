function a03f_show06Practice(app)
%This function will go from a03f_show05Instruction02 to a03f_show06Practice function using instruction button 
%  app - is the parameter that contains the mother GUI interface

%Reading the image and displaying in the image display object
app.imageDisplay.ImageSource = [app.insDirectory '06Practice.JPG'];
app.imageDisplay.Visible = 'on';


%Resetting instruction counter
app.instruction_counter = '06Practice';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

