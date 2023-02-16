function varargout = bienvenida(varargin)
% BIENVENIDA MATLAB code for bienvenida.fig
%      BIENVENIDA, by itself, creates a new BIENVENIDA or raises the existing
%      singleton*.
%
%      H = BIENVENIDA returns the handle to a new BIENVENIDA or the handle to
%      the existing singleton*.
%
%      BIENVENIDA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BIENVENIDA.M with the given input arguments.
%
%      BIENVENIDA('Property','Value',...) creates a new BIENVENIDA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bienvenida_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bienvenida_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bienvenida

% Last Modified by GUIDE v2.5 02-Dec-2020 11:30:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bienvenida_OpeningFcn, ...
                   'gui_OutputFcn',  @bienvenida_OutputFcn, ...
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


% --- Executes just before bienvenida is made visible.
function bienvenida_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bienvenida (see VARARGIN)

% Choose default command line output for bienvenida
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bienvenida wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bienvenida_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
[x,map]=imread('portada.jpg');
image(x);
colormap(map);
axis off
hold on
movegui('center');
% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnContinuar.
function btnContinuar_Callback(hObject, eventdata, handles)
% hObject    handle to btnContinuar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
close bienvenida;
menut;
