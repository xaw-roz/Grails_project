package employee_record

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional


class ProjectController {
    def projectService

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
        def result=projectService.createProject(project)
        if(result.message)
        {
            flash.message=result.message

        }
        redirect action: 'index'

    }
    def edit()
    {
        def project=Project.get(params.id)
        [project:project]

    }
    def update()

    {
        def project=Project.get(params.id)
        bindData(project,params)
        flash.message="The changes were stored successfully"
        redirect action:'index'
    }
    def delete()
    {
        def project=Project.get(params.id)
        def result=projectService.deleteProject(project)
        if(result.message) {
            flash.message = "The project was deleted successfully"
        }
        redirect action: 'index'

    }
    @Secured(['permitAll'])
    def show()
    {
        def project=Project.get(params.id)
        [project: project]
    }


}