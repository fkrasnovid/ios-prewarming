//
//  AppDelegate.swift
//  PrewarmAppDelegate
//
//  Created by Filipp K on 18.01.2022.
//

import UIKit

extension UIApplication.State {
	var asNSLog: String {
		switch self {
		case .background:
			return "background"
		case .inactive:
			return "inactive"
		case .active:
			return "active"
		}
	}
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
	class AppDelegateTestClass {
		init() {
			NSLog("%@", "AppDelegateTestClass initialized")
		}
	}

	var window: UIWindow?
	let test = AppDelegateTestClass()

	override init() {
		super.init()
		NSLog("%@", "AppDelegate initialized")
	}


	// MARK: - UIApplicationDelegate

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		NSLog("[AppDelegate didFinishLaunchingWithOptions] applicationState: %@", application.applicationState.asNSLog)


		window = UIWindow(frame: UIScreen.main.bounds)
		let vc = UIViewController()
		vc.view.backgroundColor = .gray
		window?.rootViewController = vc
		window?.makeKeyAndVisible()

		return true
	}

	func applicationDidFinishLaunching(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
		NSLog("%@", #function)
		return true
	}

	func applicationDidBecomeActive(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func applicationWillResignActive(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func applicationWillTerminate(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func applicationSignificantTimeChange(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func applicationDidEnterBackground(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func applicationWillEnterForeground(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func applicationProtectedDataWillBecomeUnavailable(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func applicationProtectedDataDidBecomeAvailable(_ application: UIApplication) {
		NSLog("%@", #function)
	}

	func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool {
		NSLog("%@", #function)
		return true
	}

	func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
		NSLog("%@", #function)
		return true
	}

	func application(_ application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error) {
		NSLog("%@", #function)
	}

	func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity) {
		NSLog("%@", #function)
	}

	#warning("Если раскомментировать Window не создается T_T")
	//	func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
	//		NSLog("%@", #function)
	//	}

}

