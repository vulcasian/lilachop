
function changeservings(e)
{
	var elems;
	var num = parseFloat(e);

	if (isNaN(num))
		return;

	elems = getAllElementsWithAttribute('data-lilachop-amount');
	for (var i = 0, n = elems.length; i < n; i++)
		elems[i].innerHTML = num * parseFloat(elems[i].getAttribute('data-lilachop-amount'));
}

function getAllElementsWithAttribute(attribute)
{
	var matchingElements = [];
	var allElements = document.getElementsByTagName('*');

	for (var i = 0, n = allElements.length; i < n; i++) 
		if (allElements[i].getAttribute(attribute))
			matchingElements.push(allElements[i]);

	return matchingElements;
}
