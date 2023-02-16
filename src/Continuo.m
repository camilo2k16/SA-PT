function varargout = Continuo(varargin)
% CONTINUO MATLAB code for Continuo.fig
%      CONTINUO, by itself, creates a new CONTINUO or raises the existing
%      singleton*.
%
%      H = CONTINUO returns the handle to a new CONTINUO or the handle to
%      the existing singleton*.
%
%      CONTINUO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTINUO.M with the given input arguments.
%
%      CONTINUO('Property','Value',...) creates a new CONTINUO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Continuo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Continuo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Continuo

% Last Modified by GUIDE v2.5 02-Nov-2021 23:15:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Continuo_OpeningFcn, ...
                   'gui_OutputFcn',  @Continuo_OutputFcn, ...
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


% --- Executes just before Continuo is made visible.
function Continuo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Continuo (see VARARGIN)
movegui('center');

% Choose default command line output for Continuo
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
handles.puntos = line(0, 0);
handles.linea = line(0, 0);
handles.circulos = line(0, 0);
% UIWAIT makes Continuo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Continuo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
estado = get(hObject,'value');
	if estado == 1
      axes(handles.axes2); 
	  box on;
      axes(handles.axes3);
      box on;
      axes(handles.axes1);
      box on;
      set(handles.text6,'string','Box Activado');
    else
      axes(handles.axes2); 
	  box off;
      axes(handles.axes3);
      box off;
      axes(handles.axes1);
      box off;
      set(handles.text6,'string','Box Desactivado');
	end

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valor=get(hObject,'value');
if valor == 1
    axes(handles.axes2);
    grid on;
    axes(handles.axes3);
    grid on;
    axes(handles.axes1);
    grid on;
    set(handles.text6,'string','Grid Activado');
else
    axes(handles.axes2);
    grid off;
    axes(handles.axes3);
    grid off;
    axes(handles.axes1);
    grid off;
    set(handles.text6,'string','Grid Desactivado');
end

% Hint: get(hObject,'Value') returns toggle state of checkbox2



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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
salir=questdlg('Desea salir?','Salir','Si','No','No');
switch salir
case 'Si'
    close Continuo;
