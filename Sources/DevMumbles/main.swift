import Kitura
import LoggerAPI
import HeliumLogger
import KituraStencil

HeliumLogger.use()

let router = Router()
router.add(templateEngine: StencilTemplateEngine())

router.get("/") { _, response, next in
    let context: [String : Any] = ["text": "Hello World!", "title": "DevMumbles - Podcasts about IT"]

    try response.render("HelloWorld.stencil", context: context)
    response.status(.OK)
    next()
}

Kitura.addHTTPServer(onPort: 8080, with: router)
// Kitura.addFastCGIServer(onPort: 8080, with: router)
Kitura.run()
