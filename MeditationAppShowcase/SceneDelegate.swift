import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    private let container = Container()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        let appConfigurator = container.appConfigurator()
        appConfigurator.configure(in: window)
        self.window = window
        window.makeKeyAndVisible()
        appConfigurator.bringActionViewToFront()
    }
}
