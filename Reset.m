function Reset

global NumberOfLetters;
NumberOfLetters = 0;

global NumberOfVowels;
NumberOfVowels = 0;

global NumberOfConsonants;
NumberOfConsonants = 0;

global Started;
Started = false;

global Vowels
Vowels = ["A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","E","E","E","E","E","E","E","E","E","E",...
    "E","E","E","E","E","E","E","E","E","E","E","I","I","I","I","I","I","I","I","I","I","I","I","I","O","O",...
    "O","O","O","O","O","O","O","O","O","O","O","U","U","U","U","U"];

global Consonant
Consonant =  ["B","B","C","C","C","D","D","D","D","D","D","F","F","G","G","G","H","H","J","K","L","L","L","L","L",...
    "M","M","M","M","N","N","N","N","N","N","N","N","P","P","P","P","P","Q","R","R","R","R","R","R","R","R","R",...
    "S","S","S","S","S","S","S","S","S","T","T","T","T","T","T","T","T","T","V","X","Z","W","Y"];


for i=1:9
   LetterNumber = strcat('Letter',int2str(i));
   LetterObject = findobj('Style','text','-and','Tag',LetterNumber);
   set(LetterObject,'String', '');
end

Timer = findobj('Style','text','-and','Tag','Timer');

set(Timer,'String','30')

AnswerInput = findobj('Style','edit','-and','Tag','AnswerInput');

set(AnswerInput,'String','')

Answer = findobj('Style','text','-and','Tag','Answer');

set(Answer,'String','')
