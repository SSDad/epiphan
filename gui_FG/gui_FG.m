function gui_FG

global hFig
global stopFG

stopFG = 0;

% global stopSlither
% global reContL
% global contrastRectLim

%% main window

hFig = figure('MenuBar',            'none', ...
                    'Toolbar',              'none', ...
                    'HandleVisibility',  'callback', ...
                    'Name',                ' FG - Department of Radiation Oncology, Washington University in St. Louis', ...
                    'NumberTitle',      'off', ...
                    'Units',                 'normalized',...
                    'Position',             [0.2 0.2 0.6 0.6],...
                    'Color',                 'black', ...
                    'Visible',               'on');
%                     'CloseRequestFcn', @figCloseReq, ...
% addToolbar(hFig);
                
data.Panel = addPanel(hFig);
data.Panel.Menu.Comp = addComponents2Panel_Menu(data.Panel.Menu.hPanel);
% data.Panel.Selection.Comp = addComponents2Panel_Selection(data.Panel.Selection.hPanel);
data.Panel.View.Comp = addComponents2Panel_View(data.Panel.View.hPanel);
% data.Panel.Snake.Comp = addComponents2Panel_Snake(data.Panel.Snake.hPanel);
% data.Panel.Body.Comp = addComponents2Panel_Body(data.Panel.Body.hPanel);
% data.Panel.ContrastBar.Comp = addComponents2Panel_ContrastBar(data.Panel.ContrastBar.hPanel);
% data.Panel.SliceSlider.Comp = addComponents2Panel_SliceSlider(data.Panel.SliceSlider.hPanel);
% 
% data.Panel.Point.Comp = addComponents2Panel_Point(data.Panel.Point.hPanel);
% 
% data.Panel.About.Comp = addComponents2Panel_About(data.Panel.About.hPanel);
% 
% data.FC = [255 255 102]/255;
% data.ActiveAxis.MovePoints = 0;

guidata(hFig, data);

% %% point fig
% hFig2 = figure('MenuBar',            'none', ...
%                     'Toolbar',              'none', ...
%                     'HandleVisibility',  'callback', ...
%                     'Name',                'MAXIM - Diaphragm Measurement', ...
%                     'NumberTitle',      'off', ...
%                     'Units',                 'normalized',...
%                     'Position',             [0.05 0.05 0.9 0.85],...
%                     'Color',                 'black', ...
%                     'CloseRequestFcn', @fig2CloseReq, ...
%                     'Visible',               'off');
% 
% addToolbar(hFig2);
% data2.Panel = addPanel2(hFig2);
% data2.Panel.View.Comp = addComponents2Panel2_View(data2.Panel.View.hPanel);
% data2.Panel.Tumor.Comp = addComponents2Panel2_Tumor(data2.Panel.Tumor.hPanel);
% data2.Panel.Button.Comp = addComponents2Panel2_Button(data2.Panel.Button.hPanel);
% data2.Panel.Button1.Comp = addComponents2Panel2_Button1(data2.Panel.Button1.hPanel);
% data2.Panel.Profile.Comp = addComponents2Panel2_Profile(data2.Panel.Profile.hPanel);
% guidata(hFig2, data2);
%                                
