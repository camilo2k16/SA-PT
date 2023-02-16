function varargout = Menu_conv(varargin)
% MENU_CONV MATLAB code for Menu_conv.fig
%      MENU_CONV, by itself, creates a new MENU_CONV or raises the existing
%      singleton*.
%
%      H = MENU_CONV returns the handle to a new MENU_CONV or the handle to
%      the existing singleton*.
%
%      MENU_CONV('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENU_CONV.M with the given input arguments.
%
%      MENU_CONV('Property','Value',...) creates a new MENU_CONV or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Menu_conv_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Menu_conv_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Menu_conv

% Last Modified by GUIDE v2.5 07-Nov-2022 20:33:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Menu_conv_OpeningFcn, ...
                   'gui_OutputFcn',  @Menu_conv_OutputFcn, ...
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


% --- Executes just before Menu_conv is made visible.
function Menu_conv_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Menu_conv (see VARARGIN)

% Choose default command line output for Menu_conv
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Menu_conv wait for user response (see UIRESUME)
% uiwait(handles.figure1);
guidata(hObject, handles);
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
function varargout = Menu_conv_OutputFcn(hObject, eventdata, handles) 
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
close(Menu_conv);
convolucion

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Menu_conv);
convu_con


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Menu_conv);
menut
