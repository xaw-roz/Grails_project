<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

        <title>CheckIn</title>
    </head>
    <body>


<g:link action="checkIn">checkIn</g:link>
<br>
<br>
<g:link action="checkOut">checkOut</g:link>
<br>
<br>
<div class="form_div">
    <label>Name:</label>
    ${user.firstName}
    <br>
    <label>Middle Name:</label>
    ${user.middleName}
    <br>
    <label>Last Name:</label>
    ${user.lastName}
    <br>
    <label>Total amount:</label>
    ${amount}
    <br>
    <label>Email Address:</label>
    ${user.emailAddress}
    <br>
</div>
    </body>
</html>