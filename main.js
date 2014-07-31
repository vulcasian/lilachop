var current = null;

function 
showimage(name)
{
	if (null != current)
		document.getElementById(current).className='img noshow';
	current = name;
	document.getElementById(current).className='img';
	document.getElementById('recipe').className='noshow';
	return false;
}

function 
showrecipe(def)
{
	if (null == current) {
		showimage(def);
		return false;
	}

	if (null != current)
		document.getElementById(current).className='img noshow';
	current = null;
	document.getElementById('recipe').className='';
	return false;
}
