    function DisplayHighestScore
        
    HighestScoreDisplay = findobj('Style','text','-and','Tag','HighestScore');
    
    HighestScoreFile = fopen('HighestScorer.txt', 'rt');

    HighestScorer = textscan(HighestScoreFile, '%s', 'delimiter', '\n');

    if(~isempty(HighestScorer{1,1})) 
        HighestScorer = HighestScorer{1,1}{1,1};
        HighestScorer =  strrep(HighestScorer, '_', ' ');
        set(HighestScoreDisplay, 'String',HighestScorer)
    end
    