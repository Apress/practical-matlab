function varargout = MusicPlayer(varargin)
% MUSICPLAYER MATLAB code for MusicPlayer.fig
%      MUSICPLAYER, by itself, creates a new MUSICPLAYER or raises the existing
%      singleton*.
%
%      H = MUSICPLAYER returns the handle to a new MUSICPLAYER or the handle to
%      the existing singleton*.
%
%      MUSICPLAYER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MUSICPLAYER.M with the given input arguments.
%
%      MUSICPLAYER('Property','Value',...) creates a new MUSICPLAYER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MusicPlayer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MusicPlayer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MusicPlayer

% Last Modified by GUIDE v2.5 19-Aug-2019 01:56:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MusicPlayer_OpeningFcn, ...
                   'gui_OutputFcn',  @MusicPlayer_OutputFcn, ...
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


% --- Executes just before MusicPlayer is made visible.
function MusicPlayer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MusicPlayer (see VARARGIN)

% Choose default command line output for MusicPlayer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MusicPlayer wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axis(handles.axes1,'off');
myImage = imread('Figure_12_14.png');
axes(handles.axes1);
imshow(myImage);


% --- Outputs from this function are returned to the command line.
function varargout = MusicPlayer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Play.
function Play_Callback(hObject, eventdata, handles)
% hObject    handle to Play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename player  
[y,Fs] = audioread(filename);
player = audioplayer(y,Fs);
play(player);disp('playing is on');

% --- Executes on button press in Pause.
function Pause_Callback(hObject, eventdata, handles)
% hObject    handle to Pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player
pause(player);


% --- Executes on button press in Resume.
function Resume_Callback(hObject, eventdata, handles)
% hObject    handle to Resume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player
resume(player);

% --- Executes on button press in Stop.
function Stop_Callback(hObject, eventdata, handles)
% hObject    handle to Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player
stop(player);

% --- Executes on button press in Load.
function Load_Callback(hObject, eventdata, handles)

% hObject    handle to Load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename  pathname 
[filename, pathname] = ...
    uigetfile({'*.mp3';'*.wav'});