case 'No'
    return
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Continuo;
Menu;



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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
error=0;
v=str2double(get(handles.edit5,'string'));
a= str2double(get(handles.edit3,'string'));
b= str2double(get(handles.edit6,'string'));
c= str2double(get(handles.edit4,'string'));
t =[a:b:c];
eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(t); 	 
        if a>=c || b<0
            error=3;
        end
        if w == 1 
            error=3;
        end
         z = isnan(v); 
        if z == 1 
            error=4;
        end
    if error == 0
      set(handles.checkbox1,'value',1);
      set(handles.checkbox2,'value',1);
      plot(handles.axes2,t,x);
      axes(handles.axes2);
        grid on;
        box on;
      plot(handles.axes3,t,y);
      axes(handles.axes3);
        grid on;
        box on;
      set(handles.text6,'string','Funciones Graficadas');
	elseif error == 1
	  set(handles.text6,'string','Error definiendo x(t)');
    elseif error ==2
      set(handles.text6,'string','Error definiendo y(t)')
	elseif error == 3
	  set(handles.text6,'string','Error definiendo t');
      elseif error == 4
	  set(handles.text6,'string','Error definiendo constante');
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



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uipanel2.
function uipanel2_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel2 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
A = get(hObject,'string');
switch A
    case 'Ninguno'
       set(findall(handles.uipanel1, '-property', 'enable'), 'enable', 'on')
        error=0;
        v=str2double(get(handles.edit5,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit6,'string'));
        c= str2double(get(handles.edit4,'string'));
        t =[a:b:c];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        if a>=c || b<0
            error=3;
        end
        w = isnan(t); 	 
        if w == 1 
            error=3;
        end
        z = isnan(v); 
        if z == 1 
            error=4;
        end
        if error == 0
        plot(handles.axes1,t,(x+y)*0);
        axes(handles.axes1);
        grid on;
        box on;
        set(handles.text6,'string','Funciones Graficadas');
        set(handles.text11,'string','  ');
        elseif error == 1
        set(handles.text6,'string','Error definiendo x(t)');
        elseif error ==2
        set(handles.text6,'string','Error definiendo y(t)')
        elseif error == 3
        set(handles.text6,'string','Error definiendo t');
        elseif error == 4
        set(handles.text6,'string','Error definiendo constante');
        end
        
    case 'Suma'
        set(findall(handles.uipanel1, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit5,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit6,'string'));
        c= str2double(get(handles.edit4,'string'));
        t =[a:b:c];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(t); 	 
        if a>=c || b<0
            error=3;
        end
        if w == 1 
            error=3;
        end
        z = isnan(v); 
        if z == 1 
            error=4;
        end
        if error == 0
        plot(handles.axes1,t,(x+y));
        axes(handles.axes1);
        grid on;
        box on;
        set(handles.text6,'string','Funciones Graficadas');
        set(handles.text11,'string','x(t)+y(t)');
        elseif error == 1
        set(handles.text6,'string','Error definiendo x(t)');
        elseif error ==2
        set(handles.text6,'string','Error definiendo y(t)')
        elseif error == 3
        set(handles.text6,'string','Error definiendo t');
        elseif error == 4
        set(handles.text6,'string','Error definiendo constante');
        end
        
    case 'Resta'
         set(findall(handles.uipanel1, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit5,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit6,'string'));
        c= str2double(get(handles.edit4,'string'));
        t =[a:b:c];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(t); 	 
        if a>=c || b<0
            error=3;
        end
        if w == 1 
            error=3;
        end
        z = isnan(v); 
        if z == 1 
            error=4;
        end
        if error == 0
        plot(handles.axes1,t,(x-y));
        axes(handles.axes1);
        grid on;
        box on;
        set(handles.text6,'string','Funciones Graficadas');
        set(handles.text11,'string','x(t)-y(t)');
        elseif error == 1
        set(handles.text6,'string','Error definiendo x(t)');
        elseif error ==2
        set(handles.text6,'string','Error definiendo y(t)')
        elseif error == 3
        set(handles.text6,'string','Error definiendo t');
        elseif error == 4
        set(handles.text6,'string','Error definiendo constante');
        end
        
       case 'Multiplicación'
        set(findall(handles.uipanel1, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit5,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit6,'string'));
        c= str2double(get(handles.edit4,'string'));
        t =[a:b:c];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(t); 	 
        if a>=c || b<0
            error=3;
        end
        if w == 1 
            error=3;
        end
        z = isnan(v);
        if z == 1 
            error=4;
        end
        if error == 0
        plot(handles.axes1,t,(x.*y));
        axes(handles.axes1);
        grid on;
        box on;
        set(handles.text6,'string','Funciones Graficadas');
        set(handles.text11,'string','x(t)*y(t)');
        elseif error == 1
        set(handles.text6,'string','Error definiendo x(t)');
        elseif error ==2
        set(handles.text6,'string','Error definiendo y(t)')
        elseif error == 3
        set(handles.text6,'string','Error definiendo t');
        elseif error == 4
        set(handles.text6,'string','Error definiendo constante');
        end
        
    case 'Escalamiento'
        set(findall(handles.uipanel1, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit5,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit6,'string'));
        c= str2double(get(handles.edit4,'string'));
        t =[a:b:c];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(t); 	 
        if a>=c || b<0
            error=3;
        end
        if w == 1 
            error=3;
        end
        z = isnan(v); 
        if z == 1 
            error=4;
        end
        if error == 0
        plot(handles.axes1,t,(v*x));
        axes(handles.axes1);
        grid on;
        box on;
        set(handles.text6,'string','Funciones Graficadas');
        set(handles.text11,'string','c*x(t)');
        elseif error == 1
        set(handles.text6,'string','Error definiendo x(t)');
        elseif error ==2
        set(handles.text6,'string','Error definiendo y(t)')
        elseif error == 3
        set(handles.text6,'string','Error definiendo t');
        elseif error == 4
        set(handles.text6,'string','Error definiendo constante');
        end
        
