
% Exploratory Data Analysis (EDA) in MATLAB
% Load the dataset
filePath = 'retail_sales_dataset.csv';
data = readtable(filePath);

% Open a file to save the results
outputFile = 'eda_results.txt';
fid = fopen(outputFile, 'w');

% Basic information
fprintf(fid, 'Shape of the dataset (Rows, Columns):\n');
fprintf(fid, '%d, %d\n\n', size(data, 1), size(data, 2));

fprintf(fid, 'Column Names:\n');
colNames = data.Properties.VariableNames;
fprintf(fid, '%s\n', strjoin(colNames, ', '));

% Display the first few rows
fprintf(fid, '\nFirst few rows:\n');
headData = head(data);
for i = 1:height(headData)
    fprintf(fid, '%s\n', strjoin(string(table2cell(headData(i, :))), ', '));
end

% Summary statistics
fprintf(fid, '\nSummary Statistics:\n');
summ = summary(data);
varNames = fieldnames(summ);
for i = 1:numel(varNames)
    fprintf(fid, '\nVariable: %s\n', varNames{i});
    fprintf(fid, '%s\n', evalc('disp(summ.(varNames{i}))'));
end

% Check for missing values
fprintf(fid, '\nMissing Values:\n');
missingValues = sum(ismissing(data));
for i = 1:numel(missingValues)
    fprintf(fid, '%s: %d\n', colNames{i}, missingValues(i));
end

% Correlation Matrix (numerical data only)
numericData = data{:, varfun(@isnumeric, data, 'OutputFormat', 'uniform')};
if ~isempty(numericData)
    corrMatrix = corr(numericData, 'Rows', 'pairwise');
    fprintf(fid, '\nCorrelation Matrix:\n');
    fprintf(fid, '%s\n', evalc('disp(corrMatrix)'));
end

% Close the file
fclose(fid);

fprintf('EDA results saved to %s\n', outputFile);
