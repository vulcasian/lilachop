function dropUp()
{
	var e;

	e = document.getElementById('subsubhead');

	if ('block' == e.style.display)
		e.style.display = 'none';
}

function dropdown(event, e, name) {
	var child;

	child = document.getElementById(name);

	if ('block' == child.style.display) {
		child.style.display = 'none';
		e.className = '';
	} else {
		child.style.display = 'block'; 
		e.className = 'dropped';
	}

	if (event.stopPropagation)
		event.stopPropagation();
	else
		event.cancelBubble = true;

	return false;
}
