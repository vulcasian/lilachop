function dropUp()
{
	var e;

	e = document.getElementById('subsubhead');

	if ('block' == e.style.display)
		e.style.display = 'none';
}

function dropout(event)
{

	if (event.stopPropagation)
		event.stopPropagation();
	else
		event.cancelBubble = true;

	return false;
}

function subdropdown(event, e, name) {
	var child;

	child = document.getElementById(name);

	if ('block' == child.style.display) {
		child.style.display = 'none';
		e.className = '';
		e.firstChild.className = 'fa fa-fw fa-circle-o';
	} else {
		child.style.display = 'block'; 
		e.className = 'dropped';
		e.firstChild.className = 'fa fa-fw fa-circle';
	}

	return(dropout(event));
}

function topdropdown(event, e, name) {
	var child;

	child = document.getElementById(name);

	if ('block' == child.style.display) {
		child.style.display = 'none';
		e.className = '';
	} else {
		child.style.display = 'block'; 
		e.className = 'dropped';
	}

	return(dropout(event));
}

function dropdown(event, e, name) {
	var child;

	child = document.getElementById(name);

	if ('block' == child.style.display) {
		child.style.display = 'none';
		e.className = '';
		e.firstChild.className = 'fa fa-fw fa-square-o';
	} else {
		child.style.display = 'block'; 
		e.className = 'dropped';
		e.firstChild.className = 'fa fa-fw fa-square';
	}

	return(dropout(event));
}
