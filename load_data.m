function [ arr ] = load_data( filename )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%% Initialize variables.
%filename = 'D:\_Workspace\Clustering_Matlab\USDJPYM15.csv';
delimiter = ',';

%% Format string for each line of text:
%   column1: text (%s)
%	column2: date strings (%s)
%   column3: double (%f)
%	column4: double (%f)
%   column5: double (%f)
%	column6: double (%f)
%   column7: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%s%s%f%f%f%f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to format string.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
date = dataArray{:, 1};
time = dataArray{:, 2};
open_price = dataArray{:, 3};
high_price = dataArray{:, 4};
low_price = dataArray{:, 5};
close_price = dataArray{:, 6};
volume = dataArray{:, 7};

%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;
[n, m] = size(volume);
arr = [];
%for i = 1:n
%    arr = [arr; open_price(i) close_price(i) high_price(i) low_price(i)];
%end
arr = cat(2, open_price, close_price, high_price, low_price);
clearvars date time open_price close_price high_price low_price n m;
end

