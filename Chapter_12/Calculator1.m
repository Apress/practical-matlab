function varargout = Calculator1(varargin)
% CALCULATOR1 MATLAB code for Calculator1.fig
%      CALCULATOR1, by itself, creates a new CALCULATOR1 or raises the existing
%      singleton*.
%
%      H = CALCULATOR1 returns the handle to a new CALCULATOR1 or the handle to
%      the existing singleton*.
%
%      CALCULATOR1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR1.M with the given input arguments.
%
%      CALCULATOR1('Property','Value',...) creates a new CALCULATOR1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calculator1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calculator1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calculator1

% Last Modified by GUIDE v2.5 02-Apr-2016 11:56:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calculator1_OpeningFcn, ...
                   'gui_OutputFcn',  @Calculator1_OutputFcn, ...
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


% --- Executes just before Calculator1 is made visible.
function Calculator1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calculator1 (see VARARGIN)

% Choose default command line output for Calculator1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calculator1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Calculator1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in One.
function One_Callback(hObject, eventdata, handles)
% hObject    handle to One (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='1';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);

% --- Executes on button press in Two.
function Two_Callback(hObject, eventdata, handles)
% hObject    handle to Two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='2';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Three.
function Three_Callback(hObject, eventdata, handles)
% hObject    handle to Three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='3';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);

% --- Executes on button press in Divide.
function Divide_Callback(hObject, eventdata, handles)
% hObject    handle to Divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='/';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);

% --- Executes on button press in Four.
function Four_Callback(hObject, eventdata, handles)
% hObject    handle to Four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='4';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Five.
function Five_Callback(hObject, eventdata, handles)
% hObject    handle to Five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='5';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Six.
function Six_Callback(hObject, eventdata, handles)
% hObject    handle to Six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='6';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Multiply.
function Multiply_Callback(hObject, eventdata, handles)
% hObject    handle to Multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='*';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Seven.
function Seven_Callback(hObject, eventdata, handles)
% hObject    handle to Seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='7';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Eight.
function Eight_Callback(hObject, eventdata, handles)
% hObject    handle to Eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='8';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Nine.
function Nine_Callback(hObject, eventdata, handles)
% hObject    handle to Nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='9';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Minus.
function Minus_Callback(hObject, eventdata, handles)
% hObject    handle to Minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='-';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Zero.
function Zero_Callback(hObject, eventdata, handles)
% hObject    handle to Zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='0';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Left.
function Left_Callback(hObject, eventdata, handles)
% hObject    handle to Left (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='(';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Right.
function Right_Callback(hObject, eventdata, handles)
% hObject    handle to Right (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal=')';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Add.
function Add_Callback(hObject, eventdata, handles)
% hObject    handle to Add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='+';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Sine.
function Sine_Callback(hObject, eventdata, handles)
% hObject    handle to Sine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='sin((pi/180)*';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Cosine.
function Cosine_Callback(hObject, eventdata, handles)
% hObject    handle to Cosine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='cos((pi/180)*';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Tangent.
function Tangent_Callback(hObject, eventdata, handles)
% hObject    handle to Tangent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='tan((pi/180)*';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Cotangent.
function Cotangent_Callback(hObject, eventdata, handles)
% hObject    handle to Cotangent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='cot((pi/180)*';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Equal.
function Equal_Callback(hObject, eventdata, handles)
% hObject    handle to Equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
EvValue   = get(handles.textresult,'String');
EvalValue = eval(EvValue);
set(handles.textresult,'String',EvalValue);


% --- Executes on button press in Point.
function Point_Callback(hObject, eventdata, handles)
% hObject    handle to Point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='.';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Back.
function Back_Callback(hObject, eventdata, handles)
% hObject    handle to Back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.textresult,'String');

if(strcmp(textString,'0')==1)
   set(handles.textresult,'String','0') ;
else
    Val=char(textString);
    L=length(textString);
    textString=Val(1:L-1);
set(handles.textresult,'String',textString)

end 



% --- Executes on button press in Clear.
function Clear_Callback(hObject, eventdata, handles)
% hObject    handle to Clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.textresult,'String','');


% --- Executes on button press in Pi.
function Pi_Callback(hObject, eventdata, handles)
% hObject    handle to Pi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='pi';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);


% --- Executes on button press in Power.
function Power_Callback(hObject, eventdata, handles)
% hObject    handle to Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OldVal=get(handles.textresult,'String');
NewVal='^';
TextString = strcat(OldVal,NewVal);
set(handles.textresult,'String',TextString);
