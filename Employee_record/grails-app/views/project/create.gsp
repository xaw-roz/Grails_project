<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title> Create a new project</title>
</head>
<body>
<g:form method="post">
    <label for="projectName">Project Name</label>
    <g:textField name="projectName" value=""></g:textField>
    <br/>
    <label for="projectId">Project Id</label>
    <g:textField name="projectId" value=""></g:textField>
    <br/>
    <label for="startDate">Start Date</label>
    <g:datePicker name="startDate" precision="day"></g:datePicker>
    <br/>
    <label for="endDate">Start End</label>
    <g:datePicker name="endDate" precision="day"></g:datePicker>
    <br/>
    <label for="projectBudget">Project Budget</label>
    <g:textField name="projectBudget"></g:textField>
    <br/>
    <g:actionSubmit value="Create Project" action="save"></g:actionSubmit>
</g:form>
</body>
</html>