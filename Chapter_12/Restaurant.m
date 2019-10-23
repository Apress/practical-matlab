function varargout = Restaurant(varargin)
% RESTAURANT MATLAB code for Restaurant.fig
%      RESTAURANT, by itself, creates a new RESTAURANT or raises the existing
%      singleton*.
%
%      H = RESTAURANT returns the handle to a new RESTAURANT or the handle to
%      the existing singleton*.
%
%      RESTAURANT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESTAURANT.M with the given input arguments.
%
%      RESTAURANT('Property','Value',...) creates a new RESTAURANT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Restaurant_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Restaurant_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Restaurant

% Last Modified by GUIDE v2.5 01-Apr-2016 17:54:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Restaurant_OpeningFcn, ...
                   'gui_OutputFcn',  @Restaurant_OutputFcn, ...
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


% --- Executes just before Restaurant is made visible.
function Restaurant_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Restaurant (see VARARGIN)

% Choose default command line output for Restaurant
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Restaurant wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axis(handles.axes1,'off');
myImage = imread('Restaurant.jpg');
axes(handles.axes1);
imshow(myImage);



% --- Outputs from this function are returned to the command line.
function varargout = Restaurant_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkboxlahmacun.
function checkboxlahmacun_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxlahmacun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxlahmacun


% --- Executes on button press in checkboxshishkebab.
function checkboxshishkebab_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxshishkebab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxshishkebab


% --- Executes on button press in checkboxbursaiskender.
function checkboxbursaiskender_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxbursaiskender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxbursaiskender


% --- Executes on button press in checkboxwrapper.
function checkboxwrapper_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxwrapper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxwrapper


% --- Executes on button press in checkboxrice.
function checkboxrice_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxrice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxrice


% --- Executes on button press in checkboxsalad.
function checkboxsalad_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxsalad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxsalad


% --- Executes on button press in checkbox1yogurt.
function checkbox1yogurt_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1yogurt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1yogurt


% --- Executes on button press in checkboxcompote.
function checkboxcompote_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxcompote (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxcompote


% --- Executes on button press in checkboxsoda.
function checkboxsoda_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxsoda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxsoda


% --- Executes on button press in checkboxcoffee.
function checkboxcoffee_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxcoffee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxcoffee


% --- Executes on button press in checkboxhottee.
function checkboxhottee_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxhottee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxhottee


% --- Executes on button press in checkboxwater.
function checkboxwater_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxwater (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxwater


% --- Executes on button press in pushbuttonprice.
function pushbuttonprice_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonprice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Amount
Soup = get(handles.uibuttongroupsoup,'SelectedObject');
PickedSoup = get(Soup,'Tag');
switch PickedSoup
    case 'radiobuttontomato'
        Soupprice = 5;
    case 'radiobuttonchicken'
        Soupprice = 7;
    case 'radiobuttonlentil'
        Soupprice = 8;
    otherwise
        msgbox('You did not pick ANYTHING');
end

Baklava     = get(handles.radiobuttonbaklava,'Value');
Cake        = get(handles.radiobuttoncake,'Value');
RicePudding = get(handles.radiobuttonricepudding,'Value');
MixedFruit  = get(handles.radiobuttonmixedfruit,'Value');
Shish       = get(handles.checkboxshishkebab,'Value');
Bursa       = get(handles.checkboxbursaiskender,'Value');
Wrapper     = get(handles.checkboxwrapper,'Value');
Rice        = get(handles.checkboxrice,'Value');
Salad       = get(handles.checkboxsalad,'Value');
Compote     = get(handles.checkboxcompote,'Value');
Soda        = get(handles.checkboxsoda,'Value');
Coffee      = get(handles.checkboxcoffee,'Value');
HotTea      = get(handles.checkboxhottee,'Value');
Amount = Soupprice+Baklava*5+Cake*5+RicePudding*5+...
    MixedFruit*7+Shish*20+Bursa*22+Wrapper*15+...
    Rice*10+Salad*10+Compote*7+Soda*3+Coffee*3+HotTea*2;
set(handles.textsonuc,'String',Amount);



function edittip_Callback(hObject, eventdata, handles)
% hObject    handle to edittip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edittip as text
%        str2double(get(hObject,'String')) returns contents of edittip as a double


% --- Executes during object creation, after setting all properties.
function edittip_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edittip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttontotal.
function pushbuttontotal_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttontotal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Amount
if Amount<1
    msgbox('You did not pick ANYTHING');
else
    Tipp    = get(handles.edittip, 'String');
    Tippp = str2double(Tipp);
    TotalPrice = Amount + Tippp; 
    set(handles.texttotal,'String',TotalPrice);
end



% --- Executes on button press in radiobuttonbaklava.
function radiobuttonbaklava_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonbaklava (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonbaklava


% --- Executes on button press in radiobuttoncake.
function radiobuttoncake_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttoncake (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttoncake


% --- Executes on button press in radiobuttonmixedfruit.
function radiobuttonmixedfruit_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonmixedfruit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonmixedfruit


% --- Executes on button press in radiobuttonricepudding.
function radiobuttonricepudding_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonricepudding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonricepudding


% --- Executes on button press in radiobuttontomato.
function radiobuttontomato_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttontomato (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttontomato


% --- Executes on button press in radiobuttonchicken.
function radiobuttonchicken_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonchicken (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonchicken


% --- Executes on button press in radiobuttonlentil.
function radiobuttonlentil_Callback(hObject, eventdata, handles)
% hObject    handle to radiobuttonlentil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobuttonlentil
