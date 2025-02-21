## -*- texinfo -*-
## @deftypefn  {} {} dummy()
##
## This is a dummy function documentation. This file have a lot functions
## and each one have a little documentation. This text is to avoid a warning when
## install this file as part of package.
## @end deftypefn
##
## Set the graphics toolkit and force read this file as script file (not a function file).
##
graphics_toolkit qt;
##


##
##
## Begin callbacks definitions 
##

## @deftypefn  {} {} f_slider_doIt (@var{src}, @var{data}, @var{layout})
##
## Define a callback for default action of f_slider control.
##
## @end deftypefn
function f_slider_doIt(src, data, layout)

% This code will be executed when user change the value of slider.
% Por defecto, todos los eventos están desactivdados, para activarlos debe activar
% propertie 'generateCallbck' from the properties editor
end

## @deftypefn  {} {} z_slider_doIt (@var{src}, @var{data}, @var{layout})
##
## Define a callback for default action of z_slider control.
##
## @end deftypefn
function z_slider_doIt(src, data, layout)

% This code will be executed when user change the value of slider.
% Por defecto, todos los eventos están desactivdados, para activarlos debe activar
% propertie 'generateCallbck' from the properties editor
end

## @deftypefn  {} {} r_slider_doIt (@var{src}, @var{data}, @var{layout})
##
## Define a callback for default action of r_slider control.
##
## @end deftypefn
function r_slider_doIt(src, data, layout)

% This code will be executed when user change the value of slider.
% Por defecto, todos los eventos están desactivdados, para activarlos debe activar
% propertie 'generateCallbck' from the properties editor
end

## @deftypefn  {} {} updateGraph01(@var{src}, @var{data}, @var{layout})
##
## Define a callback for default action of callBack_2 control.
##
## @end deftypefn
function updateGraph01(src, data, layout)

% Este código puede definir un callback.
% Debe asociarlo a una figura o control en eventos del tipo "onload" asociados a la ventana de diálogo

# Get Slider Values
dt = 0.001;
f = get(layout.f_slider, 'Value') / 100;
z = get(layout.z_slider, 'Value') / 100;
r = get(layout.r_slider, 'Value') / 100;
rt = get(layout.rt_slider, 'Value') / 100;
limit = str2num(get(layout.limit_val, 'String'));
graphNr = get(layout.graph_cb, 'Value');

# Update numbers
set(layout.f_val, 'String', num2str(f));
set(layout.z_val, 'String', num2str(z));
set(layout.r_val, 'String', num2str(r));
set(layout.rt_val, 'String', num2str(rt));

# Plotting
t = 0:dt:limit;

k1 = z / (pi * f);
k2 = 1 / ((2 * pi * f) * (2 * pi * f));
k3 = r * z / (2 * pi * f);

x0 = 0;
x = zeros(1, length(t));
y = zeros(1, length(t));
osi = floor(rt * ((length(t) - 1) / limit));
if (graphNr == 1)
	x(osi) = 1;
	for i = (osi + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / rt);
	endfor
elseif (graphNr == 2)
	for i = osi:length(t)
		x(i) = 1;
	endfor
elseif (graphNr == 3)
	for i = (osi + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / rt);
	endfor
elseif (graphNr == 4)
	hrt = rt / 2;
	for i = osi:length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
endif

xp = x0;
y(1) = x0;
yd = 0;
for i = 2:length(t)
	xd = (x(i) - xp) / dt;
	xp = x(i);

	k2_stable = max(k2, max(dt*dt/2 + dt*k1/2, dt*k1));
	y(i) = y(i - 1) + dt * yd;
	yd = yd + dt * (x(i) + k3*xd - y(i) - k1*yd) / k2_stable;
endfor

plot(t, x, 'green');
hold on;
plot(t, y, 'blue');
hold off;
axis([0 limit -1 2]);

end

## @deftypefn  {} {} updateGraph02(@var{src}, @var{data}, @var{layout})
##
## Define a callback for default action of callBack_1 control.
##
## @end deftypefn
function updateGraph02(src, data, layout)

% Este código puede definir un callback.
% Debe asociarlo a una figura o control en eventos del tipo "onload" asociados a la ventana de diálogo

# Get Slider Values
dt = 0.001;
f = str2num(get(layout.f_val, 'String'));
z = str2num(get(layout.z_val, 'String'));
r = str2num(get(layout.r_val, 'String'));
rt = str2num(get(layout.rt_val, 'String'));
limit = str2num(get(layout.limit_val, 'String'));
graphNr = get(layout.graph_cb, 'Value');