end


% --- Executes when selected object is changed in uipanel1.
function uipanel1_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel1 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
B= get(hObject,'string');
switch B
    case 'Ninguno'
        set(findall(handles.uipanel2, '-property', 'enable'), 'enable', 'on')
        error=0;
        v=str2double(get(handles.edit5,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit6,'string'));
        c= str2double(get(handles.edit4,'string'));
        t =[a:b:c];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(t); 	 
        if a>=c || b<0
            error=3;
        end
        if w == 1 
            error=3;
        end
        z = isnan(v); 
        if z == 1 
            error=4;
        end
        if error == 0
        plot(handles.axes1,t,(x+y)*0);
        axes(handles.axes1);
        grid on;
        box on;
        set(handles.text6,'string','Funciones Graficadas');
        set(handles.text11,'string','  ');
        elseif error == 1
        set(handles.text6,'string','Error definiendo x(t)');
        elseif error ==2
        set(handles.text6,'string','Error definiendo y(t)')
        elseif error == 3
        set(handles.text6,'string','Error definiendo t');
        elseif error == 4
        set(handles.text6,'string','Error definiendo constante');
        end
        
        case 'Escalamiento'
        set(findall(handles.uipanel2, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit5,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit6,'string'));
        c= str2double(get(handles.edit4,'string'));
        t =[a:b:c];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(t); 	 
        if a>=c || b<0
            error=3;
        end
        if w == 1 
            error=3;
        end
        z = isnan(v); 
        if z == 1 
            error=4;
        end
        if error == 0    
        plot(handles.axes1,(t/v),x);
        axes(handles.axes1);
        grid on;
        box on;
        set(handles.text6,'string','Funciones Graficadas');
        set(handles.text11,'string','x(t*(1/c))');
        elseif error == 1
        set(handles.text6,'string','Error definiendo x(t)');
        elseif error ==2
        set(handles.text6,'string','Error definiendo y(t)')
        elseif error == 3
        set(handles.text6,'string','Error definiendo t');
        elseif error == 4
        set(handles.text6,'string','Error definiendo constante');
        end
        
    case 'Reflexión'
        set(findall(handles.uipanel2, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit5,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit6,'string'));
        c= str2double(get(handles.edit4,'string'));
        t =[a:b:c];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(t); 	 
        if a>=c || b<0
            error=3;
        end
        if w == 1 
            error=3;
        end
        z = isnan(v); 
        if z == 1 
            error=4;
        end
        if error == 0    
        plot(handles.axes1,-1*t,x);
        axes(handles.axes1);
        grid on;
        box on;
        set(handles.text6,'string','Funciones Graficadas');
        set(handles.text11,'string','x(-t)');
        elseif error == 1
        set(handles.text6,'string','Error definiendo x(t)');
        elseif error ==2
        set(handles.text6,'string','Error definiendo y(t)')
        elseif error == 3
        set(handles.text6,'string','Error definiendo t');
        elseif error == 4
        set(handles.text6,'string','Error definiendo constante');
        end
     
        
    case 'Corrimiento'
        set(findall(handles.uipanel2, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit5,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit6,'string'));
        c= str2double(get(handles.edit4,'string'));
        t =[a:b:c];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(t); 	 
        if a>=c || b<0
            error=3;
        end
        if w == 1 
            error=3;
        end
        z = isnan(v); 
        if z == 1 
            error=4;
        end
        if error == 0    
        plot(handles.axes1,(t-v),x);
        axes(handles.axes1);
        grid on;
        box on;
        set(handles.text6,'string','Funciones Graficadas');
        set(handles.text11,'string','x(t+c)');
        elseif error == 1
        set(handles.text6,'string','Error definiendo x(t)');
        elseif error ==2
        set(handles.text6,'string','Error definiendo y(t)')
        elseif error == 3
        set(handles.text6,'string','Error definiendo t');
        elseif error == 4
        set(handles.text6,'string','Error definiendo constante');
        end
     
        
