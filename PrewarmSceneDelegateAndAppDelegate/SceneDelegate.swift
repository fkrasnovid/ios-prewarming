//
//  SceneDelegate.swift
//  PrewarmSceneDelegateAndAppDelegate
//
//  Created by Filipp K on 18.01.2022.
//

import UIKit

extension UIScene.ActivationState {
	var asNSLog: String {
		switch self {
		case .unattached:
			return "unattached"
		case .background:
			return "background"
		case .foregroundActive:
			return "foregroundActive"
		case .foregroundInactive:
			return "foregroundInactive"
		@unknown default:
			return "default"
		}
	}
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
	class SceneDelegateTestClass {
		init() {
			NSLog("%@", "SceneDelegateTestClass initialized")
		}
	}

	var window: UIWindow?
	let test = SceneDelegateTestClass()

	override init() {
		super.init()
		NSLog("%@", "SceneDelegate initialized")
	}


	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		NSLog("[SceneDelegate willConnectTo] activationState: %@", scene.activationState.asNSLog)

		if let windowScene = scene as? UIWindowScene {
			window = UIWindow(windowScene: windowScene)
			let vc = UIViewController()
			vc.view.backgroundColor = .gray
			window?.rootViewController = vc
			window?.makeKeyAndVisible()
		}
	}

	func sceneDidDisconnect(_ scene: UIScene) {
		NSLog("%@", #function)
	}

	func sceneDidBecomeActive(_ scene: UIScene) {
		NSLog("%@", #function)
	}

	func sceneWillResignActive(_ scene: UIScene) {
		NSLog("%@", #function)
	}

	func sceneWillEnterForeground(_ scene: UIScene) {
		NSLog("%@", #function)
	}

	func sceneDidEnterBackground(_ scene: UIScene) {
		NSLog("%@", #function)
	}
}

