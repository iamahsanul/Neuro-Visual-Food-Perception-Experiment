%In this file will read data from the file: 'selected_food_data_mah', where 
% the selected data for this experiment resides. We select the foods/non-foods based on the
%following categories
%   - Flower non-foods
%   - Food-related non-foods
%   - Universal foods with calorie information written
%   - Some foods have similar pictures but different angle or arrangement
%   in the plates
%   - Universal foods has sweet and savory, which are again having hi and low calorie
%   - Within universal foods, there are some foods which are in 'bitten'
%   food state, unlike to raw, processed or molded state. So, we discared
%   those.
%   - Some of the images were duplicated or didn't have any significant
%   change, therefore we removed those (8 images)
%   - 
% Here, we divide data into different groups and then prepare those to feed
% into the matlab handle to initiate the presentation for the experiment.
% The data is divided in a way that it handles the issue of randomizing. 

%%%%%%Defining our data categories
% unifood_raw_sweet_hical;
% unifood_raw_sweet_lowcal;
% unifood_raw_savory_hical;
% unifood_raw_savory_lowcal;
% 
% unifood_processed_sweet_hical;
% unifood_processed_sweet_lowcal;
% unifood_processed_savory_hical;
% unifood_processed_savory_lowcal;
% 
% disgustFood_molded;
% disgustFood_very_molded;
% 
% nonFood_flower;
% nonFood_butRelated;



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%Reading and creating data variable

%Reading metafile for the selected data
[~,~,selected_data]=xlsread('selected_food_data_mah.XLSX');
%selected_data = selected_data(2:end, :);


%finding only the non-food flower data from the selected data
temp = ~cellfun(@(x)strcmp('Flowers',x),selected_data(:,7));
nonFood_flower = selected_data(~temp,:); %interested variable

%finding only the non-food but food related data from the selected data
temp = ~cellfun(@(x)strcmp('Food-related non-food',x),selected_data(:,7));
nonFood_butRelated = selected_data(~temp,:); %interested variable

%finding only the molded disgusting food related data from the selected data
temp = ~cellfun(@(x)strcmp('Molded',x),selected_data(:,7));
disgustFood_molded = selected_data(~temp,:); %interested variable

%finding only the very molded disgusting food related data from the selected data
temp = ~cellfun(@(x)strcmp('Very Molded',x),selected_data(:,7));
disgustFood_very_molded = selected_data(~temp,:); %interested variable

%%%%%%%%%%%%%%%%%%%%%%
%finding all the raw foods in the selected data
temp = cellfun(@(x)strcmp('Raw',x),selected_data(:,7));
unifood_raw = selected_data(temp,:);

temp = cellfun(@(x)strcmp('Sweet',x),unifood_raw(:,6));
unifood_raw_sweet = unifood_raw(temp,:);
unifood_raw_savory = unifood_raw(~temp,:);

temp = cellfun(@(x) x == 2,unifood_raw_sweet(:,68));
unifood_raw_sweet_hical = unifood_raw_sweet(temp,:); %interested variable
unifood_raw_sweet_lowcal = unifood_raw_sweet(~temp,:); %interested variable

temp = cellfun(@(x) x == 2,unifood_raw_savory(:,68));
unifood_raw_savory_hical = unifood_raw_savory(temp,:); %interested variable
unifood_raw_savory_lowcal = unifood_raw_savory(~temp,:); %interested variable

%%%%%%%%%%%%%%%%%%%%%%
%finding all the processed foods in the selected data
temp = cellfun(@(x)strcmp('Processed',x),selected_data(:,7));
unifood_processed = selected_data(temp,:);

temp = cellfun(@(x)strcmp('Sweet',x),unifood_processed(:,6));
unifood_processed_sweet = unifood_processed(temp,:);
unifood_processed_savory = unifood_processed(~temp,:);

temp = cellfun(@(x) x == 2,unifood_processed_sweet(:,68));
unifood_processed_sweet_hical = unifood_processed_sweet(temp,:); %interested variable
unifood_processed_sweet_lowcal = unifood_processed_sweet(~temp,:); %interested variable

temp = cellfun(@(x) x == 2,unifood_processed_savory(:,68));
unifood_processed_savory_hical = unifood_processed_savory(temp,:); %interested variable
unifood_processed_savory_lowcal = unifood_processed_savory(~temp,:); %interested variable

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%Randomizing data variable and dividing
%%%%%%%%%%%%%%data into two subjects trials, 25 times where each subject will 
%%%%%%%%%%%%%%get 76 image stumuli and total of 152 images.