end


% --------------------------------------------------------------------
function Ayuda_Callback(hObject, eventdata, handles)
% hObject    handle to Ayuda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('SA&PT User Guide 2.0.pdf');


% --------------------------------------------------------------------
function uitoggletool5_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool5 (see GCBO)
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
delete(handles.puntos);


% --------------------------------------------------------------------
function uitoggletool4_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[x,y]=ginput;
handles.linea = line(x, y, 'color', 'r');
guidata(hObject,handles);


% --------------------------------------------------------------------
function uitoggletool4_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.linea);


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
function uitoggletool6_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.circulos);


% --------------------------------------------------------------------
function uipushtool1_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fh = figure;
P = copyobj(handles.axes1, fh);
F=getframe(P);
ima1=frame2im(F);


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes during object creation, after setting all properties.
function uipanel12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
v=get(handles.radiobutton1,'Value');
v2=get(handles.radiobutton2,'Value');

x1=get(handles.axes1,'XGrid');
x2=get(handles.axes1,'XMinorGrid');
y1=get(handles.axes1,'YGrid');
y2=get(handles.axes1,'YMinorGrid');
z1=get(handles.axes1,'ZGrid');
z2=get(handles.axes1,'ZMinorGrid');
s1=get(handles.axes1,'GridLineStyle');
s2=get(handles.axes1,'MinorGridLineStyle');
c1=get(handles.axes1,'GridColor');
c2=get(handles.axes1,'MinorGridColor');
a1=get(handles.axes1,'GridAlpha');
a2=get(handles.axes1,'MinorGridAlpha');
m1=get(handles.axes1,'GridColorMode');
m2=get(handles.axes1,'MinorGridColorMode');
m3=get(handles.axes1,'GridAlphaMode');
m4=get(handles.axes1,'MinorGridAlphaMode');
c=get(handles.axes1,'Color');
lw=get(handles.axes1,'LineWidth');
b=get(handles.axes1,'Box');
bs=get(handles.axes1,'BoxStyle');
clip=get(handles.axes1,'Clipping');
clipS=get(handles.axes1,'ClippingStyle');
alc=get(handles.axes1,'AmbientLightColor');
l=get(handles.axes1,'Layer');
xlim=get(handles.axes1,'XLim');
ylim=get(handles.axes1,'YLim');
zlim=get(handles.axes1,'ZLim');
xal=get(handles.axes1,'XAxisLocation');
yal=get(handles.axes1,'YAxisLocation');
xlimM=get(handles.axes1,'XLimMode');
ylimM=get(handles.axes1,'YLimMode');
zlimM=get(handles.axes1,'ZLimMode');
xc=get(handles.axes1,'XColor');
yc=get(handles.axes1,'YColor');
zc=get(handles.axes1,'ZColor');
xcm=get(handles.axes1,'XColorMode');
ycm=get(handles.axes1,'YColorMode');
zcm=get(handles.axes1,'ZColorMode');
xd=get(handles.axes1,'XDir');
yd=get(handles.axes1,'YDir');
zd=get(handles.axes1,'ZDir');
xe=get(handles.axes1,'XScale');
ye=get(handles.axes1,'YScale');
ze=get(handles.axes1,'ZScale');
st=get(handles.axes1,'LabelFontSizeMultiplier');
stl=get(handles.axes1,'TitleFontSizeMultiplier');

