package employee_record

import grails.plugin.springsecurity.annotation.Secured

import java.security.Security

class UserController {

    def index() { }

    @Secured(['ROLE_ADMIN'])
    def create()
    {
        render view: 'create'
    }

    @Secured(['permitAll'])
    def save()
    {
        def user=new User(params)
        user.save(failOnError:true)
        render 'user saved successfully'
        redirect('http://google.com')

    }
}
