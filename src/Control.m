function varargout = Control(varargin)
% CONTROL MATLAB code for Control.fig
%      CONTROL, by itself, creates a new CONTROL or raises the existing
%      singleton*.
%
%      H = CONTROL returns the handle to a new CONTROL or the handle to
%      the existing singleton*.
%
%      CONTROL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTROL.M with the given input arguments.
%
%      CONTROL('Property','Value',...) creates a new CONTROL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Control_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Control_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Control

% Last Modified by GUIDE v2.5 03-Dec-2015 23:35:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Control_OpeningFcn, ...
                   'gui_OutputFcn',  @Control_OutputFcn, ...
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


% --- Executes just before Control is made visible.
function Control_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Control (see VARARGIN)

% Choose default command line output for Control
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Control wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Control_OutputFcn(hObject, eventdata, handles) 
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
salir=questdlg('Desea salir?','Salir','Si','No','No');
switch salir
case 'Si'
    close Control;
case 'No'
    return
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
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


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
error=0;
set(handles.text7,'string','  ');
v=str2double(get(handles.edit1,'string'));
v1=str2double(get(handles.edit2,'string'));
v2=str2double(get(handles.edit3,'string'));
v3=str2double(get(handles.edit4,'string'));
v4=str2double(get(handles.edit5,'string'));
a= str2double(get(handles.edit8,'string'));
b= str2double(get(handles.edit9,'string'));
c= str2double(get(handles.edit7,'string'));
z = isnan(v);
z1 = isnan(v1); 
z2 = isnan(v2); 
z3 = isnan(v3); 
z4 = isnan(v4); 

if z==1
set(handles.text7,'string','Error definiendo masa');
elseif z1==1
set(handles.text7,'string','Error definiendo masa');
elseif z2==1
set(handles.text7,'string','Error definiendo fricción');
elseif z3==1
set(handles.text7,'string','Error definiendo fricción');
elseif z4==1
set(handles.text7,'string','Error definiendo longitud');
else
    if v<0 || v1<0 || v2<0 || v3<0 || v4<0
    set(handles.text7,'string','Números no pueden ser negativos');   
    elseif a>=c || b<=0 || b>c
    set(handles.text7,'string','Error definiendo vector de tiempo');    
    error=1;
    else
     error=0;
     t =[a:b:c];
    end
end
if error==0;
    set(handles.text7,'string','Valores correctos');
end
        
% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
set(handles.text7,'string','  ');
valor=get(hObject,'value');
if valor == 1
    axes(handles.axes1);
    grid on;
    axes(handles.axes2);
    grid on;
    set(handles.text7,'string','Grid Activado');
else
    axes(handles.axes1);
    grid off;
    axes(handles.axes2);
    grid off;
    set(handles.text7,'string','Grid Desactivado');
end


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2
set(handles.text7,'string','  ');
estado = get(hObject,'value');
	if estado == 1
      axes(handles.axes1); 
	  box on;
      axes(handles.axes2);
      box on;
      set(handles.text7,'string','Box Activado');
    else
      axes(handles.axes1); 
	  box off;
      axes(handles.axes2);
      box off;
      set(handles.text7,'string','Box Desactivado');
	end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uipanel3.
function uipanel3_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel3 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
A = get(hObject,'string');
switch A
    case 'Ninguna'
       error=0;
set(handles.text7,'string','  ');
v=str2double(get(handles.edit1,'string'));
v1=str2double(get(handles.edit2,'string'));
v2=str2double(get(handles.edit3,'string'));
v3=str2double(get(handles.edit4,'string'));
v4=str2double(get(handles.edit5,'string'));
a= str2double(get(handles.edit8,'string'));
b= str2double(get(handles.edit9,'string'));
c= str2double(get(handles.edit7,'string'));
z = isnan(v);
z1 = isnan(v1); 
z2 = isnan(v2); 
z3 = isnan(v3); 
z4 = isnan(v4); 

if z==1
set(handles.text7,'string','Error definiendo masa');
elseif z1==1
set(handles.text7,'string','Error definiendo masa');
elseif z2==1
set(handles.text7,'string','Error definiendo fricción');
elseif z3==1
set(handles.text7,'string','Error definiendo fricción');
elseif z4==1
set(handles.text7,'string','Error definiendo longitud');
else
    if v<0 || v1<0 || v2<0 || v3<0 || v4<0
    set(handles.text7,'string','Números no pueden ser negativos');   
    elseif a>=c || b<=0 || b>c
    set(handles.text7,'string','Error definiendo vector de tiempo');    
    error=1;
    else   
    error=0;
    end
