function varargout = menut(varargin)
% MENUT MATLAB code for menut.fig
%      MENUT, by itself, creates a new MENUT or raises the existing
%      singleton*.
%
%      H = MENUT returns the handle to a new MENUT or the handle to
%      the existing singleton*.
%
%      MENUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENUT.M with the given input arguments.
%
%      MENUT('Property','Value',...) creates a new MENUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before menut_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to menut_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help menut

% Last Modified by GUIDE v2.5 07-Nov-2022 20:21:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @menut_OpeningFcn, ...
                   'gui_OutputFcn',  @menut_OutputFcn, ...
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

% --- Executes just before menut is made visible.
function menut_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to menut (see VARARGIN)

% Choose default command line output for menut
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes menut wait for user response (see UIRESUME)
% uiwait(handles.figure1);

[a,map]=imread('botones.jpg');
[r,c,d]=size(a);
x=ceil(r/100);
y=ceil(c/300);
g=a(1:x:end,1:y:end,:);
set(handles.pushbutton5,'CData',g);

[a,map]=imread('botones.jpg');
[r,c,d]=size(a);
x=ceil(r/100);
y=ceil(c/300);
g=a(1:x:end,1:y:end,:);
set(handles.pushbutton6,'CData',g);

[a,map]=imread('botones.jpg');
[r,c,d]=size(a);
x=ceil(r/100);
y=ceil(c/300);
g=a(1:x:end,1:y:end,:);
set(handles.pushbutton13,'CData',g);

[a,map]=imread('botones.jpg');
[r,c,d]=size(a);
x=ceil(r/100);
y=ceil(c/300);
g=a(1:x:end,1:y:end,:);
set(handles.pushbutton1,'CData',g);
[a,map]=imread('botones.jpg');
[r,c,d]=size(a);
x=ceil(r/100);
y=ceil(c/300);
g=a(1:x:end,1:y:end,:);
set(handles.pushbutton2,'CData',g);
axes(handles.axes1);
[x,map]=imread('fondocrack.jpg');
image(x);
colormap(map);
axis off
hold on
movegui('center');


% --- Outputs from this function are returned to the command line.
function varargout = menut_OutputFcn(hObject, eventdata, handles) 
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
close(menut)
generadormenu


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(menut)
Menu


% --- Executes on button press in btn_fibra.
function btn_fibra_Callback(hObject, eventdata, handles)
% hObject    handle to btn_fibra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close menut;
fibra;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close menut;
bienvenida;


% --------------------------------------------------------------------
function ayuda_Callback(hObject, eventdata, handles)
% hObject    handle to ayuda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('SA&PT User Guide 2.0.pdf');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(menut)
Menu_conv



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(menut)
Tfourier


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(menut)
Filtro
