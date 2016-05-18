package employee_record

import grails.transaction.Transactional


class ProjectController {
    def index()
    {
        render "hello all"
    }
    def create()
    {
        render view: 'create'
    }
    def save()
    {
        def project=new Project(params)
        project.save();
        render "saved successfully"
    }
    def edit()
    {
        def project=Project.get(params.id)
        [project:project]
    }

}