package employee_record

import grails.transaction.Transactional


class ProjectController {
    def index()
    {
        def projects=Project.findAll();
        [projects: projects]
    }
    def create()
    {
        render view: 'create'
    }
    def save()
    {
        def project=new Project(params)
        project.save(failOnError:true);
        render "saved successfully"
    }
    def edit()
    {
        def project=Project.get(params.id)
        [project:project]
    }
    def delete()
    {
        def project=Project.get(params.id)
        project.delete()

    }

}