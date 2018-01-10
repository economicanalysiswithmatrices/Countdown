    function DisplayHighestScore 
        
    HighestScoreDisplay = findobj('Style','text','-and','Tag','HighestScore'); % finds the highest score text box on the GUI
    
    HighestScoreFile = fopen('HighestScorer.txt', 'rt'); % opens the HighestScorer.txt file which contains the previous highest score

    HighestScorer = textscan(HighestScoreFile, '%s', 'delimiter', '\n'); % searches through the file string array

    if(~isempty(HighestScorer{1,1})) %Checks if Cell is empty if not
        HighestScorer = HighestScorer{1,1}{1,1}; %Gets Highest scorer from Cell
        HighestScorer =  strrep(HighestScorer, '_', ' ');  %Remove Spaces and replaces _
        set(HighestScoreDisplay, 'String',HighestScorer) % changes 'HighestScoreDisplay' to show highest score
    end
    
