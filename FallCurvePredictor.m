function FallCurvePredictor()
	clc;
	t = linspace(0, 5, 100);

	# Parameters
	v = [5 1 10];	# Initial Velocity
	g = [0 4 -9.8];	# Gravity
	up = -g / norm(g);
	lat = cross(v, up);
	lat = lat / norm(lat);
	front = cross(up, lat);
	front = front / norm(front);

	cx = @(_t) v(1) * _t + 0.5 * g(1) * _t.^2;
	cy = @(_t) v(2) * _t + 0.5 * g(2) * _t.^2;
	cz = @(_t) v(3) * _t + 0.5 * g(3) * _t.^2;

	figure(1, 'position', [550 150 800 750]);
	plot3(cx(t), cy(t), cz(t));
	axis([-16 16 -16 16 -12 12]);
	xlabel('X');
	ylabel('Y');
	zlabel('Z');
	grid on;
	grid minor on;

	# Base
		DrawOriginVector([16 0 0], 'red', 2);
		DrawOriginVector([0 16 0], 'green', 2);
		DrawOriginVector([0 0 16], 'blue', 2);
	# Base

	# Vectors
		DrawOriginVector(v, 'yellow', 0.5);
		DrawOriginVector(g, 'blue', 0.5);

		DrawOriginVector(up * 5, 'cyan', 1);
		DrawOriginVector(lat * 5, 'black', 1);
		DrawOriginVector(front * 5, 'magenta', 1);
	# Vectors

	# Scatters
		vx = dot(v, front);
		vy = dot(v, up);

		testx = linspace(0, 20, 20);
		ptsx = testx;
		ptsy = testx;
		ptsz = testx;
		for i = 1:length(testx)
			ptx = testx(i);
			pty = vy/vx * ptx - 0.5 * norm(g) * (ptx / vx)^2;
			tar = ptx * front + pty * up;
			ptsx(i) = tar(1);
			ptsy(i) = tar(2);
			ptsz(i) = tar(3);
		endfor
		scatter3(ptsx, ptsy, ptsz);
	# Scatters

	# Draw Grid
		X = linspace(-16, 16, 10);
		Y = linspace(-16, 16, 10);
		[XX, YY] = meshgrid(X, Y);
		ZZ = XX .* 0;
		hold on;
		m = mesh(X, Y, ZZ);
		colormap gray;
		set(m, 'facealpha', 0.25);
	# Draw Grid

	axis equal;
endfunction

