function Boolean = LetterCheck(Answer) % function to check if letters used correlate with letters chosen  

Letters = ''; % defines 'Letters' variable as empty 

for i=1:9 % for letters 1 to 9
   LetterNumber = strcat('Letter',int2str(i)); % sets 'LetterNumber' equal to i
   LetterObject = findobj('Style','text','-and','Tag',LetterNumber); % finds 'LetterObject' with 'LetterNumber' = i 
   Letter = get(LetterObject,'String');
   Letters = strcat(Letters,Letter); 
end


Answer = upper(Answer); % sets 'Answers' to upper case letters 

AnswerLength = length(Answer); % sets 'AnswerLength' variable to equal length of Answer 

Check = 0;

for j=1:AnswerLength %Runs to amount of times AnswerLength
    AnswerLetter = Answer(1,j); %Get current AnswerLetter
    for k=1:9
       if(strcmpi(Letters(1,k),AnswerLetter)) %Checks if letter at certain location is equal to letter in given letters
           Letters(1,k) = '&';  %Remove letter by setting it to & symbol
           Check = Check + 1;  %Add one to Check
           break; %break loop letter has been found
       end
    end
    
end

if(Check == AnswerLength) %Check should equal number of letters in answer
    Boolean = true;
else
    Boolean = false;
end
