function a03f_show02AboutEXP(app)
%This function will go from 01Hi to 02AboutEXP window using instruction button 
%  app - is the parameter that contains the mother GUI interface

%Reading the image and displaying in the image display object
app.imageDisplay.ImageSource = [app.insDirectory '02AboutEXP.JPG'];

%Resetting instruction counter
app.instruction_counter = '02AboutEXP';


end

