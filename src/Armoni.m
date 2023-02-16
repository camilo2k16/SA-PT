function varargout = Armoni(varargin)
% ARMONI MATLAB code for Armoni.fig
%      ARMONI, by itself, creates a new ARMONI or raises the existing
%      singleton*.
%
%      H = ARMONI returns the handle to a new ARMONI or the handle to
%      the existing singleton*.
%
%      ARMONI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARMONI.M with the given input arguments.
%
%      ARMONI('Property','Value',...) creates a new ARMONI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Armoni_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Armoni_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Armoni

% Last Modified by GUIDE v2.5 07-Nov-2022 19:50:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Armoni_OpeningFcn, ...
                   'gui_OutputFcn',  @Armoni_OutputFcn, ...
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


% --- Executes just before Armoni is made visible.
function Armoni_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Armoni (see VARARGIN)

% Choose default command line output for Armoni
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Armoni wait for user response (see UIRESUME)
% uiwait(handles.figure1);

handles.puntos = line(0, 0);
handles.linea = line(0, 0);
handles.circulos = line(0, 0);
movegui('center');


% --- Outputs from this function are returned to the command line.
function varargout = Armoni_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function FUN_Callback(hObject, eventdata, handles)
% hObject    handle to FUN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FUN as text
%        str2double(get(hObject,'String')) returns contents of FUN as a double


% --- Executes during object creation, after setting all properties.
function FUN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FUN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tex_n_Callback(hObject, eventdata, handles)
% hObject    handle to tex_n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tex_n as text
%        str2double(get(hObject,'String')) returns contents of tex_n as a double


% --- Executes during object creation, after setting all properties.
function tex_n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tex_n (see GCBO)
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
T=10;
dt=0.01;
t=0:dt:T;

x=eval(get(handles.FUN,'string'));
% x=cos(2*pi*t);
plot(handles.axes1,t,x)
title(handles.axes1,"FUNCIÓN ORIGINAL");


wo=2*pi/T;

n=str2double(get(handles.tex_n,'String'));

Ao=zeros(n,1);
An=zeros(n,1);
Bn=zeros(n,1);
Phik=zeros(n,1);


[r m]=size(t);

for i=1:n
    for j=1:m
        Ao(i,1)=Ao(i)+((2/T)*x(1,j)*cos(i*t(1,j)*wo))*dt;
        An(i,1)=An(i)+((2/T)*x(1,j)*sin(i*t(1,j)*wo))*dt;
    end
    Bn(i,1)=(Ao(i)^2+An(i)^2)^0.5;
    Phik(i,1)=atan(An(i)/Ao(i));
end

vm=0;
for i=1:m
    vm=vm+(1/T)*x(i)*dt;
end

t1=0:dt:T;
xf=0*t1+vm;

for i=1:1:n
    
    xf=xf+Ao(i)*cos(i*wo*t1)+An(i)*sin(i*wo*t1);

end


plot(handles.axes2,t,xf);
title(handles.axes2,"FUNCIÓN CON ARMONICOS");


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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


% --------------------------------------------------------------------
function uitoggletool7_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
    grid on;
axes(handles.axes2);
    grid on;
