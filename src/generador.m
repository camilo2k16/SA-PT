function varargout = generador(varargin)
% GENERADOR MATLAB code for generador.fig
%      GENERADOR, by itself, creates a new GENERADOR or raises the existing
%      singleton*.
%
%      H = GENERADOR returns the handle to a new GENERADOR or the handle to
%      the existing singleton*.
%
%      GENERADOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GENERADOR.M with the given input arguments.
%
%      GENERADOR('Property','Value',...) creates a new GENERADOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before generador_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to generador_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help generador

% Last Modified by GUIDE v2.5 26-Sep-2020 10:48:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @generador_OpeningFcn, ...
                   'gui_OutputFcn',  @generador_OutputFcn, ...
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


% --- Executes just before generador is made visible.
function generador_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to generador (see VARARGIN)

% Choose default command line output for generador
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes generador wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = generador_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btncuadradacontinua.
function btncuadradacontinua_Callback(hObject, eventdata, handles)
% hObject    handle to btncuadradacontinua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
cuadradacon


% --- Executes on button press in btncuadradadiscreta.
function btncuadradadiscreta_Callback(hObject, eventdata, handles)
% hObject    handle to btncuadradadiscreta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
cuadradadis


% --- Executes on button press in btnsierracontinua.
function btnsierracontinua_Callback(hObject, eventdata, handles)
% hObject    handle to btnsierracontinua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
dientescon


% --- Executes on button press in btnsierradiscreta.
function btnsierradiscreta_Callback(hObject, eventdata, handles)
% hObject    handle to btnsierradiscreta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
dientesdis


% --- Executes on button press in btnsenoidalcontinua.
function btnsenoidalcontinua_Callback(hObject, eventdata, handles)
% hObject    handle to btnsenoidalcontinua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
senoidecon

% --- Executes on button press in btnsenoidaldiscreta.
function btnsenoidaldiscreta_Callback(hObject, eventdata, handles)
% hObject    handle to btnsenoidaldiscreta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
senoidedis


% --- Executes on button press in btnescalondiscreta.
function btnescalondiscreta_Callback(hObject, eventdata, handles)
% hObject    handle to btnescalondiscreta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
escalondis


% --- Executes on button press in btnescaloncontinua.
function btnescaloncontinua_Callback(hObject, eventdata, handles)
% hObject    handle to btnescaloncontinua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
escaloncon


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
exponencialcon


% --- Executes on button press in btnexponencialdiscreta.
function btnexponencialdiscreta_Callback(hObject, eventdata, handles)
% hObject    handle to btnexponencialdiscreta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
exponencialdis


% --- Executes on button press in btnrampadiscreta.
function btnrampadiscreta_Callback(hObject, eventdata, handles)
% hObject    handle to btnrampadiscreta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
rampadis


% --- Executes on button press in btnrampacontinua.
function btnrampacontinua_Callback(hObject, eventdata, handles)
% hObject    handle to btnrampacontinua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
rampacon


% --- Executes on button press in btnimpulsocontinua.
function btnimpulsocontinua_Callback(hObject, eventdata, handles)
% hObject    handle to btnimpulsocontinua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
impulso


% --- Executes on button press in btnimpulsodiscreta.
function btnimpulsodiscreta_Callback(hObject, eventdata, handles)
% hObject    handle to btnimpulsodiscreta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnrectangularcontinua.
function btnrectangularcontinua_Callback(hObject, eventdata, handles)
% hObject    handle to btnrectangularcontinua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
rectangularcon


% --- Executes on button press in btntriangularcontinua.
function btntriangularcontinua_Callback(hObject, eventdata, handles)
% hObject    handle to btntriangularcontinua (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
triangulocon


% --- Executes on button press in btnrectangulardiscreta.
function btnrectangulardiscreta_Callback(hObject, eventdata, handles)
% hObject    handle to btnrectangulardiscreta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
rectangulardis


% --- Executes on button press in btntriangulardiscreta.
function btntriangulardiscreta_Callback(hObject, eventdata, handles)
% hObject    handle to btntriangulardiscreta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(generador);
triangulodis
