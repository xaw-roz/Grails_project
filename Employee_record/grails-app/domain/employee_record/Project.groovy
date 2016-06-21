package employee_record

import java.sql.Date

class Project {
    String projectName
    String projectId
    Date startDate
    Date endDate
    static hasMany = [users:User]

    Float projectBudget

    static constraints = {
        projectName blank: false
        projectId blank: false
        startDate blank: false
        endDate  blank: false
        projectBudget nullable: false
    }
}
