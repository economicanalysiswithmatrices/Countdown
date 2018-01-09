function Boolean = LetterCheck(Answer) % funtion to check if letters used correlate with letters chosen  

Letters = ''; % defines 'Letters' variable 

for i=1:9 % for letters 1 to 9
   LetterNumber = strcat('Letter',int2str(i)); % sets 'LetterNumber' equal to i
   LetterObject = findobj('Style','text','-and','Tag',LetterNumber); % finds 'LetterObject' with 'LetterNumber' = i 
   Letter = get(LetterObject,'String');
   Letters = strcat(Letters,Letter); 
end


Answer = upper(Answer);

AnswerLength = length(Answer); % sets 'AnswerLength' variable to equal length of Answer 

Check = 0;

for j=1:AnswerLength
    AnswerLetter = Answer(1,j);
    for k=1:9
       if(strcmpi(Letters(1,k),AnswerLetter))
           Letters(1,k) = '&';
           Check = Check + 1;
           break;
       end
    end
    
end

if(Check == AnswerLength)
    Boolean = true;
else
    Boolean = false;
end
