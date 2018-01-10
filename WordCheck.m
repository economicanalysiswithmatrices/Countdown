function Boolean = WordCheck(Answer)

WordsFile = fopen('Words.txt', 'rt'); % opens the external file Words.txt 
Words = textscan(WordsFile, '%s', 'delimiter', '\n'); % reads the text file of a string array

Words = Words{1,1}; 

Valid = false;

for i=1:length(Words)
    Word = Words{i,1};
    if(strcmpi(Word,Answer)) % compares word against players answer
        Valid = true; % answer is valid if both words are identical when compared
        break; % exits the for loop if words are identical 
    end
    
end
if(strcmpi(Answer,'')) % if no word is entered then message display will be invalid
    Valid = false; 
    
end
Boolean = Valid;
