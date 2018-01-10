function Start

global Started;  

try %We need to use a try and catch otherwise if the timer is running when the program is closed it will cause many errors
    
Started = true; % sets 'Started' to equal true 

TimerObject = findobj('Style','text','-and','Tag','Timer'); % obtains 'Timer' from GUI

[y,Fs] = audioread('Countdown.wav'); % extracts audio file 'Countdown.wav' 
sound(y,Fs); % plays 'Countdown.wav' audio file

    


for i=1:30 
    set(TimerObject, 'String', 30-i) % set timer to countdown
    pause(1) % with 1 second pause inbetween each reduction 
end

AnswerObject = findobj('Style','text','-and','Tag','Answer'); % obtains 'Answer' from GUI 
Answer = get(AnswerObject,'String');

if(LetterCheck(Answer) && (WordCheck(Answer))) % checks Letter and Word criteria is met 
    Score = CalculateScore(Answer); % calculates 'Score' using 'CalculateScore' function
    SaveScore(Score,Answer) % runs 'SaveScore' function
    Reset % runs 'Reset' function 
else
    msgbox('Your word was invalid'); % displays message 'Your word was invalid'
    Reset % runs 'Reset' function 
    
end

catch %This is called if the timer is started and the program is closed, it stops the audio
    clear sound;
end
