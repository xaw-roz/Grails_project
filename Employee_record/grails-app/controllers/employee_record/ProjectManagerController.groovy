package employee_record

class ProjectManagerController {

    def index()
    {
        def projectmanager=ProjectManager.findAll();
        [projectmanager: projectManager]
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
        [projectmanager: ProjectManager]

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
        def projectmanager=ProjectManager.get(params.id)
        project.delete()
        flash.message="The project was deleted successfully"
        redirect action: 'index'

    }
    def show()
    {
        def project=Project.get(params.id)
        [project: ProjectManager]
    }


}

