//
//  AppNavigationDrawerController.swift
//  ggi-ios
//
//  Created by aceplus on 3/7/18.
//  Copyright © 2018 Thuriya ACE Technology. All rights reserved.
//

import UIKit
import Material

class AppNavigationDrawerController: NavigationDrawerController {

	override var preferredStatusBarStyle: UIStatusBarStyle{
		return .lightContent
	}
	
	open override func prepare() {
		super.prepare()
		//UIApplication.shared.statusBarView?.backgroundColor = UIColor(red:0.27, green:0.36, blue:0.53, alpha:1.0)
		delegate = self
	}
}

extension AppNavigationDrawerController: NavigationDrawerControllerDelegate {
	
}

//extension UIApplication {
//	var statusBarView: UIView? {
//		return value(forKey: "statusBar") as? UIView
//	}
//}

