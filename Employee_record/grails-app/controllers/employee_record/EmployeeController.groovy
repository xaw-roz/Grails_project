package employee_record

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.security.*

import java.sql.Time
import java.time.Instant

class EmployeeController {
    SpringSecurityService springSecurityService


    @Secured(['ROLE_ADMIN'])
    def create()
    {
        Employee employee=new Employee()
        [employee:employee]
    }
    //def index() { }
    @Secured (['ROLE_ADMIN'])
    def save()
    {
        def user=new User(params)
        def employee=new Employee(params)
        user.save()
        employee.save()
        def userRole = Role.findByAuthority('ROLE_USER')
        UserRole.create(user,userRole)
        redirect action:'index'

    }
    @Secured (['ROLE_ADMIN'])
    def show(){
        def employee=User.get(params.id)
        //render employee.firstName
        [employee:employee]
    }
    @Secured(['ROLE_USER'])
    def home(){
       //. User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal()

       // request.getSession().setAttribute("userID",u.id);
        def u=springSecurityService.currentUser
        Float totalamount =0
        if(u.timeDiff!=null) {
            totalamount = ((u.timeDiff / 100) / 3600)
        }
        else {
            u.timeDiff=0
        }


        [user:u,amount:totalamount]

    }
    @Secured (['ROLE_ADMIN','ROLE_USER'])
    def auth() {

        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            redirect action: 'home'
        } else if (SpringSecurityUtils.ifAllGranted('ROLE_USER')) {
            redirect action: 'home'
        }
    }
    @Secured(['ROLE_USER'])
    def checkIn(){
        def u=springSecurityService.currentUser
        u.checkIn=System.currentTimeMillis()
        redirect action: 'home'

    }
    @Secured(['ROLE_USER'])
    def checkOut(){
        def u=springSecurityService.currentUser
        u.checkOut=System.currentTimeMillis()
        u.timeDiff=u.timeDiff+(u.checkOut-u.checkIn)
        redirect action: 'home'
    }
    @Secured(['ROLE_USER'])
    def index(){
        //. User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal()
        def u=springSecurityService.currentUser
        // request.getSession().setAttribute("userID",u.id);
        //redirect action:'checkIn'

    }
}
