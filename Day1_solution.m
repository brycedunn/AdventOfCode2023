% Advent of Code 2023, Day 1, Bryce Dunn
%% Load Input Data
filename = 'Day1_input.txt';
data = readlines(filename); % or use importdata()
%% Part 1
% Compute the sum of the first and last numbers that appear in each string.
sum = 0;
for i = 1:length(data)
    digits = isstrprop(data(i),'digit'); % determine if char is a digit
    idx = find(digits);                  % indicies of digit chars
    char_array = convertStringsToChars(data(i));
    first_num = char_array(idx(1)); last_num = char_array(idx(end));
    calibration = [first_num last_num];
    sum = sum + str2double(calibration);
end
disp(sum)