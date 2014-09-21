function round(value, exp) 
{
	if (typeof exp === 'undefined' || +exp === 0)
		return Math.round(value);

	value = +value;
	exp  = +exp;

	if (isNaN(value) || !(typeof exp === 'number' && exp % 1 === 0))
		return NaN;

	// Shift
	value = value.toString().split('e');
	value = Math.round(+(value[0] + 'e' + (value[1] ? (+value[1] + exp) : exp)));

	// Shift back
	value = value.toString().split('e');
	return +(value[0] + 'e' + (value[1] ? (+value[1] - exp) : -exp));
}

function amazonlink(asin, name)
{
	document.write(
		'<a href="http://www.amazon.com/dp/' + asin + '/?tag=lich048-20" class="amazon">' +
		name +
		'</a>');
}

function changeservings(e)
{
	var elems;
	var num = parseFloat(e);

	if (isNaN(num))
		return;

	elems = getAllElementsWithAttribute('data-lilachop-amount');
	for (var i = 0, n = elems.length; i < n; i++)
		elems[i].innerHTML = round(num * parseFloat(elems[i].getAttribute('data-lilachop-amount')), 3);
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
