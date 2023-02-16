function varargout = Discreto(varargin)
% DISCRETO MATLAB code for Discreto.fig
%      DISCRETO, by itself, creates a new DISCRETO or raises the existing
%      singleton*.
%
%      H = DISCRETO returns the handle to a new DISCRETO or the handle to
%      the existing singleton*.
%
%      DISCRETO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISCRETO.M with the given input arguments.
%
%      DISCRETO('Property','Value',...) creates a new DISCRETO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Discreto_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Discreto_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Discreto

% Last Modified by GUIDE v2.5 26-Aug-2021 15:49:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Discreto_OpeningFcn, ...
                   'gui_OutputFcn',  @Discreto_OutputFcn, ...
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


% --- Executes just before Discreto is made visible.
function Discreto_OpeningFcn(hObject, eventdata, handles, varargin)
movegui('center');

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Discreto (see VARARGIN)

% Choose default command line output for Discreto
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
handles.puntos = line(0, 0);
handles.linea = line(0, 0);
handles.circulos = line(0, 0);
% UIWAIT makes Discreto wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Discreto_OutputFcn(hObject, eventdata, handles) 
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
      axes(handles.axes6);
      box on;
      set(handles.text8,'string','Box Activado');
    else
      axes(handles.axes2); 
	  box off;
      axes(handles.axes3);
      box off;
      axes(handles.axes6);
      box off;
      set(handles.text8,'string','Box Desactivado');
	end

% Hint: get(hObject,'Value') returns toggle state of checkbox1

% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
valor=get(hObject,'value');
if valor == 1
    axes(handles.axes2);
    grid on;
    axes(handles.axes3);
    grid on;
    axes(handles.axes6);
    grid on;
    set(handles.text8,'string','Grid Activado');
else
    axes(handles.axes2);
    grid off;
    axes(handles.axes3);
    grid off;
    axes(handles.axes6);
    grid off;
    set(handles.text8,'string','Grid Desactivado');
end

% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
salir=questdlg('Desea salir?','Salir','Si','No','No');
switch salir
case 'Si'
    close Discreto;
case 'No'
    return
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close Discreto;
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
        v=str2double(get(handles.edit6,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit4,'string'));
        n =[a:b];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
        stem(handles.axes3,n,(x+y)*0);
        axes(handles.axes3);
        grid on;
        box on;
        set(handles.text8,'string','Funciones Graficadas');
        set(handles.text13,'string','  ');
        elseif error == 1
        set(handles.text8,'string','Error definiendo x[n]');
        elseif error ==2
        set(handles.text8,'string','Error definiendo y[n]')
        elseif error == 3
        set(handles.text8,'string','Error definiendo n');
        elseif error == 4
        set(handles.text8,'string','Error definiendo constante');
        end
        
        case 'Escalamiento'
        set(findall(handles.uipanel2, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit6,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit4,'string'));
        n =[a:abs(v):b];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
        stem(handles.axes3,(n*1/abs(v))-(mod((n*1/abs(v)),1)),x);
        axes(handles.axes3);
        grid on;
        box on;
        set(handles.text8,'string','Funciones Graficadas');
        set(handles.text13,'string','x[n*(1/c)]');
        elseif error == 1
        set(handles.text8,'string','Error definiendo x[n]');
        elseif error ==2
        set(handles.text8,'string','Error definiendo y[n]')
        elseif error == 3
        set(handles.text8,'string','Error definiendo n');
        elseif error == 4
        set(handles.text8,'string','Error definiendo constante');
        end
        
    case 'Reflexión'
        set(findall(handles.uipanel2, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit6,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit4,'string'));
        n =[a:b];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
        stem(handles.axes3,-1*n,x);
        axes(handles.axes3);
        grid on;
        box on;
        set(handles.text8,'string','Funciones Graficadas');
        set(handles.text13,'string','x[-n]');
        elseif error == 1
        set(handles.text8,'string','Error definiendo x[n]');
        elseif error ==2
        set(handles.text8,'string','Error definiendo y[n]')
        elseif error == 3
        set(handles.text8,'string','Error definiendo n');
        elseif error == 4
        set(handles.text8,'string','Error definiendo constante');
        end
        
    case 'Corrimiento'
        set(findall(handles.uipanel2, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit6,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit4,'string'));
        n =[a:b];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
        stem(handles.axes3,(n-v),x);
        axes(handles.axes3);
        grid on;
        box on;
        set(handles.text8,'string','Funciones Graficadas');
        set(handles.text13,'string','x[n+c]');
        elseif error == 1
        set(handles.text8,'string','Error definiendo x[n]');
        elseif error ==2
        set(handles.text8,'string','Error definiendo y[n]')
        elseif error == 3
        set(handles.text8,'string','Error definiendo n');
        elseif error == 4
        set(handles.text8,'string','Error definiendo constante');
        end
    
