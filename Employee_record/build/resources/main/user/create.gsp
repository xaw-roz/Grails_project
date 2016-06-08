<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
    <head>
        <meta name="layout" content="main" />

        <title>Create user</title>
    </head>
    <body>
    <div class="form_div"
    <g:form name="userForm" >
        <div class="form-group"><label>First Name: </label><g:textField class="form-control" name="firstName" value="${firstName}" /></div>
        <div class="form-group"><label>Middle Name: </label><g:textField class="form-control" name="middleName" value="${middleName}" /></div>
        <div class="form-group"><label>Last Name: </label><g:textField class="form-control" name="lastName" value="${lastName}" /></div>
        <div class="form-group"><label>Email Address : </label><g:textField class="form-control" name="emailAddress" value="${emailAddress}" /></div>
        <div class="form-group"><label>Rate per hour : </label><g:textField class="form-control" name="rate" value="${rate}" /></div>
        <div class="form-group"><label>Date of birth : </label><g:datePicker class="form-control" name="dateOfBirth" precision="day" value=""/></div>
        <label for="username">Username:</label>
        <div class="form-group"> <g:textField name="username" class="form-control" value=""></g:textField></div>
      <label for="password">Password:</label>
        <div class="form-group">    <g:passwordField class="form-control" name="password"  value=""></g:passwordField></div>
        <g:actionSubmit value="Submit" class="btn btn-lg btn-primary btn-block btn-signin" controller="user" action="save"></g:actionSubmit>
    </g:form>
</div>
    </body>


    </body>
</html>
