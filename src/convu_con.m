function varargout = convu_con(varargin)
% CONVU_CON MATLAB code for convu_con.fig
%      CONVU_CON, by itself, creates a new CONVU_CON or raises the existing
%      singleton*.
%
%      H = CONVU_CON returns the handle to a new CONVU_CON or the handle to
%      the existing singleton*.
%
%      CONVU_CON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONVU_CON.M with the given input arguments.
%
%      CONVU_CON('Property','Value',...) creates a new CONVU_CON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before convu_con_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to convu_con_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help convu_con

% Last Modified by GUIDE v2.5 07-Nov-2022 20:50:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @convu_con_OpeningFcn, ...
                   'gui_OutputFcn',  @convu_con_OutputFcn, ...
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


% --- Executes just before convu_con is made visible.
function convu_con_OpeningFcn(hObject, eventdata, handles, varargin)


% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to convu_con (see VARARGIN)

% Choose default command line output for convu_con
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes convu_con wait for user response (see UIRESUME)
% uiwait(handles.figure1);
guidata(hObject, handles);
handles.puntos = line(0, 0);
handles.linea = line(0, 0);
handles.circulos = line(0, 0);
movegui('center');


% --- Outputs from this function are returned to the command line.
function varargout = convu_con_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function tex_FX_Callback(hObject, eventdata, handles)
% hObject    handle to tex_FX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_FX as text
%        str2double(get(hObject,'String')) returns contents of tex_FX as a double


% --- Executes during object creation, after setting all properties.
function tex_FX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_FX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tex_FXt1_Callback(hObject, eventdata, handles)
% hObject    handle to tex_FXt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_FXt1 as text
%        str2double(get(hObject,'String')) returns contents of tex_FXt1 as a double


% --- Executes during object creation, after setting all properties.
function tex_FXt1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_FXt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tex_FH_Callback(hObject, eventdata, handles)
% hObject    handle to tex_FH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_FH as text
%        str2double(get(hObject,'String')) returns contents of tex_FH as a double


% --- Executes during object creation, after setting all properties.
function tex_FH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_FH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tex_FXt2_Callback(hObject, eventdata, handles)
% hObject    handle to tex_FXt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_FXt2 as text
%        str2double(get(hObject,'String')) returns contents of tex_FXt2 as a double


% --- Executes during object creation, after setting all properties.
function tex_FXt2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_FXt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tex_FHt1_Callback(hObject, eventdata, handles)
% hObject    handle to tex_FHt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_FHt1 as text
%        str2double(get(hObject,'String')) returns contents of tex_FHt1 as a double


% --- Executes during object creation, after setting all properties.
function tex_FHt1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_FHt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tex_FHt2_Callback(hObject, eventdata, handles)
% hObject    handle to tex_FHt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_FHt2 as text
%        str2double(get(hObject,'String')) returns contents of tex_FHt2 as a double


% --- Executes during object creation, after setting all properties.
function tex_FHt2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_FHt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tex_FYt1_Callback(hObject, eventdata, handles)
% hObject    handle to tex_FYt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_FYt1 as text
%        str2double(get(hObject,'String')) returns contents of tex_FYt1 as a double


% --- Executes during object creation, after setting all properties.
function tex_FYt1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_FYt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tex_FYt2_Callback(hObject, eventdata, handles)
% hObject    handle to tex_FYt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_FYt2 as text
%        str2double(get(hObject,'String')) returns contents of tex_FYt2 as a double


% --- Executes during object creation, after setting all properties.
function tex_FYt2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_FYt2 (see GCBO)
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



FXt1= str2num(get(handles.tex_FXt1,'string'));
FXt2= str2num(get(handles.tex_FXt2,'string'));

FHt1= str2num(get(handles.tex_FHt1,'string'));
FHt2= str2num(get(handles.tex_FHt2,'string'));
FYt1= str2num(get(handles.tex_FYt1,'string'));
FYt2= str2num(get(handles.tex_FYt2,'string'));




% Initialization
t = FYt1:FYt2; % Time range
X = zeros(1,length(t)); % Input signal 
x1 = FXt1; x2 = FXt2; % Range of Input Signal
H = zeros(1,length(t)); % Impulse Response
h1 = FHt1; h2 = FHt2; % Range of Impulse Response Signal
Y = zeros(1,length(t)); xh1 = x1+h1; xh2 = x2+h2; % Convolution output


FX= eval(get(handles.tex_FX,'string'));
FH= eval(get(handles.tex_FH,'string'));


% Input Signal Generation
x = FX; % Generate Input Sinc Signal
h = FH; % Generate Impulse Response
H(t>=h1&t<=h2) = h(t>=h1&t<=h2); % Fit the input signal within range
X(t>=x1&t<=x2) = x(t>=x1&t<=x2); % Fit the impulse response within range

% Plot Input Signal and Impulse Response

plot(handles.axes1,t,X,'b','LineWidth',2)
title(handles.axes1,'SEÑAL DE ENTRADA')
grid on

plot(handles.axes2,t,H,'r','LineWidth',2)
title(handles.axes2,'RESPUESTA IMPULSO')
grid on
pause on
for n = xh1:xh2 % Convolution limits
    
    vel= get(handles.tex_vel,'Value');
    % Convolution steps
    f = fliplr(X);           % Flip 
    Xm = circshift(f,[0,n]); % Shift
    m = Xm.*H;               % Multiply 
    Y(t==n) = sum(m);  % Sum
    
    % Live Convolution Process

    plot(handles.axes3,t,H,'r',t,circshift(fliplr(X),[0,n]),'b','LineWidth',2)
    title(handles.axes3,'CONVOLUCIÓN EN PROCESO')
    grid on;
    % Result of convolution live

    plot(handles.axes4,t,Y,'k','LineWidth',2)
    axis tight
    grid on
    title(handles.axes4,'SEÑAL DE SALIDA')
    pause(vel); % Pause between Update
    

end


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
axes(handles.axes3);
    grid off;
axes(handles.axes4);
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
axes(handles.axes3);
    grid on;
axes(handles.axes4);
    grid on;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(convu_con)
menut