# Update numbers
set(layout.f_slider, 'Value', f * 100);
set(layout.z_slider, 'Value', z * 100);
set(layout.r_slider, 'Value', r * 100);
set(layout.rt_slider, 'Value', rt * 100);

# Plotting
t = 0:dt:limit;

k1 = z / (pi * f);
k2 = 1 / ((2 * pi * f) * (2 * pi * f));
k3 = r * z / (2 * pi * f);

x0 = 0;
x = zeros(1, length(t));
y = zeros(1, length(t));
osi = floor(rt * ((length(t) - 1) / limit));
if (graphNr == 1)
	x(osi) = 1;
	for i = (osi + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / rt);
	endfor
elseif (graphNr == 2)
	for i = osi:length(t)
		x(i) = 1;
	endfor
elseif (graphNr == 3)
	for i = (osi + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / rt);
	endfor
elseif (graphNr == 4)
	hrt = rt / 2;
	for i = osi:length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = min(1, x(i - 1) + dt / hrt);
		if ((x(i - 1) + dt / rt) >= 1)
			li = i;
			break;
		endif
	endfor
	for i = (li + 1):length(t)
		x(i) = max(0, x(i - 1) - dt / hrt);
		if ((x(i - 1) - dt / rt) <= 0)
			li = i;
			break;
		endif
	endfor
endif

xp = x0;
y(1) = x0;
yd = 0;
for i = 2:length(t)
	xd = (x(i) - xp) / dt;
	xp = x(i);

	k2_stable = max(k2, max(dt*dt/2 + dt*k1/2, dt*k1));
	y(i) = y(i - 1) + dt * yd;
	yd = yd + dt * (x(i) + k3*xd - y(i) - k1*yd) / k2_stable;
endfor

plot(t, x, 'green');
hold on;
plot(t, y, 'blue');
hold off;
axis([0 limit -1 2]);

end

## @deftypefn  {} {} rt_val_doIt (@var{src}, @var{data}, @var{layout})
##
## Define a callback for default action of rt_val control.
##
## @end deftypefn
function rt_val_doIt(src, data, layout)

% This code will be executed when the control lost focus and text has 
% been changed or when press the "enter" key.
% Por defecto, todos los eventos están desactivdados, para activarlos debe activar
% la propiead have callback desde el editor de propiedades
end

## @deftypefn  {} {} rt_slider_doIt (@var{src}, @var{data}, @var{layout})
##
## Define a callback for default action of rt_slider control.
##
## @end deftypefn
function rt_slider_doIt(src, data, layout)

% This code will be executed when user change the value of slider.
% Por defecto, todos los eventos están desactivdados, para activarlos debe activar
% propertie 'generateCallbck' from the properties editor
end

## @deftypefn  {} {} limit_val_doIt (@var{src}, @var{data}, @var{layout})
##
## Define a callback for default action of limit_val control.
##
## @end deftypefn
function limit_val_doIt(src, data, layout)

% This code will be executed when the control lost focus and text has 
% been changed or when press the "enter" key.
% Por defecto, todos los eventos están desactivdados, para activarlos debe activar
% la propiead have callback desde el editor de propiedades
end

## @deftypefn  {} {} graph_cb_doIt (@var{src}, @var{data}, @var{layout})
##
## Define a callback for default action of graph_cb control.
##
## @end deftypefn
function graph_cb_doIt(src, data, layout)

