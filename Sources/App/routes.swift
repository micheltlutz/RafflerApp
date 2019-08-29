import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.get { req -> Future<View> in
        let controller = RefflerController()
        return try req.view().render("reffler", [
            "name": controller.ramdomName()
            ])
    }
}
