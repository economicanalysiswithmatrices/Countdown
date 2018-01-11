    function DisplayHighestScore % displays the highest score 
        
    HighestScoreDisplay = findobj('Style','text','-and','Tag','HighestScore'); % finds the highest score text box on the GUI
    
    HighestScoreFile = fopen('HighestScorer.txt', 'rt'); % opens the HighestScorer.txt file which contains the previous highest score

    HighestScorer = textscan(HighestScoreFile, '%s', 'delimiter', '\n'); % searches through the file 

    if(~isempty(HighestScorer{1,1})) % checks if the cell is empty, if not...
        HighestScorer = HighestScorer{1,1}{1,1}; % gets highest scorer from Cell
        HighestScorer =  strrep(HighestScorer, '_', ' ');  % remove Spaces and replaces _
        set(HighestScoreDisplay, 'String',HighestScorer) % changes 'HighestScoreDisplay' to show highest score
    end
    
