function ControlledFalling()
	clc;
	printf('Parameters:\n\n');

	duration = 2;
	delta = 0.016;
	xInit = 10;
	vInit = 0;
	gGlob = -980;
	bounces = 10;
	printf('Duration      : %.1f s\n', duration);
	printf('Delta Step    : %.3f s\n', delta);
	printf('Initial Height: %.1f cm\n', xInit);
	printf('Gravity Accel : %.1f cm/s^2\n', gGlob);
	printf('Bounce Simuls : %d bounces\n', bounces);

	t = linspace(0, duration, 100);

	x = @(t, x0, v0) x0 + v0 * t + 0.5 * gGlob * delta * t.^2; # x
	v = @(t, v0)     v0 + gGlob * delta * t;                   # x'
	a =              gGlob * delta;                            # x''

	# Collision time equation
	ct = @(x0, v0) (-v0 - sqrt(v0.^2 - 2 * a * x0)) / a;
	printf('Initial Collision Time at: %.4f s\n', ct(xInit, vInit));

	# Bounce Simulation
	tAcum = 0;
	lastX = xInit;
	lastV = vInit;
	kinematicLoss = 0.5;
	reps = zeros(bounces, 1);
	for i = 1:bounces
		collisionTime = ct(lastX, lastV);
		tAcum += collisionTime;
		reps(i) = -v(collisionTime, lastV) * kinematicLoss;
		lastX = 0;
		lastV = reps(i);
		printf('%dst Collision Time at: %.4f s with %.4f cm/s\n', i, tAcum, reps(i));
	endfor

	# Figure Definition
	figure(1, 'position', [500 220 1200 600]);

	# Repulsion Forces Plot
	subplot(121);
	scatter(1:bounces, reps, 'r');
	title('Repulsion Forces Plot');
	xlabel('bounce');
	ylabel('repulsion (cm/s)');
	axis([1 bounces min(reps) max(reps)]);
	grid on;
	grid minor on;

	# Position Plot
	subplot(222);
	plot(t, x(t, xInit, vInit));
	title('Position Plot');
	xlabel('time (s)');
	ylabel('height (cm)');
	axis([0 duration 0 xInit]);
	grid on;
	grid minor on;

	# Velocity Plot
	subplot(224);
	plot(t, v(t, vInit));
	title('Velocity Plot');
	xlabel('time (s)');
	ylabel('velocity (cm/s)');
	axis([0 duration min(v(t, vInit)) 0]);
	grid on;
	grid minor on;
endfunction