if v==1
    plot(handles.x,handles.y,'LineWidth',1.5);
    set(handles.text5,'Visible','off');
    set(handles.zg,'Visible','off');
    set(handles.mzg,'Visible','off');
    set(handles.axes1,'XGrid',x1);
    set(handles.axes1,'XMinorGrid',x2);
    set(handles.axes1,'YGrid',y1);
    set(handles.axes1,'YMinorGrid',y2);
    set(handles.axes1,'ZGrid',z1);
    set(handles.axes1,'ZMinorGrid',z2);
    set(handles.axes1,'GridLineStyle',s1);
    set(handles.axes1,'MinorGridLineStyle',s2);
    set(handles.axes1,'GridColor',c1);
    set(handles.axes1,'MinorGridColor',c2);
    set(handles.axes1,'GridAlpha',a1);
    set(handles.axes1,'MinorGridAlpha',a2);
    set(handles.axes1,'GridColorMode',m1);
    set(handles.axes1,'MinorGridColorMode',m2);
    set(handles.axes1,'GridAlphaMode',m3);
    set(handles.axes1,'MinorGridAlphaMode',m4);
    set(handles.axes1,'Color',c);
    set(handles.axes1,'LineWidth',lw);
    set(handles.axes1,'Box',b);
    set(handles.axes1,'BoxStyle',bs);
    set(handles.axes1,'Clipping',clip);
    set(handles.axes1,'ClippingStyle',clipS);
    set(handles.axes1,'AmbientLightColor',alc);
    set(handles.axes1,'Layer',l);
    set(handles.axes1,'XLim',xlim);
    set(handles.axes1,'YLim',ylim);
    set(handles.axes1,'ZLim',zlim);
    set(handles.axes1,'XAxisLocation',xal);
    set(handles.axes1,'YAxisLocation',yal);
    set(handles.axes1,'XLimMode',xlimM);
    set(handles.axes1,'YLimMode',ylimM);
    set(handles.axes1,'ZLimMode',zlimM);
    set(handles.axes1,'XColor',xc);
    set(handles.axes1,'YColor',yc);
    set(handles.axes1,'ZColor',zc);
    set(handles.axes1,'XColorMode',xcm);
    set(handles.axes1,'YColorMode',ycm);
    set(handles.axes1,'ZColorMode',zcm);
    set(handles.axes1,'XDir',xd);
    set(handles.axes1,'YDir',yd);
    set(handles.axes1,'ZDir',zd);
    set(handles.axes1,'XScale',xe);
    set(handles.axes1,'YScale',ye);
    set(handles.axes1,'ZScale',ze);
    set(handles.axes1,'LabelFontSizeMultiplier',st);
    set(handles.axes1,'TitleFontSizeMultiplier',stl);
end
if v2==1
    surf(peaks);
    set(handles.text5,'Visible','on');
    set(handles.zg,'Visible','on');
    set(handles.mzg,'Visible','on');
    set(handles.axes1,'XGrid',x1);
    set(handles.axes1,'XMinorGrid',x2);
    set(handles.axes1,'YGrid',y1);
    set(handles.axes1,'YMinorGrid',y2);
    set(handles.axes1,'ZGrid',z1);
    set(handles.axes1,'ZMinorGrid',z2);
     set(handles.axes1,'GridLineStyle',s1);
    set(handles.axes1,'MinorGridLineStyle',s2);
    set(handles.axes1,'GridColor',c1);
    set(handles.axes1,'MinorGridColor',c2);
    set(handles.axes1,'GridAlpha',a1);
    set(handles.axes1,'MinorGridAlpha',a2);
    set(handles.axes1,'GridColorMode',m1);
    set(handles.axes1,'MinorGridColorMode',m2);
    set(handles.axes1,'GridAlphaMode',m3);
    set(handles.axes1,'MinorGridAlphaMode',m4);
    set(handles.axes1,'Color',c);
    set(handles.axes1,'LineWidth',lw);
    set(handles.axes1,'Box',b);
    set(handles.axes1,'BoxStyle',bs);
    set(handles.axes1,'Clipping',clip);
    set(handles.axes1,'ClippingStyle',clipS);
    set(handles.axes1,'AmbientLightColor',alc);
    set(handles.axes1,'Layer',l);
    set(handles.axes1,'XLim',xlim);
    set(handles.axes1,'YLim',ylim);
    set(handles.axes1,'ZLim',zlim);
    set(handles.axes1,'XAxisLocation',xal);
    set(handles.axes1,'YAxisLocation',yal);
    set(handles.axes1,'XLimMode',xlimM);
    set(handles.axes1,'YLimMode',ylimM);
    set(handles.axes1,'ZLimMode',zlimM);
    set(handles.axes1,'XColorMode',xcm);
    set(handles.axes1,'YColorMode',ycm);
    set(handles.axes1,'ZColorMode',zcm);
    set(handles.axes1,'XColor',xc);
    set(handles.axes1,'YColor',yc);
    set(handles.axes1,'ZColor',zc);
    set(handles.axes1,'XDir',xd);
    set(handles.axes1,'YDir',yd);
    set(handles.axes1,'ZDir',zd);
    set(handles.axes1,'XScale',xe);
    set(handles.axes1,'YScale',ye);
    set(handles.axes1,'ZScale',ze);
    set(handles.axes1,'LabelFontSizeMultiplier',st);
    set(handles.axes1,'TitleFontSizeMultiplier',stl);
