function varargout = fibra(varargin)
% FIBRA MATLAB code for fibra.fig
%      FIBRA, by itself, creates a new FIBRA or raises the existing
%      singleton*.
%
%      H = FIBRA returns the handle to a new FIBRA or the handle to
%      the existing singleton*.
%
%      FIBRA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIBRA.M with the given input arguments.
%
%      FIBRA('Property','Value',...) creates a new FIBRA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fibra_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fibra_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fibra

% Last Modified by GUIDE v2.5 09-Dec-2020 22:41:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fibra_OpeningFcn, ...
                   'gui_OutputFcn',  @fibra_OutputFcn, ...
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


% --- Executes just before fibra is made visible.
function fibra_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fibra (see VARARGIN)

% Choose default command line output for fibra
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fibra wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fibra_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txt_tasa_Callback(hObject, eventdata, handles)
% hObject    handle to txt_tasa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_tasa as text
%        str2double(get(hObject,'String')) returns contents of txt_tasa as a double


% --- Executes during object creation, after setting all properties.
function txt_tasa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_tasa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_dz_Callback(hObject, eventdata, handles)
% hObject    handle to txt_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_dz as text
%        str2double(get(hObject,'String')) returns contents of txt_dz as a double


% --- Executes during object creation, after setting all properties.
function txt_dz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_dz (see GCBO)
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
close fibra;
menut;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%Parámetros de Entrada%%%%%%%%
r=str2double(get(handles.txt_tasa,'String'));
d=str2double(get(handles.txt_dz,'String'));
R=r*(1e9);                                          %Tasa de transmisión
Tb=1/R;                                         %Tiempo de bit
Fs=512/Tb;                                       %Frecuencia de Muestreo
Ts=1/Fs;
% sec=randint(1,n_bits);                        %Secuencia de "1" y "0"
                %aca va la funcion
n_bits=3;                             %Núero de bits
w=2*pi*1/Tb;                                    %Frecuencia angular
                                        %Tiempo de bit
Nmpb=(Tb/Ts)+1;                                 %Número de muestras por bit
Nmps=Nmpb*n_bits;                               %Número de muestras de toda la secuencia
b2 = -21.6*(1e-12^2)/1e3;                       %[ps.ps/km]
b3 = 0.117*(1e-12^3)/1e3;                       %[ps.ps.ps/km]
Dz = d*(1e3);

%%%%%%%%Función de la Fibra%%%%%%%%%%%%%%%%%%%
n = 0:Nmps-1;

t1=0:Ts:(Nmps-1)*Ts;
x=sin(w*t1)+5;
plot(t1,x,'r');
hold on
w = 2*pi*(n-Nmps/2)*Fs/Nmps;
Hd = exp(j*0.5*b2*Dz*w.*w - j*b3*w.*w.*w*Dz/6);   % Función de la fibra en el dominio de la frecuencia 
AouF = fftshift(fft(x)).*Hd; 
Aou = ifft(fftshift(AouF));
plot(t1,abs(Aou),'g');
