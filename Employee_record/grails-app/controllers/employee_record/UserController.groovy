package employee_record

import grails.plugin.springsecurity.annotation.Secured

import java.security.Security

class UserController {

    @Secured(['ROLE_ADMIN'])
    def create()
    {
        User user=new User()
        [user:user]
        /*render view: 'create'*/
    }

    @Secured(['ROLE_ADMIN'])
    def save()
    {
        def user=new User(params)
        user.save()//(failOnError:true)
        render 'user saved successfully'
        redirect('http://google.com')

    }

    @Secured(['ROLE_ADMIN'])
    def show()
    {
        def user=User.get(params.id)
        [user: user]
    }

}