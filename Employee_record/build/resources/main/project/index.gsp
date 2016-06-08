<g:if test="${flash.message}">
    <div class="message" role="status" onabort="">${flash.message}</div>
</g:if>

<meta name="layout" content="main"/>
<div class="form_div">

    <f:table collection="projects" properties="['projectName','projectId','projectBudget']"></f:table>

</div>