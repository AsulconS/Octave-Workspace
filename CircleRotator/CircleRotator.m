function CircleRotator()
  clc;

  dt = 0.01;
  figure(1, 'position', [400 400 1500 610]);

  xpts = zeros(1 / dt);
  ypts = zeros(1 / dt);
  xpts(1) = 0;
  ypts(1) = 1;
  for i = 2:length(t)
    xpts(i) = xpts(i-1);
  endfor
  subplot(121);
  plot(t, g(t));
  axis([0 1 0 1]);

  xpts = zeros(length(t));
  ypts = zeros(length(t));
  xpts(1) = 0;
  ypts(1) = 1;
  for i = 2:length(t)
    dt = t(i) - t(i-1);
    xpts(i) = xpts(i-1);
  endfor
  subplot(122);
  scatter(xpts, ypts, 4);
  axis([0 1 0 1]);
endfunction

