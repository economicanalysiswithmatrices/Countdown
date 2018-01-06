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
Vowels = ["A","E","I","O","U"];

global Consonant
Consonant =  ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "X", "Z", "W", "Y"];


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
