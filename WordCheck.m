function Boolean = WordCheck(Answer)


WordsFile = fopen('Words.txt', 'rt');

Words = textscan(WordsFile, '%s', 'delimiter', '\n');

Words = Words{1,1};

Valid = false;

for i=1:length(Words)
    Word = Words{i,1};
    if(strcmpi(Word,Answer))
        Valid = true;
        break;
    end
    
end
if(strcmpi(Answer,''))
    Valid = false;
    
end
Boolean = Valid;