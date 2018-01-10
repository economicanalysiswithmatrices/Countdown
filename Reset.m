function Reset % resets the game back to orginal set up

global NumberOfLetters; % defines variable 'NumberOfLetters as global so it can be called in multiple matlab functions
NumberOfLetters = 0; % number of letters equal to zero

global NumberOfVowels; % as above
NumberOfVowels = 0; 

global NumberOfConsonants; % as above
NumberOfConsonants = 0;

global Started; 
Started = false; % sets started variable as false, game has not been started

global Vowels % defines the vowel variable and lists Vowels with varying probabilities for each letter
Vowels = ["A","A","A","A","A","A","A","A","A","A","A","A","A","A","A","E","E","E","E","E","E","E","E","E","E",...
    "E","E","E","E","E","E","E","E","E","E","E","I","I","I","I","I","I","I","I","I","I","I","I","I","O","O",...
    "O","O","O","O","O","O","O","O","O","O","O","U","U","U","U","U"];

global Consonant % defines the consonant vowel and lists Consonants with different probabilities of obtaining each letters
Consonant =  ["B","B","C","C","C","D","D","D","D","D","D","F","F","G","G","G","H","H","J","K","L","L","L","L","L",...
    "M","M","M","M","N","N","N","N","N","N","N","N","P","P","P","P","P","Q","R","R","R","R","R","R","R","R","R",...
    "S","S","S","S","S","S","S","S","S","T","T","T","T","T","T","T","T","T","V","X","Z","W","Y"];


for i=1:9
   LetterNumber = strcat('Letter',int2str(i)); % letter number in GUI letter boxes converted to characters and then set to be empty
   LetterObject = findobj('Style','text','-and','Tag',LetterNumber);
   set(LetterObject,'String', '');
end

Timer = findobj('Style','text','-and','Tag','Timer'); % finds timer object in GUI

set(Timer,'String','30') % sets the timer to start at 30

AnswerInput = findobj('Style','edit','-and','Tag','AnswerInput'); % finds the answer input box in GUI

set(AnswerInput,'String','') % sets the answer input to empty

Answer = findobj('Style','text','-and','Tag','Answer'); % finds the answer object in the GUI

set(Answer,'String','') % sets this to be empty also so the 
