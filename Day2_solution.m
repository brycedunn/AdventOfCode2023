data = readlines("Da2_input.txt"); % str array
redex = '\d*\sred'; greenex = '\d*\sgreen'; blueex = '\d*\sblue';

redStr = regexp(data,redex,'match'); 
greenStr = regexp(data,greenex,'match');
blueStr = regexp(data,blueex,'match');
%%
su = 0;
for i = 1:length(data)
    reds = regexp(redStr{i},'\d*','match');
    if isstring(reds) == 0
        reds = cellfun(@cell2mat,reds,'UniformOutput',false);
    end
    reds = cellfun(@str2double,reds);

    greens = regexp(greenStr{i},'\d*','match');
    if isstring(greens) == 0
        greens = cellfun(@cell2mat,greens,'UniformOutput',false);
    end
    greens = cellfun(@str2double,greens);

    blues = regexp(blueStr{i},'\d*','match');
    if isstring(blues) == 0
        blues = cellfun(@cell2mat,blues,'UniformOutput',false);
    end
    blues = cellfun(@str2double,blues);

   if all(reds <= 12) && all(greens <= 13) && all(blues <= 14)
       su = su + i;
   end

end
disp(su)