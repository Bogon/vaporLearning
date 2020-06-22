import Fluent
import FluentSQLiteDriver
import Vapor
import Leaf

// Called before your application initializes.
public func configure(_ app: Application) throws {

    app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    /// 添加leaf
    app.views.use(.leaf)
    app.leaf.cache.isEnabled = app.environment.isRelease

    // Configure SQLite database
    app.databases.use(.sqlite(.file("db.sqlite")), as: .sqlite)
    
    
    /// 初始化路由
    let modules: [Module] = [FrontendModule(), BlogModule(),]
    for module in modules {
        try module.configure(app)
    }
    
}
