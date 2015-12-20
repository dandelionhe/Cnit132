#!/usr/local/bin/perl

# The above statement must be the first statement and it tells the 
# server where to find the perl interpreter so that the script can run
# (NOTE: this statement is machine dependent) 


do  "cgi-lib.pl" ||die "Fatal Error: Can't load cgi library";

# The above statement calls subroutines in the cgi-lib.pl library, 
# which are needed to run a perl program
# If cgi-lib.pl fails to load, then an error message is printed 


&ReadParse;

# The above line reads the stream of name=value pairs from the form
# and puts the values in a perl table called  in


print "Content-type: html\n\n";

# The above line indicates the Mime type of the information
# that the script is sending back to the browser thru the Web server
# In perl, a \n is a "carriage return, next line"
# \n\n is required here



# The next line says to output the following information, until the
# the statement    _END_   is reached

print<<"_END_";


<html>

<head>
<title>Confirmation</title>

<meta http-equiv="Page-Enter"
 content="RevealTrans(Duration=3.000,Transition=2)">

<style>

body {font-family: comic sans ms; background-color: #8f0052;}

a:hover {color: purple; background-color: yellow;}

</style>

</head>

<body>

<div align="center">


<table bgcolor="#f5f5dc" cellpadding="5">
<tr>
<td>

<h2>Thanks, <span style="color: blue; ; background-color: yellow;">$in{'name'}</span>, for signing up for my web site.</h2>

<!-- The above line substitutes the value associated with the name 'name' from the form, that was entered by the user-->




<p>Your email address is  <span style="color: blue">$in{'email'}</span></p>

<!-- The above line substitutes the value associated with the name 'email'  from the form, that was entered by the user-->



<p>You indicated that your occupation is <span style="color: blue">$in{'occup'}</span></p>

<!-- The above line substitutes the value associated with the name 'occup'  from the form, that has been chosen by the user-->



<p>You are interested in:  <br /> 


<span style="color: blue">$in{'int1'}</span>
<span style="color: blue">$in{'int2'}</span>
<span style="color: blue">$in{'int3'}</span>
<span style="color: blue">$in{'int4'}</span>

</p>


<!-- The above line substitutes the value(s) associated with the name 'int1', 'int2', 'int3', 'int4' from the form, that has been chosen by the user-->



<p>You indicated that you like <span style="color: blue">$in{'sport'}</span></p>




<!-- The above line substitutes the value associated with the name 'fan'  from the form, that has been chosen by the user-->



<p>Your comments: <span style="color: blue">$in{'comments'}</span></p>

<!-- The above line substitutes the value associated with the name 'comments'  from the form, that was entered by the user-->


<p><hr></p>

<p align="center">
<a href="http://hills.ccsf.edu/~hyongzhe/parta.html">Return to Signup page.</a></p>


</td>
</tr>
</table>
</div>
</body>
</html>

_END_
;




