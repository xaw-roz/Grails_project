package employee_record

class ProjectTableTagLib {
    //static defaultEncodeAs = [taglib:'html']
    static namespace="custom"
    static encodeAsForTags = [projectList: [taglib:'none']]


    def projectList = {attrs ->
        def projects = attrs.projects
        def mb = new groovy.xml.MarkupBuilder(out)
        mb.table{
            tr{
                th{ mb.yield "Project Name" }
                th{ mb.yield "projectId" }
                th{ mb.yield "Project Budget" }
            }
            projects.each{project ->
                tr{
                    td{mb.yield "${project.projectName}"}
                    td{mb.yield "${project.projectId}"}
                    td{mb.yield "${project.projectBudget}"}
                }
            }
        }
    }
}
