function varargout = generadormenu(varargin)
% GENERADORMENU MATLAB code for generadormenu.fig
%      GENERADORMENU, by itself, creates a new GENERADORMENU or raises the existing
%      singleton*.
%
%      H = GENERADORMENU returns the handle to a new GENERADORMENU or the handle to
%      the existing singleton*.
%
%      GENERADORMENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GENERADORMENU.M with the given input arguments.
%
%      GENERADORMENU('Property','Value',...) creates a new GENERADORMENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before generadormenu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to generadormenu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help generadormenu

% Last Modified by GUIDE v2.5 25-Aug-2021 14:55:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @generadormenu_OpeningFcn, ...
                   'gui_OutputFcn',  @generadormenu_OutputFcn, ...
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


% --- Executes just before generadormenu is made visible.
function generadormenu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to generadormenu (see VARARGIN)

% Choose default command line output for generadormenu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
[x,map]=imread('fondocrack.jpg');
image(x);
colormap(map);
axis off
hold on
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
movegui('center');
% UIWAIT makes generadormenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = generadormenu_OutputFcn(hObject, eventdata, handles) 
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
close generadormenu
generadorcon


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close generadormenu
generadordis


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close generadormenu
menut


% --------------------------------------------------------------------
function ayuda_Callback(hObject, eventdata, handles)
% hObject    handle to ayuda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
