function a03f_show05Instruction2(app)
%This function will go from a03f_show04Instruction01 to a03f_show05Instruction02 function using instruction button 
%  app - is the parameter that contains the mother GUI interface


%Reading the image and displaying in the image display object
app.imageDisplay.ImageSource = [app.insDirectory '05Instruction2.JPG'];
app.imageDisplay.Visible = 'on';


%Resetting instruction counter
app.instruction_counter = '05Instruction2';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

