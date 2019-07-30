%In this file we are selecting the foods from the CROCUFID original database files to
%capture video expression and we select the foods/non-foods based on the
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
% At the end we have create an xls file by saving the properties of the
% selected data into the file: 'selected_food_data_mah'


%Reading metafile for calorie data entry to each food
[~,~,raw_for_calorie]=xlsread('C:\Users\moh\Desktop\SDC Postdoc\Research\Research papers\Food database\CROCUFID database\osfstorage-archive\data\foodpictures_ALL_US_UK_JP.XLSX');
raw_for_calorie = raw_for_calorie(1:565, :);

%Reading metafile to combine calorie data to other metadata in a cellarray
[num,txt,raw_data_info]=xlsread('C:\Users\moh\Desktop\SDC Postdoc\Research\Research papers\Food database\CROCUFID database\osfstorage-archive\data\All_Foodpictures_information.XLSX');
raw_data_info = raw_data_info(1:841, :);
all_data_info = cat(2, raw_data_info(1:565, :), raw_for_calorie);

%These non-foods we are not using
%finding only the non-food from the first 479 data
temp = ~cellfun(@(x)strcmp('Non-food',x),all_data_info(1:479,8));
non_food_data = all_data_info(1:479,:);
non_food_data = non_food_data(~temp,:);

%finding only the flowers non-food from the first 479 data
temp = ~cellfun(@(x)strcmp('Flowers',x),all_data_info(1:479,8));
flower_non_food_data = all_data_info(1:479,:);
flower_non_food_data = flower_non_food_data(~temp,:);

%finding only the food-related non-food from the first 479 data
temp = ~cellfun(@(x)strcmp('Food-related non-food',x),all_data_info(1:479,8));
food_related_non_food_data = all_data_info(1:479,:);
food_related_non_food_data = food_related_non_food_data(~temp,:);

%Putting all the non-food data into a single cell-arry
all_non_food = cat(1, flower_non_food_data, food_related_non_food_data);

%finding only the universal foods from all the data
temp = ~cellfun(@(x)strcmp('Universal',x),all_data_info(:,3));
universal_food_data = all_data_info(~temp,:);
%removing the universal food with missing calorie information
emptyIdx = cellfun(@isnumeric, universal_food_data(:,68));
universal_food_data = universal_food_data(emptyIdx,:);

%finding sweets and savory in universal foods
temp = cellfun(@(x)strcmp('Sweet',x),universal_food_data(:,6));
universal_sweet_food_data = universal_food_data(temp,:);
universal_savory_food_data = universal_food_data(~temp,:);

%finding hi and low calorie sweets in universal foods
temp = cellfun(@(x) x == 2,universal_sweet_food_data(:,68));
universal_hi_sweet_food_data = universal_sweet_food_data(temp,:);
universal_low_sweet_food_data = universal_sweet_food_data(~temp,:);

%finding hi and low calorie savory in universal foods
temp = cellfun(@(x) x == 2,universal_savory_food_data(:,68));
universal_hi_savory_food_data = universal_savory_food_data(temp,:);
universal_low_savory_food_data = universal_savory_food_data(~temp,:);

%Reading the image data from the list
location = 'C:\Users\moh\Desktop\SDC Postdoc\Research\Research papers\Food database\CROCUFID database\osfstorage-archive\images\items_only\*.png';       %  folder in which your images exists
ds = imageDatastore(location);         %  Creates a datastore for all images in your folder
for loopIdx = 1: size(universal_food_data, 1) 
%    imgIdx = cellfun(@(x)str2num(x), universal_food_data(loopIdx, 1));
    imgIdx = cell2mat(universal_food_data(loopIdx, 1))
    universal_food_data(loopIdx, 7)
    img = imread(cell2mat(ds.Files(imgIdx)));             % read image from datastore
    imshow(imresize(img, 0.25));    % creates a new window for each image
    pause(3);
end
%while hasdata(ds) 
%    img = read(ds) ;             % read image from datastore
%    figure, imshow(img);    % creates a new window for each image
%end




disp('good');