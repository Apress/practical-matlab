function varargout = Messaging(varargin)
% MESSAGING MATLAB code for Messaging.fig
%      MESSAGING, by itself, creates a new MESSAGING or raises the existing
%      singleton*.
%
%      H = MESSAGING returns the handle to a new MESSAGING or the handle to
%      the existing singleton*.
%
%      MESSAGING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MESSAGING.M with the given input arguments.
%
%      MESSAGING('Property','Value',...) creates a new MESSAGING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Messaging_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Messaging_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Messaging

% Last Modified by GUIDE v2.5 19-Aug-2019 04:59:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Messaging_OpeningFcn, ...
                   'gui_OutputFcn',  @Messaging_OutputFcn, ...
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


% --- Executes just before Messaging is made visible.
function Messaging_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Messaging (see VARARGIN)

% Choose default command line output for Messaging
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Messaging wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Messaging_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Messag_Callback(hObject, eventdata, handles)
% hObject    handle to Messag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Messag as text
%        str2double(get(hObject,'String')) returns contents of Messag as a double


% --- Executes during object creation, after setting all properties.
function Messag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Messag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in run.
function run_Callback(hObject, eventdata, handles)
% hObject    handle to run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Choice = get(handles.uibuttongroup1,'SelectedObject');
PickedChoice = get(Choice,'Tag');handles = guidata(hObject);
Mess   = get(handles.Messag, 'String');
Message=str2double(get(Mess,'String'));disp(Message);
Messaging = str2double(Message);disp(Messaging);
switch PickedChoice
    case 'Enc'
        Cond=1;
        Encrypt=double(Messaging)+3;
        set(handles.result,'String',(char(Encrypt)));
        disp(char(Encrypt));
    case 'Dec'
        Cond=2;
        Decrypt=Messaging-3;
        set(handles.result,'String',(char(Decrypt)));
        disp(char(Decrypt));
end
