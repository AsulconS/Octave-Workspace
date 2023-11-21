## -*- texinfo -*-
## @deftypefn  {} {@var{wnd} =} layout ()
##
## Create and show the dialog, return a struct as representation of dialog.
##
## @end deftypefn
function wnd = layout()
  layout_def;
  wnd = show_layout();
end
