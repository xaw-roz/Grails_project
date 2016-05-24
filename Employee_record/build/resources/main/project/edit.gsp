<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title> Edit a project ${project.projectName}</title>
</head>
<body>
<div class="form_div">
<g:form method="put" controller="project" action="update" id="$project.id">
    <div class="form-group">
    <label for="projectName">Project Name</label>
    <g:textField name="projectName" class="form-control" value="${project.projectName}"></g:textField>
    </div>
    <br/>
    <div class="form-group">
    <label for="projectId">Project Id</label>
    <g:textField name="projectId" class="form-control" value="${project.projectId}"></g:textField>
    </div>
    <br/>
    <div class="form-group">
    <label for="startDate">Start Date</label>
    <g:datePicker name="startDate" precision="day" class="date-picker-popup" value="${project.startDate}"></g:datePicker>
    </div>
    <br/>
    <div class="form-group">
    <label for="endDate">Start End</label>
    <g:datePicker name="endDate" precision="day" class="date-picker-popup" value="${project.endDate}"></g:datePicker>
    </div>
    <br/>
    <div class="form-group">
    <label for="projectBudget">Project Budget</label>
    <g:textField name="projectBudget" class="form-control" value="${project.projectBudget}"></g:textField>
    </div>
    <br/>

    <g:actionSubmit class="btn-default" value="${message(code: 'default.button.update.label', default: 'Update')}" ></g:actionSubmit>
</g:form>
</div>
</body>
</html>