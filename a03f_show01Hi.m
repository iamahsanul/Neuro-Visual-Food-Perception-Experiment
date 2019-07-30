function a03f_show01Hi(app)
%This function will show the Hi screen to start the presentation
%  app - is the parameter that contains the mother GUI interface

%Reading the image and displaying in the image display object
%app.imageDisplay.Position = [30 100 1200 550];
app.imageDisplay.Position = [30 100 app.computer_screen(3)-100 app.computer_screen(4)-200];
app.imageDisplay.ImageSource = [app.insDirectory '01Hi.JPG'];

%Setting the next button in the appropriate place
app.instructionButton.Text = 'Next >>';
app.instructionButton.FontSize = 20;
app.instructionButton.Position = [450 50 150 35];
%app.Panel01HiButton.Position = [app.Panel01HiUIAxes.Position(3)/2 30 150 30];

%Resetting instruction counter
app.instruction_counter = '01Hi';



%% old JUNK codes
%This function will show the Hi screen in a panel to start the presentation
%  app - is the parameter that contains the mother GUI interface

% %%%%%Panel name: Panel01Hi
% %%%%%Setting up panel parameters
% app.Panel01Hi.BorderType = 'none'; %removing borders
% app.Panel01Hi.Title = []; %removing title
% 
% %Formatting image axes to display
% title(app.Panel01HiUIAxes, []);
% xlabel(app.Panel01HiUIAxes, []);
% ylabel(app.Panel01HiUIAxes, []);
% app.Panel01HiUIAxes.XAxis.TickLabels = {};
% app.Panel01HiUIAxes.YAxis.TickLabels = {};
% 
% %Putting the panel and image axes in the display area 
% app.Panel01Hi.Position = [0 0 app.expUIFigure.Position(3:4)-50];
% app.Panel01HiUIAxes.Position = [0 15 app.Panel01Hi.Position(3:4)-50];
% 
% %Reading the image and displaying in the image axes
% dir = '.\matlab_stimuli_procedure_images\';
% img = imread([dir '01Hi.JPG']);
% imshow(img, 'parent', app.Panel01HiUIAxes);
% 
% %Setting the next button in the appropriate place
% app.Panel01HiButton.Text = 'Next >>';
% app.Panel01HiButton.FontSize = 20;
% app.Panel01HiButton.Position = [350 30 150 35];
% %app.Panel01HiButton.Position = [app.Panel01HiUIAxes.Position(3)/2 30 150 30];
% 
% %making the panel visible with image
% app.Panel01Hi.Visible = 'on'; %Keeping visibility as first screen




end

