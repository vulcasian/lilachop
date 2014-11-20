function dropdown(e, name) {
	var child;

	child = document.getElementById(name);
	if ('block' == child.style.display) {
		child.style.display = 'none';
		e.className = '';
	} else {
		child.style.display = 'block'; 
		e.className = 'dropped';
	}
}
