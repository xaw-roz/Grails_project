package employee_record

import org.hibernate.validator.constraints.Email

/**
 * Created by xenon on 5/17/16.
 */
class ProjectManager {
    String name
    Email emailid
    static hasone = [Project:ProjectManager]
    Date startdate
    Date enddate
}
