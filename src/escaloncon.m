function varargout = escaloncon(varargin)
% ESCALONCON MATLAB code for escaloncon.fig
%      ESCALONCON, by itself, creates a new ESCALONCON or raises the existing
%      singleton*.
%
%      H = ESCALONCON returns the handle to a new ESCALONCON or the handle to
%      the existing singleton*.
%
%      ESCALONCON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ESCALONCON.M with the given input arguments.
%
%      ESCALONCON('Property','Value',...) creates a new ESCALONCON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before escaloncon_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to escaloncon_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help escaloncon

% Last Modified by GUIDE v2.5 03-Nov-2021 17:37:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @escaloncon_OpeningFcn, ...
                   'gui_OutputFcn',  @escaloncon_OutputFcn, ...
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


% --- Executes just before escaloncon is made visible.
function escaloncon_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to escaloncon (see VARARGIN)

% Choose default command line output for escaloncon
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
handles.puntos = line(0, 0);
handles.linea = line(0, 0);
handles.circulos = line(0, 0);
% UIWAIT makes escaloncon wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.axes1);
    grid off;
movegui('center');


% --- Outputs from this function are returned to the command line.
function varargout = escaloncon_OutputFcn(hObject, eventdata, handles) 
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
%% Se�al Escalon en Tiempo Continuo
A = str2double(get(handles.txtAmplitud,'String')); %Amplitud
Fs = 10000; %Frecuencia de Muestreo
peri = str2double(get(handles.txtperiodos,'String')); %inicio del escalon
M= A+"u(t-"+peri+")";
t = peri:1/Fs:10; %Tiempo de Simulaci�n
x1 = A*heaviside(t); %Generaci�n de Se�al
plot(t,x1),grid on, xlim([-1 10])  %Grafica
set(handles.label_prueba,'string', M );

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(escaloncon);
generadorcon



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
function uitoggletool5_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[x,y]=ginput;
handles.linea = line(x, y, 'color', 'r');
guidata(hObject,handles);


% --------------------------------------------------------------------
function uitoggletool5_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.linea);


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
function uitoggletool6_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool6 (see GCBO)
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


% --------------------------------------------------------------------
function ayuda_Callback(hObject, eventdata, handles)
% hObject    handle to ayuda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('SA&PT User Guide 2.0.pdf')


% --------------------------------------------------------------------
function uitoggletool7_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
    grid off;	


% --------------------------------------------------------------------
function uitoggletool7_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
    grid on;
