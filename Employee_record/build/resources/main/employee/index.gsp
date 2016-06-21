%{--
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-employee" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${employeeList}" />

            <div class="pagination">
                <g:paginate total="${employeeCount ?: 0}" />
            </div>
        </div>
    </body>
</html>--}%
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
    <head>
        <meta name="layout" content="main" />

        <title>CheckIn</title>
    </head>
    <body>
<g:form name="userForm" action="checkIn">





    <div class="form-group"><label>First Name: </label><g:textField class="form-control" name="firstName" value="${employee.firstName}" /></div>
    <div class="form-group"><label>Middle Name: </label><g:textField class="form-control" name="middleName" value="${employee.middleName}" /></div>
    <div class="form-group"><label>Last Name: </label><g:textField class="form-control" name="lastName" value="${employee.lastName}" /></div>
    <div class="form-group"><label>Email Address : </label><g:textField class="form-control" name="emailAddress" value="${employee.emailAddress}" /></div>
    <div class="form-group"><label>Rate per hour : </label><g:textField class="form-control" name="rate" value="${employee.rate}" /></div>
    <div class="form-group"><label>Date of birth : </label><g:datePicker class="form-control" name="dateOfBirth" precision="day" value=""/></div>
    <label for="username">Username:</label>
    <div class="form-group"> <g:textField name="username" class="form-control" value="${employee.username}"></g:textField></div>
    <label for="password">Password:</label>
    <div class="form-group">    <g:passwordField class="form-control" name="password"  value="${employee.password}"></g:passwordField></div>
    %{--<g:actionSubmit value="Submit" class="btn btn-lg btn-primary btn-block btn-signin" controller="user" action="save"></g:actionSubmit>--}%
    <g:submitButton name="CHECKIN" controller="employee" action="checkIn" />
</g:form>
    </body>


</html>
