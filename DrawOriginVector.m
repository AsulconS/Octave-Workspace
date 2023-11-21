function DrawOriginVector(v, color, lineWidth)
	hold on;
	q = quiver3(0, 0, 0, v(1), v(2), v(3));
	set(q, 'Color', color);
	set(q, 'LineWidth', lineWidth);
endfunction

