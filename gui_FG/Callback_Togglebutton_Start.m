function Callback_Togglebutton_Start(src, evnt)

global hFig
global vid hPV
global stopFG
data = guidata(hFig);
if strcmp(src.String, 'Start')
    src.String = 'Stop';
    src.ForegroundColor = 'r';

    vid = videoinput('winvideo', 1, 'RGB24_1920x1080');
    start(vid);
    hPV = preview(vid);
    hFPV = ancestor(hPV, 'Figure');
    hFPV.Visible = 'off';

    hImg = data.Panel.View.Comp.hPlotObj.Image;
    while 1
        hImg.CData = hPV.CData;
        pause(1/4)
        if stopFG
            stopFG = 0;
            break;
        end
    end
        
else
    src.String = 'Start';
    src.ForegroundColor = 'g';
    
    stop(vid);
    delete(vid)
%     closepreview(hPV);
    
    stopFG = 1;
    
end