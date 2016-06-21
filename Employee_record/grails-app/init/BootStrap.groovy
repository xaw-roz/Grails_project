import employee_record.Role
import employee_record.User
import employee_record.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
        def userRole = new Role(authority: 'ROLE_USER').save()

        def testUser = new User(username: 'saroj', password: 'admin',firstName: 'Saroj',lastName: 'Shrestha',emailAddress: 'rockstar.saroj@gmail.com',rate: 60).save()
        def test = new User(username: 'a', password: 'admin',firstName: 'Saroj',lastName: 'Shrestha',emailAddress: 'rockstar.saroj@gmail.com',rate: 60).save()

        UserRole.create(testUser, adminRole)
        UserRole.create(test, userRole)

        UserRole.withSession {
            it.flush()
            it.clear()
        }

        assert User.count() == 2
        assert Role.count() == 2
        assert UserRole.count() == 2
    }
    def destroy = {
    }
}
