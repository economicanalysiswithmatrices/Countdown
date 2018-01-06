function SaveScore(Score,Answer)
    
Answer = lower(Answer);

Name = inputdlg(sprintf('Your word "%s" scored %s. Please enter your name to save your score', Answer,Score));
    
    if(~isempty(Name))
        
        Name = strrep(Name,' ','_');

        NameString = Name{1,1};
        
        HighestScoreFile = fopen('HighestScorer.txt', 'rt');

        HighestScorer = textscan(HighestScoreFile, '%s', 'delimiter', '\n');
        
        Count = 0;

        if(~isempty(HighestScorer{1,1}))
            HighestScorer = HighestScorer{1,1}{1,1};
            
            for i=1:length(HighestScorer)
               Letter = HighestScorer(1,i);
               if(Letter == ',')
                   Count = Count + 1;
               end
               if(Count == 2)
                   if(Letter ~= ',')
                   HighestStored = str2num(Letter);
                   ScoreNum = str2num(Score);
                         if(ScoreNum > HighestStored)
                         HighestScores = fopen('HighestScorer.txt','w');
                         fprintf(HighestScores,'%s,%s,%s\r\n',NameString,Answer,Score);
                         DisplayHighestScore
                         end   
                   end

               end
            end
            
    
        else
            HighestScores = fopen('HighestScorer.txt','w');
            fprintf(HighestScores,'%s,%s,%s\r\n',NameString,Answer,Score);
            DisplayHighestScore
        end



        File = fopen('Scores.txt','a');

        fprintf(File,'%s,%s,%s,\r\n',NameString,Answer,Score);
    
    else
        msgbox('You chose not save your score')
    end
