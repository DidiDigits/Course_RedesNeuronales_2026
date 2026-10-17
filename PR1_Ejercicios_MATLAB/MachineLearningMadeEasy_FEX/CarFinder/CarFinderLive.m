function CarFinderLive(trainedModel,bag)
% CarFinderLive classifies a selected vehicle image
% using a trained Classification Learner model
% and a Bag of Features model.
%
% Modified to work without a webcam.

% Get class names from the SVM
classNames = trainedModel.ClassificationSVM.ClassNames;

% Create figure
[fig,ax1,ax2] = figureSetup(trainedModel,classNames);

% Select image
[file,path] = uigetfile( ...
    {'*.jpg;*.jpeg;*.png;*.bmp', ...
    'Image files (*.jpg, *.jpeg, *.png, *.bmp)'}, ...
    'Select an image');

if isequal(file,0)
    close(fig);
    return;
end

% Load image
img = imread(fullfile(path,file));

% Convert image to grayscale
if size(img,3) == 3
    grayimg = rgb2gray(img);
else
    grayimg = img;
end

% Extract Bag of Features
imagefeatures = double(encode(bag,grayimg));

% Predict vehicle class using the SVM
[imagepred,scores] = predict( ...
    trainedModel.ClassificationSVM,imagefeatures);

% Display image
imshow(img,'Parent',ax1);

title(ax1,['Predicted: ' upper(char(imagepred))]);

% Display classification scores
ax2.Children.YData = scores;

drawnow;


function [fig,ax1,ax2] = figureSetup(trainedModel,classNames)

warning('off','images:imshow:magnificationMustBeFitForDockedFigure')

set(0,'defaultfigurewindowstyle','docked')

fig = figure('Name','Car Finder','NumberTitle','off');

ax1 = subplot(2,1,1);
ax2 = subplot(2,1,2);

% Classification score bar chart
bar(ax2,zeros(1,numel(classNames)),...
    'FaceColor',[0.2 0.6 0.8])

set(ax2,'XTick',1:numel(classNames));
set(ax2,'XTickLabel',cellstr(classNames));

title(ax2,'Classification Scores')
ylabel(ax2,'Score')

set(0,'defaultfigurewindowstyle','normal')