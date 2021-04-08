clearvars

vid = videoinput('winvideo', 1, 'RGB24_1920x1080');
% src = getselectedsource(vid);

% vid.FramesPerTrigger = 1;
% vid.TriggerRepeat = 100;
start(vid);
% I = getdata(vid);

hPV = preview(vid);
hFPV = ancestor(hPV, 'Figure');
hFPV.Visible = 'off';
% 
hF = figure(99); clf
hA = axes('parent', hF);
hI = imshow([], 'parent', hA);
axis on tight

tic
for n = 1:100
    pause(1/4);
%     star

hI.CData = hPV.CData;

%     hI.CData = getdata(vid);
%     hI.CData = getsnapshot(vid);
end
toc
stop(vid);
delete(vid)