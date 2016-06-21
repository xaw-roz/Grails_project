
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />

        <title>Create user</title>
    </head>
    <body>
<g:form name="userForm" action="save">
    <div class="form-group"><label>Members: </label><g:select class="form-control" name="users" from="${users}"  value="${users?.firstName}"  optionKey="id"/></div>

    <div class="form-group"><label>First Name: </label><g:textField class="form-control" name="firstName" value="${employee.firstName}" /></div>
    <div class="form-group"><label>Middle Name: </label><g:textField class="form-control" name="middleName" value="${employee.middleName}" /></div>
    <div class="form-group"><label>Last Name: </label><g:textField class="form-control" name="lastName" value="${employee.lastName}" /></div>
    <div class="form-group"><label>Email Address : </label><g:textField class="form-control" name="emailAddress" value="${employee.emailAddress}" /></div>
    <div class="form-group"><label>Rate per hour : </label><g:textField class="form-control" name="rate" value="${employee.rate}" /></div>
%{--<div class="form-group"><label>Date of birth : </label><g:datePicker class="form-control" name="dateOfBirth" precision="day" value=""/></div>--}%
    <label for="username">Username:</label>
    <div class="form-group"> <g:textField name="username" class="form-control" value="${employee.username}"></g:textField></div>
    <label for="password">Password:</label>
    <div class="form-group">    <g:passwordField class="form-control" name="password"  value="${employee.password}"></g:passwordField></div>
%{--<g:actionSubmit value="Submit" class="btn btn-lg btn-primary btn-block btn-signin" controller="user" action="save"></g:actionSubmit>--}%
    <g:submitButton name="create" value="Save" />
</g:form>
    </body>


</html>
