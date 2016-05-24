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
        flash.message="Project created successfully"
        redirect action: "index"
    }
    def edit()
    {
        def project=Project.get(params.id)
        [project:project]

    }
    def update()

    {
        println("updated ")
        def project=Project.get(params.id)
        bindData(project,params)
        flash.message="The changes were stored successfully"
        redirect action:'index'
    }
    def delete()
    {
        def project=Project.get(params.id)
        project.delete()
        flash.message="The project was deleted successfully"
        redirect action: 'index'

    }
    def show()
    {
        def project=Project.get(params.id)
        [project: project]
    }


}