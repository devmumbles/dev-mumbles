import Kitura
import LoggerAPI
import HeliumLogger
import KituraStencil
import CouchDB
import Foundation

HeliumLogger.use()

let connProperties = ConnectionProperties(
    host: ProcessInfo.processInfo.environment["DB_HOST"]!,
    port: UInt16(ProcessInfo.processInfo.environment["DB_PORT"]!) ?? 5984,
    secured: false,
    username: ProcessInfo.processInfo.environment["DB_USER"],
    password: ProcessInfo.processInfo.environment["DB_PASSWORD"]
)

let router = Router()
router.add(templateEngine: StencilTemplateEngine())

router.all("/assets", middleware: StaticFileServer(path: "./public"))

router.get("/") { _, response, next in
    let context: [String : Any] = ["text": "Hello World!", "title": "DevMumbles - Podcast about Technology, Business and Career"]

    try response.render("HelloWorld.stencil", context: context)
    response.status(.OK)
    next()
}

Kitura.addHTTPServer(onPort: 8080, with: router)
Kitura.addFastCGIServer(onPort: 9000, with: router)
Kitura.run()