end
if error==0;
    set(handles.text7,'string','     ');
    num1=[0 0 -v1*v4^2 -v3  v1*9.8*v4];
    den1=[-v*v1*v4^2 -v3*v-v3*v1-v2*v1*v4^2 v*v1*9.8*v4+v1^2*v4*9.8-v2*v3 9.8*v2*v1*v4 0];
    t =[a:b:c];
    c=step(num1,den1,t);
    plot(handles.axes1,t,c*0);
    axes(handles.axes1);
    
    num2=[0 0 v1*v4 0];
    den2=[-v*v1*v4^2 -(v*v3+v1*v3+v1*v4^2*v2) (v*v1*9.8*v4+v1^2*9.8*v4-v2*v3) v1*9.8*v4*v2];
    c1=step(num2,den2,t);
    plot(handles.axes2,t,c1*0);
    axes(handles.axes2);
end

case 'Escalón'
       error=0;
set(handles.text7,'string','  ');
v=str2double(get(handles.edit1,'string'));
v1=str2double(get(handles.edit2,'string'));
v2=str2double(get(handles.edit3,'string'));
v3=str2double(get(handles.edit4,'string'));
v4=str2double(get(handles.edit5,'string'));
a= str2double(get(handles.edit8,'string'));
b= str2double(get(handles.edit9,'string'));
c= str2double(get(handles.edit7,'string'));
z = isnan(v);
z1 = isnan(v1); 
z2 = isnan(v2); 
z3 = isnan(v3); 
z4 = isnan(v4); 

if z==1
set(handles.text7,'string','Error definiendo masa');
elseif z1==1
set(handles.text7,'string','Error definiendo masa');
elseif z2==1
set(handles.text7,'string','Error definiendo fricción');
elseif z3==1
set(handles.text7,'string','Error definiendo fricción');
elseif z4==1
set(handles.text7,'string','Error definiendo longitud');
else
    if v<0 || v1<0 || v2<0 || v3<0 || v4<0
    set(handles.text7,'string','Números no pueden ser negativos');   
    elseif a>=c || b<=0 || b>c
    set(handles.text7,'string','Error definiendo vector de tiempo');    
    error=1;
    else   
    error=0;
    end
end
if error==0;
    set(handles.text7,'string','     ');
    
    num1=[0 0 -v1*v4^2 -v3  v1*9.8*v4];
    den1=[-v*v1*v4^2 -v3*v-v3*v1-v2*v1*v4^2 v*v1*9.8*v4+v1^2*v4*9.8-v2*v3 9.8*v2*v1*v4 0];
    t =[a:b:c];
    c=step(num1,den1,t);
    plot(handles.axes1,t,c);
    axes(handles.axes1);
    
    num2=[0 0 v1*v4 0];
    den2=[-v*v1*v4^2 -(v*v3+v1*v3+v1*v4^2*v2) (v*v1*9.8*v4+v1^2*9.8*v4-v2*v3) v1*9.8*v4*v2];
    c1=step(num2,den2,t);
    plot(handles.axes2,t,c1);
    axes(handles.axes2);
end

case 'Rampa'
       error=0;
set(handles.text7,'string','  ');
v=str2double(get(handles.edit1,'string'));
v1=str2double(get(handles.edit2,'string'));
v2=str2double(get(handles.edit3,'string'));
v3=str2double(get(handles.edit4,'string'));
v4=str2double(get(handles.edit5,'string'));
a= str2double(get(handles.edit8,'string'));
b= str2double(get(handles.edit9,'string'));
c= str2double(get(handles.edit7,'string'));
z = isnan(v);
z1 = isnan(v1); 
z2 = isnan(v2); 
z3 = isnan(v3); 
z4 = isnan(v4); 

if z==1
set(handles.text7,'string','Error definiendo masa');
elseif z1==1
set(handles.text7,'string','Error definiendo masa');
elseif z2==1
set(handles.text7,'string','Error definiendo fricción');
elseif z3==1
set(handles.text7,'string','Error definiendo fricción');
elseif z4==1
set(handles.text7,'string','Error definiendo longitud');
else
    if v<0 || v1<0 || v2<0 || v3<0 || v4<0
    set(handles.text7,'string','Números no pueden ser negativos');   
    elseif a>=c || b<=0 || b>c
    set(handles.text7,'string','Error definiendo vector de tiempo');    
    error=1;
    else   
    error=0;
    end
end
if error==0;
    set(handles.text7,'string','     ');
    num1=[0 0 0 -v1*v4^2 -v3  v1*9.8*v4];
    den1=[-v*v1*v4^2 -v3*v-v3*v1-v2*v1*v4^2 v*v1*9.8*v4+v1^2*v4*9.8-v2*v3 9.8*v2*v1*v4 0 0];
    t =[a:b:c];
    c=step(num1,den1,t);
    plot(handles.axes1,t,c);
    axes(handles.axes1);
    
    num2=[0 0 0 v1*v4 0];
    den2=[-v*v1*v4^2 -(v*v3+v1*v3+v1*v4^2*v2) (v*v1*9.8*v4+v1^2*9.8*v4-v2*v3) v1*9.8*v4*v2 0];
    c1=step(num2,den2,t);
    plot(handles.axes2,t,c1);
    axes(handles.axes2);
    
end
end


% --- Executes during object creation, after setting all properties.
function uipanel3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
