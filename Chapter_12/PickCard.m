function varargout = PickCard(varargin)
% PICKCARD MATLAB code for PickCard.fig
%      PICKCARD, by itself, creates a new PICKCARD or raises the existing
%      singleton*.
%
%      H = PICKCARD returns the handle to a new PICKCARD or the handle to
%      the existing singleton*.
%
%      PICKCARD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PICKCARD.M with the given input arguments.
%
%      PICKCARD('Property','Value',...) creates a new PICKCARD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PickCard_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PickCard_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PickCard

% Last Modified by GUIDE v2.5 19-Aug-2019 05:29:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PickCard_OpeningFcn, ...
                   'gui_OutputFcn',  @PickCard_OutputFcn, ...
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


% --- Executes just before PickCard is made visible.
function PickCard_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PickCard (see VARARGIN)

% Choose default command line output for PickCard
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PickCard wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PickCard_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pick.
function pick_Callback(hObject, eventdata, handles)
% hObject    handle to pick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Suit = {'Club', 'Spade', 'Heart', 'Diamond'};
Numbers={'Ace','2','3','4','5','6','7','8',...
    '9','10','Jack','Queen','King'};
Su=randi(4,1);Nu=randi(13,1);
Card=[cellstr(Suit(Su)),cellstr(Numbers(Nu))];
%Tipp    = get(handles.edittip, 'String');
set(handles.textR,'String',Card);
