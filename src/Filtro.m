function varargout = Filtro(varargin)
% FILTRO MATLAB code for Filtro.fig
%      FILTRO, by itself, creates a new FILTRO or raises the existing
%      singleton*.
%
%      H = FILTRO returns the handle to a new FILTRO or the handle to
%      the existing singleton*.
%
%      FILTRO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILTRO.M with the given input arguments.
%
%      FILTRO('Property','Value',...) creates a new FILTRO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Filtro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Filtro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Filtro

% Last Modified by GUIDE v2.5 07-Nov-2022 20:11:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Filtro_OpeningFcn, ...
                   'gui_OutputFcn',  @Filtro_OutputFcn, ...
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


% --- Executes just before Filtro is made visible.
function Filtro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Filtro (see VARARGIN)

% Choose default command line output for Filtro
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Filtro wait for user response (see UIRESUME)
% uiwait(handles.figure1);
handles.puntos = line(0, 0);
handles.linea = line(0, 0);
handles.circulos = line(0, 0);
movegui('center');

% --- Outputs from this function are returned to the command line.
function varargout = Filtro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recObj = audiorecorder;
recordblocking(recObj,5);
Fs=8000;
y=getaudiodata(recObj);
plot(handles.axes1,y)
filename = 'handel.wav';
audiowrite(filename,y,Fs);
Ts = 1/8000;
t = 0:Ts:10-Ts;
j = fft(y);   
fs = 1/Ts;
f = (0:length(j)-1)*fs/length(j);

plot(handles.axes2,f,abs(j))




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename = 'handel.wav';

[x,fs]=audioread(filename);

Fc=str2double(get(handles.tex_cor,'String'));
[b,a]=butter(10,Fc/(fs/2),'low');

r=filter(b,a,x);

audiowrite('señal_filtro.wav', r, fs);
figure
plot(handles.axes5,r)

Ts = 1/8000;
h = fft(r);   
fs = 1/Ts;
f = (0:length(h)-1)*fs/length(h);
figure
plot(handles.axes6,f,abs(h))


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Filtro)
menut



function tex_cor_Callback(hObject, eventdata, handles)
% hObject    handle to tex_cor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_cor as text
%        str2double(get(hObject,'String')) returns contents of tex_cor as a double


% --- Executes during object creation, after setting all properties.
function tex_cor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_cor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function ayuda_Callback(hObject, eventdata, handles)
% hObject    handle to ayuda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('SA&PT User Guide 2.0.pdf')


% --------------------------------------------------------------------
function uitoggletool4_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.puntos);


% --------------------------------------------------------------------
function uitoggletool4_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[x,y]=ginput;
handles.puntos = line(x, y, 'color', 'red', 'LineStyle', 'none', 'Marker', '+');
guidata(hObject,handles);


% --------------------------------------------------------------------
function uitoggletool5_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.linea);


% --------------------------------------------------------------------
function uitoggletool5_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[x,y]=ginput;
handles.linea = line(x, y, 'color', 'r');
guidata(hObject,handles);


% --------------------------------------------------------------------
function uitoggletool6_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.circulos);


% --------------------------------------------------------------------
function uitoggletool6_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[x,y]=ginput;
r= sqrt(diff(x(1:2)).^2 + diff(y(1:2)).^2);
handles.circulos = line(r*cosd(0:360)+ x(1), r*sind(0:360) + y(1), 'color', 'r');
guidata(hObject,handles);


% --------------------------------------------------------------------
function uitoggletool7_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
    grid off;
axes(handles.axes2);
    grid off;
axes(handles.axes5);
    grid off;
axes(handles.axes6);
    grid off;


% --------------------------------------------------------------------
function uitoggletool7_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
    grid on;
axes(handles.axes2);
    grid on;
axes(handles.axes5);
    grid on;
axes(handles.axes6);
    grid on;