trial_img_stimuli_list = {}; %final master stimuli list variable

for loopIdx = 1:25 
    %after the end of this loop the variable trial_img_stimuli_list will
    %keep the list of all the stimuli for 50 trails (2 trails in each iteration)
    random_unifood_raw_sweet_hical = unifood_raw_sweet_hical(randperm(size(unifood_raw_sweet_hical, 1)), :); 
    random_unifood_raw_sweet_lowcal = unifood_raw_sweet_lowcal(randperm(size(unifood_raw_sweet_lowcal, 1)), :); 
    random_unifood_raw_savory_hical = unifood_raw_savory_hical(randperm(size(unifood_raw_savory_hical, 1)), :); 
    random_unifood_raw_savory_lowcal = unifood_raw_savory_lowcal(randperm(size(unifood_raw_savory_lowcal, 1)), :); 
    random_unifood_processed_sweet_hical = unifood_processed_sweet_hical(randperm(size(unifood_processed_sweet_hical, 1)), :); 
    random_unifood_processed_sweet_lowcal = unifood_processed_sweet_lowcal(randperm(size(unifood_processed_sweet_lowcal, 1)), :); 
    random_unifood_processed_savory_hical = unifood_processed_savory_hical(randperm(size(unifood_processed_savory_hical, 1)), :); 
    random_unifood_processed_savory_lowcal = unifood_processed_savory_lowcal(randperm(size(unifood_processed_savory_lowcal, 1)), :); 
    random_disgustFood_molded = disgustFood_molded(randperm(size(disgustFood_molded, 1)), :); 
    random_disgustFood_very_molded = disgustFood_very_molded(randperm(size(disgustFood_very_molded, 1)), :); 
    random_nonFood_flower = nonFood_flower(randperm(size(nonFood_flower, 1)), :); 
    random_nonFood_butRelated = nonFood_butRelated(randperm(size(nonFood_butRelated, 1)), :); 
    

    trial1 = {};    
    trial2 = {};    
    trial1 = cat(1, trial1, random_unifood_raw_sweet_lowcal(1:14, :));
    trial2 = cat(1, trial2, random_unifood_raw_sweet_lowcal(15:end, :));
    
    trial1 = cat(1, trial1, random_unifood_raw_savory_hical(1:1, :));

    trial1 = cat(1, trial1, random_unifood_raw_savory_lowcal(1:16, :));
    trial2 = cat(1, trial2, random_unifood_raw_savory_lowcal(17:end, :));
    
    trial1 = cat(1, trial1, random_unifood_processed_sweet_hical(1:6, :));
    trial2 = cat(1, trial2, random_unifood_processed_sweet_hical(7:end, :));
    
    trial1 = cat(1, trial1, random_unifood_processed_savory_hical(1:9, :));
    trial2 = cat(1, trial2, random_unifood_processed_savory_hical(10:end, :));
    
    trial1 = cat(1, trial1, random_unifood_processed_savory_lowcal(1:6, :));
    trial2 = cat(1, trial2, random_unifood_processed_savory_lowcal(7:end, :));
    
    trial1 = cat(1, trial1, random_disgustFood_molded(1:7, :));
    trial2 = cat(1, trial2, random_disgustFood_molded(8:end, :));
    
    trial1 = cat(1, trial1, random_disgustFood_very_molded(1:3, :));
    trial2 = cat(1, trial2, random_disgustFood_very_molded(4:end, :));
    
    trial1 = cat(1, trial1, random_nonFood_flower(1:7, :));
    trial2 = cat(1, trial2, random_nonFood_flower(8:end, :));
    
    trial1 = cat(1, trial1, random_nonFood_butRelated(1:7, :));
    trial2 = cat(1, trial2, random_nonFood_butRelated(8:end, :));
    
    random_trial1 = trial1(randperm(size(trial1, 1)), :); 
    random_trial2 = trial2(randperm(size(trial2, 1)), :); 

    trial_img_stimuli_list = cat(3, trial_img_stimuli_list, random_trial1);
    trial_img_stimuli_list = cat(3, trial_img_stimuli_list, random_trial2);
    
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%saving the stimuli list for all the trials in a mat file for further issue
save('trial_img_stimuli_list.mat','trial_img_stimuli_list')


disp('good');