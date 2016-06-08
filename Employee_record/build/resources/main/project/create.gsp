<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title> Create a new project</title>
</head>
<body>
<div class="form_div">
<g:form method="post">
    <div class="form-group">
    <label for="projectName">Project Name</label>
    <g:textField name="projectName" class="form-control" value=""></g:textField>
    </div>
    <div class="form-group">
    <label for="projectId">Project Id</label>
    <g:textField name="projectId" class="form-control" value=""></g:textField>
    </div>
    <div class="form-group">
    <label for="startDate">Start Date</label>
    <g:datePicker name="startDate" precision="day" class="date-picker"></g:datePicker>
    </div>
    <div class="form-group">
    <label for="endDate">End Date</label>
    <g:datePicker name="endDate" precision="day" class="date-picker-popup"></g:datePicker>
    </div>
    <div class="form-group">
    <label for="projectBudget">Project Budget</label>
    <g:textField name="projectBudget" class="form-control" value=""></g:textField>
    </div>

    <g:actionSubmit value="Create Project" class="btn btn-lg btn-primary btn-block btn-signin" action="save"></g:actionSubmit>
</g:form>
</div>
</body>
</html>