function Start

global Started;  
Started = true; % sets 'Started' to equal true 

TimerObject = findobj('Style','text','-and','Tag','Timer'); % obtains 'Timer' object from GUI

[y,Fs] = audioread('Countdown.wav'); % extracts audio file 'Countdown.wav' from 
sound(y,Fs); % plays audio file

for i=1:30 
    set(TimerObject, 'String', 30-i) % reduces timer by 1 
    pause(1) % with 1 second pause inbetween each reduction 
end

AnswerObject = findobj('Style','text','-and','Tag','Answer');
Answer = get(AnswerObject,'String');

if(LetterCheck(Answer) && (WordCheck(Answer))) % checks Letter and Word criteria is met 
    Score = CalculateScore(Answer); % calculate 'Score'
    SaveScore(Score,Answer) % executes 'SaveScore' function
    Reset % executes 'Reset' function 
else
    msgbox('Your word was invalid'); % displays message 'Your word was invalid'
    Reset % executes 'Reset' function 
    
end
