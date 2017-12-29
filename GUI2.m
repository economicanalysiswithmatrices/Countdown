function varargout = GUI2(varargin)
%GUI MATLAB code file for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('Property','Value',...) creates a new GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to GUI_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUI('CALLBACK') and GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 29-Dec-2017 18:12:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI2_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
Reset


% --- Outputs from this function are returned to the command line.
function varargout = GUI2_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GfUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Consonant.
function Consonant_Callback(hObject, eventdata, handles)
% hObject    handle to Consonant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Consonant;

global NumberOfLetters;

global NumberOfConsonants;

global Started;

if (~Started)
    if (NumberOfConsonants ~= 6)
     if (NumberOfLetters ~= 9)
            NumberOfLetters = NumberOfLetters + 1;
            NumberOfConsonants = NumberOfConsonants + 1;
            RandomNumber = randi(numel(Consonant));
            RandomConsonant = Consonant(1,RandomNumber);
            LetterDef = strcat('Letter',int2str(NumberOfLetters));
            CurrentLetter = findobj('Style', 'text','-and','Tag',LetterDef);
            set(CurrentLetter,'String',RandomConsonant)
            if(NumberOfLetters == 9)
              Start
            end
      else
          Start
      end
   end
end

% --- Executes on button press in Vowel.
function Vowel_Callback(hObject, eventdata, handles)
% hObject    handle to Vowel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Submit.
function Submit_Callback(hObject, eventdata, handles)
% hObject    handle to Submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





% --- Executes during object creation, after setting all properties.
function Answerbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Answerbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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


% --- Executes during object creation, after setting all properties.
function Background_CreateFcn(hObject, eventdata, handles)

axes(hObject)
imshow('Countdown.jpg') %This causes errors with the image
% hObject    handle to Background (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate Background
