function checkEmpty(field)
{
    var value1 = field.value;
    if(value1.length == 0)
	{
	alert(field.name+" should not be Empty");
        field.value="";
		field.focus();
		return false;
	}
	return true;
}

function checkNumber(field)
{
	var value2 = field.value;
	var numbers = "0123456789";
	for(var i=0; i<value2.length; i++)
	{
		if(numbers.indexOf(value2.charAt(i)) == -1)
		{
			alert(field.name+" should be a Number");
			field.value2="";
			field.focus();
			return false;
		}
	}
	return true;
}
function checkName(field) {
var val=field.value;
var alpha="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ. "
for(var j=0;j<val.length;j++) {
if(alpha.indexOf(val.charAt(j))==-1) {
alert(field.name+" should be in characters");
			field.val="";
			field.focus();
			return false;
		}
	}
	return true;
}
function checkMailID(field)
{
	var value3 = field.value;
	if(value3.indexOf('@') == -1)
	{
		if((value3.indexOf('.com') == -1) && (value3.indexOf('.net') == -1) && (value3.indexOf('.mil') == -1) && (value3.indexOf('.org') == -1) && (value3.indexOf('.edu') == -1) && (value3.indexOf('.gov') == -1))
		{
			alert("Enter the correct mail-id");
			field.value3="";
			field.focus();
			return false;
		}
	}
	return true;
}
function checkDate(field) {
var val=field.value;
var alpha="1234567890.-/\_"
for(var j=0;j<val.length;j++) {
if(alpha.indexOf(val.charAt(j))==-1) {
alert(field.name+" should be a date");
			field.val="";
			field.focus();
			return false;
		}
	}
	return true;
}