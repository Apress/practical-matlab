function varargout = GuessGame(varargin)
% GUESSGAME MATLAB code for GuessGame.fig
%      GUESSGAME, by itself, creates a new GUESSGAME or raises the existing
%      singleton*.
%
%      H = GUESSGAME returns the handle to a new GUESSGAME or the handle to
%      the existing singleton*.
%
%      GUESSGAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUESSGAME.M with the given input arguments.
%
%      GUESSGAME('Property','Value',...) creates a new GUESSGAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuessGame_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuessGame_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuessGame

% Last Modified by GUIDE v2.5 02-Apr-2016 16:43:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuessGame_OpeningFcn, ...
                   'gui_OutputFcn',  @GuessGame_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before GuessGame is made visible.
function GuessGame_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuessGame (see VARARGIN)
global Picked_Number Counter
% Choose default command line output for GuessGame
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuessGame wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%LimitVal=get(handles.editGuess,'String');
%Limit=str2double(LimitVal);
Picked_Number=randi(100,1);
Counter=1; %initializing counter


% --- Outputs from this function are returned to the command line.
function varargout = GuessGame_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editGuess_Callback(hObject, eventdata, handles)
% hObject    handle to editGuess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editGuess as text
%        str2double(get(hObject,'String')) returns contents of editGuess as a double


% --- Executes during object creation, after setting all properties.
function editGuess_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editGuess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editWriteGuess_Callback(hObject, eventdata, handles)
% hObject    handle to editWriteGuess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editWriteGuess as text
%        str2double(get(hObject,'String')) returns contents of editWriteGuess as a double


% --- Executes during object creation, after setting all properties.
function editWriteGuess_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editWriteGuess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in pushbuttonGuess.
function pushbuttonGuess_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonGuess (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Picked_Number Counter
GuessVal=get(handles.editWriteGuess,'String');
Guess=str2double(GuessVal);

if Guess==Picked_Number
    fprintf('You got it in your %d th right\n',Counter);
    set(handles.textBigger,'visible','off');
    set(handles.textSmaller,'visible','off');
    Message1 = 'There You Go! You got it in your ';
    Message2 = 'th right!';
    FinalMes = [Message1, num2str(Counter), Message2];
    set(handles.textYouGot,'String',FinalMes);
    set(handles.textYouGot,'visible','on');
    return;
elseif Guess>Picked_Number
    set(handles.textYouGot,'visible','off');
    set(handles.textBigger,'visible','off');
    set(handles.textSmaller,'visible','on');
elseif Guess<Picked_Number
    set(handles.textYouGot,'visible','off');
    set(handles.textSmaller,'visible','off');
    set(handles.textBigger,'visible','on');
end
Counter=Counter+1;
