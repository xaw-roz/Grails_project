package employee_record

import grails.transaction.Transactional

@Transactional
class ProjectService {
    def createProject(Project project)
    {
        def flash=[:]
        project.save(failOnError:true);
        flash.message="Project created successfully"
        return flash

    }
    def deleteProject(Project project)
    {
        def flash=[:]
        project.delete()
        flash.message="Project deleted successfully"
        return flash
    }

    def serviceMethod() {

    }
}
