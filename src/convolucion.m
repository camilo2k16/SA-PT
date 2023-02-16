function varargout = convolucion(varargin)
% CONVOLUCION MATLAB code for convolucion.fig
%      CONVOLUCION, by itself, creates a new CONVOLUCION or raises the existing
%      singleton*.
%
%      H = CONVOLUCION returns the handle to a new CONVOLUCION or the handle to
%      the existing singleton*.
%
%      CONVOLUCION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONVOLUCION.M with the given input arguments.
%
%      CONVOLUCION('Property','Value',...) creates a new CONVOLUCION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before convolucion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to convolucion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help convolucion

% Last Modified by GUIDE v2.5 07-Nov-2022 17:08:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @convolucion_OpeningFcn, ...
                   'gui_OutputFcn',  @convolucion_OutputFcn, ...
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


% --- Executes just before convolucion is made visible.
function convolucion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to convolucion (see VARARGIN)

% Choose default command line output for convolucion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes convolucion wait for user response (see UIRESUME)
% uiwait(handles.figure1);
guidata(hObject, handles);
handles.puntos = line(0, 0);
handles.linea = line(0, 0);
handles.circulos = line(0, 0);
movegui('center');


% --- Outputs from this function are returned to the command line.
function varargout = convolucion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function FX_Callback(hObject, eventdata, handles)
% hObject    handle to FX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FX as text
%        str2double(get(hObject,'String')) returns contents of FX as a double


% --- Executes during object creation, after setting all properties.
function FX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FXn_Callback(hObject, eventdata, handles)
% hObject    handle to FXn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FXn as text
%        str2double(get(hObject,'String')) returns contents of FXn as a double


% --- Executes during object creation, after setting all properties.
function FXn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FXn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FH_Callback(hObject, eventdata, handles)
% hObject    handle to FH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FH as text
%        str2double(get(hObject,'String')) returns contents of FH as a double


% --- Executes during object creation, after setting all properties.
function FH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FHn_Callback(hObject, eventdata, handles)
% hObject    handle to FHn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FHn as text
%        str2double(get(hObject,'String')) returns contents of FHn as a double


% --- Executes during object creation, after setting all properties.
function FHn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FHn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


Fx = get(handles.FX,'String');
FH = get(handles.FH,'String');
FXn = get(handles.FXn,'String');
FHn = get(handles.FHn,'String');

fun_x = str2num(Fx);
fun_H = str2num(FH);
fun_Xn = str2num(FXn);
fun_Hn = str2num(FHn);

Xmin = min(fun_Xn);
Hmin = min(fun_Hn);
Xmax = max(fun_Xn);
Hmax = max(fun_Hn);


pause on
x=fun_x;        %cualquier vector menor de 10 elementos
h=fun_H;   %cualquier vector menor de 10 elementos
m=length(x);
n=length(h);
%invierte el vector h
hi=fliplr(h);
k=20;
X=[x,zeros(1,40-m)];
X= X([ end-k+1:end 1:end-k ]);
H=[h,zeros(1,40-n)];
H= H([ end-k+1:end 1:end-k ]);
xn=-20:20-1;
Y=zeros(1,40);
p=zeros(1,40);

stem(handles.axes1,xn,X,'MarkerFaceColor','red')
% set(h1,'YLim',[a b])
title(handles.axes1,"FUNCION X");
ylabel(handles.axes1,"Amplitud");

stem(handles.axes2,H,'MarkerFaceColor','blue')
% set(h2,'YLim',[a b])

pause(2)

stem(handles.axes3,xn,Y,'MarkerFaceColor','black')

%
Hi=[hi,zeros(1,40-n)];
for i=1:40-n
    p=X.*Hi;
    Y(i+n-1)=sum(p);
    
     vel= get(handles.tex_vel,'Value');
    
    stem(handles.axes2,xn,Hi,'MarkerFaceColor','blue')
    title(handles.axes2,"FUNCION H");
    ylabel(handles.axes2,"Amplitud");
    
    stem(handles.axes3,xn,Y,'MarkerFaceColor','black')
    title(handles.axes3,"FUNCION DE SALIDA");
    ylabel(handles.axes3,"Amplitud");
    xlabel(handles.axes3,"TIEMPO");
    
    Hi= Hi([ end 1:end-1 ]);
    pause(vel)
end
pause off



% 
% suma_min = abs(Hmin)+ abs(Xmin);
% % 
% Y_pr = conv(fun_x , fun_H);
% % 
% longitud_Y = length(Y_pr);
% % 
% Yn = -1*suma_min : 1 : longitud_Y-suma_min-1;
% 
% 
% stem(handles.axes1, fun_Xn,fun_x);
% stem(handles.axes2, fun_Hn,fun_H);
% stem(handles.axes3, Yn,Y);


% --- Executes on slider movement.
function tex_vel_Callback(hObject, eventdata, handles)
% hObject    handle to tex_vel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function tex_vel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_vel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(convolucion)
menut


% --------------------------------------------------------------------
function ayuda_Callback(hObject, eventdata, handles)
% hObject    handle to ayuda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('SA&PT User Guide 2.0.pdf')


% --------------------------------------------------------------------
function uitoggletool8_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.puntos);


% --------------------------------------------------------------------
function uitoggletool8_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[x,y]=ginput;
handles.puntos = line(x, y, 'color', 'red', 'LineStyle', 'none', 'Marker', '+');
guidata(hObject,handles);


% --------------------------------------------------------------------
function uitoggletool7_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.linea);


% --------------------------------------------------------------------
function uitoggletool7_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool7 (see GCBO)
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
function uitoggletool10_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
    grid off;
axes(handles.axes2);
    grid off;
axes(handles.axes3);
    grid off;


% --------------------------------------------------------------------
function uitoggletool10_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
    grid on;
axes(handles.axes2);
    grid on;
axes(handles.axes3);
    grid on;
