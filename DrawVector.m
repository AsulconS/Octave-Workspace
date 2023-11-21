function DrawVector(orig, tar, color, lineWidth)
	hold on;
	q = quiver3(orig(1), orig(2), orig(3), tar(1), tar(2), tar(3));
	set(q, 'Color', color);
	set(q, 'LineWidth', lineWidth);
endfunction

