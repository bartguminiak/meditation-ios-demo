import UIKit

protocol AppConfiguring {
    func configure(in window: UIWindow)
    func bringActionViewToFront()
}

class AppConfigurator: AppConfiguring, ActionViewControllerOperating {

    let viewControllersFactory: AppViewControllersFactory
    let animator: Animating

    init(viewControllersFactory: AppViewControllersFactory,
         animator: Animating) {
        self.viewControllersFactory = viewControllersFactory
        self.animator = animator
    }

    // MARK: - AppConfiguring

    func configure(in window: UIWindow) {
        self.window = window

        let tabBarViewController = viewControllersFactory.tabBar([viewControllersFactory.home()])
        window.rootViewController = tabBarViewController

        let actionViewController = viewControllersFactory.action()
        self.actionViewController = actionViewController
        window.addSubview(actionViewController.view)

        actionViewController.view.pinCenterX(to: window.centerXAnchor)
        actionViewControllerTopConstraint = actionViewController.view.pinTop(to: window.safeAreaLayoutGuide.topAnchor)

    }

    func bringActionViewToFront() {
        guard let actionView = actionViewController?.view else { return }
        window?.bringSubviewToFront(actionView)
    }

    var actionViewControllerTopConstraint: NSLayoutConstraint?
    var actionViewController: UIViewController?
    var window: UIWindow?

}
