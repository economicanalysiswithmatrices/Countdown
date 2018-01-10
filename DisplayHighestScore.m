    function DisplayHighestScore 
        
    HighestScoreDisplay = findobj('Style','text','-and','Tag','HighestScore'); % finds the highst score text box on the GUI
    
    HighestScoreFile = fopen('HighestScorer.txt', 'rt'); % opens the HighestScorer.txt file which contaians the previous highest score

    HighestScorer = textscan(HighestScoreFile, '%s', 'delimiter', '\n'); % searches through the file string array

    if(~isempty(HighestScorer{1,1})) 
        HighestScorer = HighestScorer{1,1}{1,1}; 
        HighestScorer =  strrep(HighestScorer, '_', ' '); 
        set(HighestScoreDisplay, 'String',HighestScorer) % changes 'HighestScoreDisplay' to show highest score
    end
    