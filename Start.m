function Start

global Started;

Started = true;

TimerObject = findobj('Style','text','-and','Tag','Timer');

[y,Fs] = audioread('Countdown.wav');
sound(y,Fs);

for i=1:30
    set(TimerObject, 'String', 30-i)
    pause(1)
end

AnswerObject = findobj('Style','text','-and','Tag','Answer');

Answer = get(AnswerObject,'String');


if(LetterCheck(Answer) && (WordCheck(Answer)))
    Score = CalculateScore(Answer);
    SaveScore(Score,Answer)
    Reset
else
    msgbox('Your word was invalid');
    Reset
    
end