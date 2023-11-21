function SecondOrderDynamics(f = 1, z = 0.5, r = 0, dt = 0.01)
	clc;
	t = 0:dt:5;

	k1 = z / (pi * f);
	k2 = 1 / ((2 * pi * f) * (2 * pi * f));
	k3 = r * z / (2 * pi * f);

	x0 = 0;
	x = zeros(1, length(t));
	y = zeros(1, length(t));
	for i = ((length(t) - 1) / 5 + 1):length(t)
		x(i) = 1;
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
	axis([0 5 -1 2]);
endfunction

