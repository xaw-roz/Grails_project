<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title> Edit a project ${project.projectName}</title>
</head>
<body>
<g:form method="post">
    <label for="projectName">Project Name</label>
    <g:textField name="projectName" value="${project.projectName}"></g:textField>
    <br/>
    <label for="projectId">Project Id</label>
    <g:textField name="projectId" value="${project.projectId}"></g:textField>
    <br/>
    <label for="startDate">Start Date</label>
    <g:datePicker name="startDate" precision="day" value="${project.startDate}"></g:datePicker>
    <br/>
    <label for="endDate">Start End</label>
    <g:datePicker name="endDate" precision="day" value="${project.endDate}"></g:datePicker>
    <br/>
    <label for="projectBudget">Project Budget</label>
    <g:textField name="projectBudget" value="${project.projectBudget}"></g:textField>
    <br/>
    <g:actionSubmit value="Submit Changes" action="Update"></g:actionSubmit>
</g:form>
</body>
</html>