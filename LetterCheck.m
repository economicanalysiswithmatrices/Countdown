function Boolean = LetterCheck(Answer)

Letters = '';

for i=1:9
   LetterNumber = strcat('Letter',int2str(i));
   LetterObject = findobj('Style','text','-and','Tag',LetterNumber);
   Letter = get(LetterObject,'String');
   Letters = strcat(Letters,Letter); 
end


Answer = upper(Answer);

AnswerLength = length(Answer);

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
