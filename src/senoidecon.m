function varargout = senoidecon(varargin)
% SENOIDECON MATLAB code for senoidecon.fig
%      SENOIDECON, by itself, creates a new SENOIDECON or raises the existing
%      singleton*.
%
%      H = SENOIDECON returns the handle to a new SENOIDECON or the handle to
%      the existing singleton*.
%
%      SENOIDECON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SENOIDECON.M with the given input arguments.
%
%      SENOIDECON('Property','Value',...) creates a new SENOIDECON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before senoidecon_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to senoidecon_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help senoidecon

% Last Modified by GUIDE v2.5 03-Nov-2021 10:18:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @senoidecon_OpeningFcn, ...
                   'gui_OutputFcn',  @senoidecon_OutputFcn, ...
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


% --- Executes just before senoidecon is made visible.
function senoidecon_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to senoidecon (see VARARGIN)

% Choose default command line output for senoidecon
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
handles.puntos = line(0, 0);
handles.linea = line(0, 0);
handles.circulos = line(0, 0);
% UIWAIT makes senoidecon wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.radiobutton1,'Value',1);
set(handles.radiobutton2,'Value',0);
axes(handles.axes1);
    grid off;
movegui('center');


% --- Outputs from this function are returned to the command line.
function varargout = senoidecon_OutputFcn(hObject, eventdata, handles) 
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
%% Onda Senoidal Tiempo Continuo
A = str2double(get(handles.txtAmplitud,'String')); %Amplitud
f = str2double(get(handles.txtFrecuencia,'String')); %Frecuencia Fundamental
phi = str2double(get(handles.txtDesfase,'String')); %Desfase en radianes
peri = str2double(get(handles.txtperiodos,'String')); %numero de periodos a graficar
phi2 = phi*pi/180;
Fs = 10000; %Frecuencia de Muestreo
T = peri*(1/f); %Número de Periodos a Graficar
j=2*pi*f;
M = A + "sin( " + j + "t + " + phi + "° )";
t = 0:1/Fs:T-1/Fs; %Tiempo de Simulación
x = A*sin(2*pi*f*t+phi2); %Generación de Señal
plot(t,x),grid on,ylim auto  %Grafica
set(handles.label_prueba,'string', M );
set(handles.radiobutton1,'Value',1);
set(handles.radiobutton2,'Value',0);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(senoidecon);
generadorcon



function txtDesfase_Callback(hObject, eventdata, handles)
% hObject    handle to txtDesfase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDesfase as text
%        str2double(get(hObject,'String')) returns contents of txtDesfase as a double


% --- Executes during object creation, after setting all properties.
function txtDesfase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDesfase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtFrecuencia_Callback(hObject, eventdata, handles)
% hObject    handle to txtFrecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFrecuencia as text
%        str2double(get(hObject,'String')) returns contents of txtFrecuencia as a double


% --- Executes during object creation, after setting all properties.
function txtFrecuencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFrecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtAmplitud_Callback(hObject, eventdata, handles)
% hObject    handle to txtAmplitud (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtAmplitud as text
%        str2double(get(hObject,'String')) returns contents of txtAmplitud as a double


% --- Executes during object creation, after setting all properties.
function txtAmplitud_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtAmplitud (see GCBO)
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
function uitoggletool4_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[x,y]=ginput;
handles.puntos = line(x, y, 'color', 'red', 'LineStyle', 'none', 'Marker', '+');
guidata(hObject,handles);


% --------------------------------------------------------------------
function uitoggletool4_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.puntos);


% --------------------------------------------------------------------
function uitoggletool6_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool6 (see GCBO)
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
delete(handles.linea);


% --------------------------------------------------------------------
function uitoggletool7_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool7 (see GCBO)
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
delete(handles.circulos);


% --------------------------------------------------------------------
function uipushtool2_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fh = figure;
P = copyobj(handles.axes1, fh);
F=getframe(P);
ima=frame2im(F);



function txtperiodos_Callback(hObject, eventdata, handles)
% hObject    handle to txtperiodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtperiodos as text
%        str2double(get(hObject,'String')) returns contents of txtperiodos as a double


% --- Executes during object creation, after setting all properties.
function txtperiodos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtperiodos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function prueba_Callback(hObject, eventdata, handles)
% hObject    handle to prueba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of prueba as text
%        str2double(get(hObject,'String')) returns contents of prueba as a double


% --- Executes during object creation, after setting all properties.
function prueba_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prueba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
v=get(handles.radiobutton1,'Value');
v2=get(handles.radiobutton2,'Value');

if v==1
    A = str2double(get(handles.txtAmplitud,'String')); %Amplitud
f = str2double(get(handles.txtFrecuencia,'String')); %Frecuencia Fundamental
phi = str2double(get(handles.txtDesfase,'String')); %Desfase en radianes
peri = str2double(get(handles.txtperiodos,'String')); %numero de periodos a graficar
phi2 = phi*pi/180;
Fs = 10000; %Frecuencia de Muestreo
T = peri*(1/f); %Número de Periodos a Graficar
j=2*pi*f;
M = A + "sin( " + j + "t + " + phi + "° )";
t = 0:1/Fs:T-1/Fs; %Tiempo de Simulación
x = A*sin(2*pi*f*t+phi2); %Generación de Señal
plot(t,x),grid on,ylim auto  %Grafica
set(handles.label_prueba,'string', M );
end
if v2==1
    A = str2double(get(handles.txtAmplitud,'String')); %Amplitud
f = str2double(get(handles.txtFrecuencia,'String')); %Frecuencia Fundamental
phi = str2double(get(handles.txtDesfase,'String')); %Desfase en radianes
peri = str2double(get(handles.txtperiodos,'String')); %numero de periodos a graficar
phi2 = phi*pi/180;
Fs = 10000; %Frecuencia de Muestreo
T = peri*(1/f); %Número de Periodos a Graficar
j=2*pi*f;
M = A + "sin( " + j + "t + " + phi + "° )";
t = 0:1/Fs:T-1/Fs; %Tiempo de Simulación
[X,y] = meshgrid(0:0.1:T,0:j);
Z = A*sin(X);
surf(X,y,Z,'FaceAlpha',0.5)
end


% --------------------------------------------------------------------
function uipushtool3_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uitoggletool8_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
    grid on;


% --------------------------------------------------------------------
function uitoggletool8_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
    grid off;
