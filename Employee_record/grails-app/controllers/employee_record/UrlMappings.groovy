package employee_record

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"employee",action:"auth")
        "500"(view:'/error')
        "404"(view:'/notFound')

    }
}