end

 
## @deftypefn  {} {@var{ret} = } show_layout()
##
## Create windows controls over a figure, link controls with callbacks and return 
## a window struct representation.
##
## @end deftypefn
function ret = show_layout()
  _scrSize = get(0, "screensize");
  _xPos = (_scrSize(3) - 911)/2;
  _yPos = (_scrSize(4) - 593)/2;
   layout = figure ( ... 
	'Color', [0.941 0.941 0.941], ...
	'Position', [_xPos _yPos 911 593], ...
	'resize', 'off', ...
	'windowstyle', 'normal', ...
	'MenuBar', 'none');
	 set(layout, 'visible', 'off');
  f_slider = uicontrol( ...
	'parent',layout, ... 
	'Style','slider', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'Max', 500, ... 
	'Min', 0, ... 
	'Position', [220 471 213 22], ... 
	'TooltipString', '', ... 
	'Value', 0);
  z_slider = uicontrol( ...
	'parent',layout, ... 
	'Style','slider', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'Max', 500, ... 
	'Min', -500, ... 
	'Position', [220 416 213 22], ... 
	'TooltipString', '', ... 
	'Value', 0);
  r_slider = uicontrol( ...
	'parent',layout, ... 
	'Style','slider', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'Max', 500, ... 
	'Min', -500, ... 
	'Position', [220 356 214 22], ... 
	'TooltipString', '', ... 
	'Value', 0);
  f = uicontrol( ...
	'parent',layout, ... 
	'Style','text', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'FontAngle', 'italic', ... 
	'FontName', 'Bell MT', ... 
	'FontSize', 18, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [20 474 40 29], ... 
	'String', '  f  ', ... 
	'TooltipString', '');
  title = uicontrol( ...
	'parent',layout, ... 
	'Style','text', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'FontAngle', 'normal', ... 
	'FontName', 'Arial Black', ... 
	'FontSize', 20, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [15 544 356 38], ... 
	'String', 'Second Order Dynamics', ... 
	'TooltipString', '');
  plot_section = axes( ...
	'Units', 'pixels', ... 
	'parent',layout, ... 
	'FontAngle', 'normal', ... 
	'FontName', 'Arial', ... 
	'FontSize', 10, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'Position', [450 135 437 383]);
  callBack_2 = @updateGraph01;
  z = uicontrol( ...
	'parent',layout, ... 
	'Style','text', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'FontAngle', 'italic', ... 
	'FontName', 'Bell MT', ... 
	'FontSize', 18, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [20 414 43 29], ... 
	'String', '  z  ', ... 
	'TooltipString', '');
  r = uicontrol( ...
	'parent',layout, ... 
	'Style','text', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'FontAngle', 'italic', ... 
	'FontName', 'Bell MT', ... 
	'FontSize', 18, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [25 359 41 29], ... 
	'String', '  r  ', ... 
	'TooltipString', '');
  callBack_1 = @updateGraph02;
  f_val = uicontrol( ...
	'parent',layout, ... 
	'Style','edit', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [1.000 1.000 1.000], ... 
	'FontAngle', 'normal', ... 
	'FontName', 'Arial', ... 
	'FontSize', 16, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [90 471 90 22], ... 
	'String', '0', ... 
	'TooltipString', '');
  z_val = uicontrol( ...
	'parent',layout, ... 
	'Style','edit', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [1.000 1.000 1.000], ... 
	'FontAngle', 'normal', ... 
	'FontName', 'Arial', ... 
	'FontSize', 16, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [90 416 90 22], ... 
	'String', '0', ... 
	'TooltipString', '');
  r_val = uicontrol( ...
	'parent',layout, ... 
	'Style','edit', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [1.000 1.000 1.000], ... 
	'FontAngle', 'normal', ... 
	'FontName', 'Arial', ... 
	'FontSize', 16, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [90 356 90 22], ... 
	'String', '0', ... 
	'TooltipString', '');
  rt = uicontrol( ...
	'parent',layout, ... 
	'Style','text', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'FontAngle', 'italic', ... 
	'FontName', 'Bell MT', ... 
	'FontSize', 18, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [20 299 49 29], ... 
	'String', '  rt  ', ... 
	'TooltipString', '');
  rt_val = uicontrol( ...
	'parent',layout, ... 
	'Style','edit', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [1.000 1.000 1.000], ... 
	'FontAngle', 'normal', ... 
	'FontName', 'Arial', ... 
	'FontSize', 16, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [90 301 90 22], ... 
	'String', '0', ... 
	'TooltipString', '');
  rt_slider = uicontrol( ...
	'parent',layout, ... 
	'Style','slider', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'Max', 500, ... 
	'Min', 0, ... 
	'Position', [220 301 213 22], ... 
	'TooltipString', '', ... 
	'Value', 0);
  limit_val = uicontrol( ...
	'parent',layout, ... 
	'Style','edit', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [1.000 1.000 1.000], ... 
	'FontAngle', 'normal', ... 
	'FontName', 'Arial', ... 
	'FontSize', 16, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [535 81 90 22], ... 
	'String', '0', ... 
	'TooltipString', '');
  limit = uicontrol( ...
	'parent',layout, ... 
	'Style','text', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'FontAngle', 'italic', ... 
	'FontName', 'Bell MT', ... 
	'FontSize', 18, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'HorizontalAlignment', 'center', ... 
	'Position', [450 74 75 29], ... 
	'String', '  limit  ', ... 
	'TooltipString', '');
  graph_cb = uicontrol( ...
	'parent',layout, ... 
	'Style','popupmenu', ... 
	'Units', 'pixels', ... 
	'BackgroundColor', [0.941 0.941 0.941], ... 
	'FontAngle', 'normal', ... 
	'FontName', 'Arial', ... 
	'FontSize', 14, 'FontUnits', 'points', ... 
	'FontWeight', 'normal', ... 
	'ForegroundColor', [0.000 0.000 0.000], ... 
	'Position', [455 548 94 25], ... 
	'String', 'Graph 1|Graph 2|Graph 3|Graph 4', ... 
	'TooltipString', '');

  layout = struct( ...
      'figure', layout, ...
      'f_slider', f_slider, ...
      'z_slider', z_slider, ...
      'r_slider', r_slider, ...
      'f', f, ...
      'title', title, ...
      'plot_section', plot_section, ...
      'callBack_2', callBack_2, ...
      'z', z, ...
      'r', r, ...
      'callBack_1', callBack_1, ...
      'f_val', f_val, ...
      'z_val', z_val, ...
      'r_val', r_val, ...
      'rt', rt, ...
      'rt_val', rt_val, ...
      'rt_slider', rt_slider, ...
      'limit_val', limit_val, ...
      'limit', limit, ...
      'graph_cb', graph_cb);


  set (f_slider, 'callback', {@f_slider_doIt, layout});
  set (z_slider, 'callback', {@z_slider_doIt, layout});
  set (r_slider, 'callback', {@r_slider_doIt, layout});
  set (rt_val, 'callback', {@rt_val_doIt, layout});
  set (rt_slider, 'callback', {@rt_slider_doIt, layout});
  set (limit_val, 'callback', {@limit_val_doIt, layout});
  set (graph_cb, 'callback', {@graph_cb_doIt, layout});
  dlg = struct(layout);