end
guidata(handles.axes1,handles);


% --- Executes on button press in xg.
function xg_Callback(hObject, eventdata, handles)
% hObject    handle to xg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of xg


% --- Executes on button press in yg.
function yg_Callback(hObject, eventdata, handles)
% hObject    handle to yg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of yg


% --- Executes on button press in zg.
function zg_Callback(hObject, eventdata, handles)
% hObject    handle to zg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of zg


% --- Executes on button press in mxg.
function mxg_Callback(hObject, eventdata, handles)
% hObject    handle to mxg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mxg


% --- Executes on button press in myg.
function myg_Callback(hObject, eventdata, handles)
% hObject    handle to myg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of myg


% --- Executes on button press in mzg.
function mzg_Callback(hObject, eventdata, handles)
% hObject    handle to mzg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of mzg


% --- Executes on selection change in gs.
function gs_Callback(hObject, eventdata, handles)
% hObject    handle to gs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns gs contents as cell array
%        contents{get(hObject,'Value')} returns selected item from gs


% --- Executes during object creation, after setting all properties.
function gs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gc_Callback(hObject, eventdata, handles)
% hObject    handle to gc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gc as text
%        str2double(get(hObject,'String')) returns contents of gc as a double


% --- Executes during object creation, after setting all properties.
function gc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in mgs.
function mgs_Callback(hObject, eventdata, handles)
% hObject    handle to mgs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns mgs contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mgs


% --- Executes during object creation, after setting all properties.
function mgs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mgs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mgc_Callback(hObject, eventdata, handles)
% hObject    handle to mgc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mgc as text
%        str2double(get(hObject,'String')) returns contents of mgc as a double


% --- Executes during object creation, after setting all properties.
function mgc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mgc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in gm.
function gm_Callback(hObject, eventdata, handles)
% hObject    handle to gm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns gm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from gm


% --- Executes during object creation, after setting all properties.
function gm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in mgm.
function mgm_Callback(hObject, eventdata, handles)
% hObject    handle to mgm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns mgm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mgm


% --- Executes during object creation, after setting all properties.
function mgm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mgm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in agm.
function agm_Callback(hObject, eventdata, handles)
% hObject    handle to agm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns agm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from agm


% --- Executes during object creation, after setting all properties.
function agm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to agm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in magm.
function magm_Callback(hObject, eventdata, handles)
% hObject    handle to magm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns magm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from magm


% --- Executes during object creation, after setting all properties.
function magm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to magm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function ag_Callback(hObject, eventdata, handles)
% hObject    handle to ag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function ag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function mag_Callback(hObject, eventdata, handles)
% hObject    handle to mag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function mag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in layer.
function layer_Callback(hObject, eventdata, handles)
% hObject    handle to layer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns layer contents as cell array
%        contents{get(hObject,'Value')} returns selected item from layer


% --- Executes during object creation, after setting all properties.
function layer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to layer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