end



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
error=0;
v=str2double(get(handles.edit6,'string'));
a= str2double(get(handles.edit3,'string'));
b= str2double(get(handles.edit4,'string'));
n =[a:b];
eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
      stem(handles.axes2,n,x);
      axes(handles.axes2);
        grid on;
        box on;
      stem(handles.axes6,n,y);
      axes(handles.axes6);
        grid on;
        box on;
      set(handles.text8,'string','Funciones Graficadas');
	elseif error == 1
	  set(handles.text8,'string','Error definiendo x[n]');
    elseif error ==2
      set(handles.text8,'string','Error definiendo y[n]')
	elseif error == 3
	  set(handles.text8,'string','Error definiendo n');
      elseif error == 4
	  set(handles.text8,'string','Error definiendo constante');
    end

   


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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
        v=str2double(get(handles.edit6,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit4,'string'));
        n =[a:b];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
        stem(handles.axes3,n,(x+y)*0);
        axes(handles.axes3);
        grid on;
        box on;
        set(handles.text8,'string','Funciones Graficadas');
        set(handles.text13,'string','  ');
        elseif error == 1
        set(handles.text8,'string','Error definiendo x[n]');
        elseif error ==2
        set(handles.text8,'string','Error definiendo y[n]')
        elseif error == 3
        set(handles.text8,'string','Error definiendo n');
        elseif error == 4
        set(handles.text8,'string','Error definiendo constante');
        end
        
    case 'Suma'
        set(findall(handles.uipanel1, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit6,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit4,'string'));
        n =[a:b];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
        stem(handles.axes3,n,(x+y));
        axes(handles.axes3);
        grid on;
        box on;
        set(handles.text8,'string','Funciones Graficadas');
        set(handles.text13,'string','x[n]+y[n]');
        elseif error == 1
        set(handles.text8,'string','Error definiendo x[n]');
        elseif error ==2
        set(handles.text8,'string','Error definiendo y[n]')
        elseif error == 3
        set(handles.text8,'string','Error definiendo n');
        elseif error == 4
        set(handles.text8,'string','Error definiendo constante');
        end
        
    case 'Resta'
        set(findall(handles.uipanel1, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit6,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit4,'string'));
        n =[a:b];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
        stem(handles.axes3,n,(x-y));
        axes(handles.axes3);
        grid on;
        box on;
        set(handles.text8,'string','Funciones Graficadas');
        set(handles.text13,'string','x[n]-y[n]');
        elseif error == 1
        set(handles.text8,'string','Error definiendo x[n]');
        elseif error ==2
        set(handles.text8,'string','Error definiendo y[n]')
        elseif error == 3
        set(handles.text8,'string','Error definiendo n');
        elseif error == 4
        set(handles.text8,'string','Error definiendo constante');
        end
        
       case 'Multiplicación'
        set(findall(handles.uipanel1, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit6,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit4,'string'));
        n =[a:b];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
        stem(handles.axes3,n,(x.*y));
        axes(handles.axes3);
        grid on;
        box on;
        set(handles.text8,'string','Funciones Graficadas');
        set(handles.text13,'string','x[n]*y[n]');
        elseif error == 1
        set(handles.text8,'string','Error definiendo x[n]');
        elseif error ==2
        set(handles.text8,'string','Error definiendo y[n]')
        elseif error == 3
        set(handles.text8,'string','Error definiendo n');
        elseif error == 4
        set(handles.text8,'string','Error definiendo constante');
        end 
        
    case 'Escalamiento'
        set(findall(handles.uipanel1, '-property', 'enable'), 'enable', 'off')
        error=0;
        v=str2double(get(handles.edit6,'string'));
        a= str2double(get(handles.edit3,'string'));
        b= str2double(get(handles.edit4,'string'));
        n =[a:b];
        eval(['x = ' get(handles.edit1,'string') ';'],'error=1;')
        eval(['y = ' get(handles.edit2,'string') ';'],'error=2;')
        w = isnan(n); 	 
        if a>=b
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
        stem(handles.axes3,n,(v*x));
        axes(handles.axes3);
        grid on;
        box on;
        set(handles.text8,'string','Funciones Graficadas');
        set(handles.text13,'string','c*x[n]');
        elseif error == 1
        set(handles.text8,'string','Error definiendo x[n]');
        elseif error ==2
        set(handles.text8,'string','Error definiendo y[n]')
        elseif error == 3
        set(handles.text8,'string','Error definiendo n');
        elseif error == 4
        set(handles.text8,'string','Error definiendo constante');
        end
        
end
    


% --------------------------------------------------------------------
function Ayuda_Callback(hObject, eventdata, handles)
% hObject    handle to Ayuda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('SA&PT User Guide 2.0.pdf')


% --------------------------------------------------------------------
function uitoggletool4_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[x,y]=ginput;
handles.puntos = line(x, y, 'color', 'red', 'LineStyle', 'none', 'Marker', '+');
guidata(hObject,handles);


% --------------------------------------------------------------------
function uitoggletool4_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.puntos);


% --------------------------------------------------------------------
function uitoggletool5_OnCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[x,y]=ginput;
handles.linea = line(x, y, 'color', 'r');
guidata(hObject,handles);


% --------------------------------------------------------------------
function uitoggletool5_OffCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool5 (see GCBO)
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
P = copyobj(handles.axes3, fh);
F=getframe(P);
ima=frame2im(F);