%
% El código fuente escrito aquí será ejecutado cuando
% la ventana se haga visible. Funciona como el evento 'onLoad' de otros lenguajes.
%

# Bind Callbacks
set(layout.f_val, 'callback', {layout.callBack_1, layout});
set(layout.z_val, 'callback', {layout.callBack_1, layout});
set(layout.r_val, 'callback', {layout.callBack_1, layout});
set(layout.rt_val, 'callback', {layout.callBack_1, layout});

set(layout.f_slider, 'callback', {layout.callBack_2, layout});
set(layout.z_slider, 'callback', {layout.callBack_2, layout});
set(layout.r_slider, 'callback', {layout.callBack_2, layout});
set(layout.rt_slider, 'callback', {layout.callBack_2, layout});

set(layout.limit_val, 'callback', {layout.callBack_1, layout});
set(layout.graph_cb, 'callback', {layout.callBack_1, layout});

# Get Slider Values
dt = 0.001;
f = 1.5;
z = 0.3;
r = 1.0;
rt = 0.5;
limit = 4;
set(layout.f_slider, 'Value', f * 100);
set(layout.z_slider, 'Value', z * 100);
set(layout.r_slider, 'Value', r * 100);
set(layout.rt_slider, 'Value', rt * 100);

# Update numbers
set(layout.f_val, 'String', num2str(f));
set(layout.z_val, 'String', num2str(z));
set(layout.r_val, 'String', num2str(r));
set(layout.rt_val, 'String', num2str(rt));
set(layout.limit_val, 'String', num2str(limit));

# Plotting
t = 0:dt:limit;

k1 = z / (pi * f);
k2 = 1 / ((2 * pi * f) * (2 * pi * f));
k3 = r * z / (2 * pi * f);

x0 = 0;
x = zeros(1, length(t));
y = zeros(1, length(t));
osi = floor(rt * ((length(t) - 1) / limit));
x(osi) = 1;
for i = (osi + 1):length(t)
	x(i) = max(0, x(i - 1) - dt / rt);
endfor

xp = x0;
y(1) = x0;
yd = 0;
for i = 2:length(t)
	xd = (x(i) - xp) / dt;
	xp = x(i);

	k2_stable = max(k2, max(dt*dt/2 + dt*k1/2, dt*k1));
	y(i) = y(i - 1) + dt * yd;
	yd = yd + dt * (x(i) + k3*xd - y(i) - k1*yd) / k2_stable;
endfor

plot(t, x, 'green');
hold on;
plot(t, y, 'blue');
hold off;
axis([0 limit -1 2]);






  set(layout.figure, 'visible', 'on');
  ret = layout;
end

