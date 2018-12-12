
function varargout = proyecto(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @proyecto_OpeningFcn, ...
                   'gui_OutputFcn',  @proyecto_OutputFcn, ...
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

function real_time_camera(handles)
global selection 
global vid
vid = videoinput('winvideo',1);
selection = 1
vid.TriggerRepeat = 100;
vid.FrameGrabInterval = ;
start(vid)
disp("started")
axes(handles.axes1)
det = true;
while(det)
    if selection == 11
        break;
    end
    data = im2double(getdata(vid,1)); 
    [M N O]=size(data);
    switch(selection)
        case 1
            data = data;
        case 2
            data = mynegative(data);
        case 3
            data(:,:,1) = imadjust(data(:,:,1),[],[],0.5);
            data(:,:,2) = imadjust(data(:,:,2),[],[],0.5);
            data(:,:,3) = imadjust(data(:,:,3),[],[],0.5);
        case 4
            data(:,:,1) = myhemi(data(:,:,1),M,N);
            data(:,:,2) = myhemi(data(:,:,2),M,N);
            data(:,:,3) = myhemi(data(:,:,3),M,N);
        case 5
            data = myspectrum(data);
        case 6
            data = imnoise(data,'gaussian');
        case 7
            data = myfreqnoise(data);
        case 8
            data = rot90(data);
        case 9
            data = mygranting(data);
        case 10
            data = mycolorreduction(data);
    end
    imshow(data,[]);
   
end

function proyecto_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
real_time_camera(handles);

function varargout = proyecto_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function original_button_Callback(hObject, eventdata, handles)
global selection
selection = 1;

function negative_button_Callback(hObject, eventdata, handles)
global selection
selection = 2;

function gammafilter_button_Callback(hObject, eventdata, handles)
global selection
selection = 3;

function hemianopsia_button_Callback(hObject, eventdata, handles)
global selection
selection = 4;

function spectrum_button_Callback(hObject, eventdata, handles)
global selection
selection = 5;

function gaussiannoise_button_Callback(hObject, eventdata, handles)
global selection
selection = 6;

function periodicnoise_button_Callback(hObject, eventdata, handles)
global selection
selection = 7;

function rotation_Callback(hObject, eventdata, handles)
global selection
selection = 8;

function grating_button_Callback(hObject, eventdata, handles)
global selection
selection = 9;

function colorreduction_button_Callback(hObject, eventdata, handles)
global selection
selection = 10;

function stop_button_Callback(hObject, eventdata, handles)
global vid
global selection
selection = 11;
stop(vid)
delete(vid)

