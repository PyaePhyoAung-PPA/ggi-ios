//
//  AppNavigationController.swift
//  ggi-ios
//
//  Created by aceplus on 3/7/18.
//  Copyright © 2018 Thuriya ACE Technology. All rights reserved.
//

import UIKit
import Material

class AppNavigationController: UINavigationController {
	
	fileprivate var menuButton: UIBarButtonItem!
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		prepareMenuButton()
		prepareNaigationBar()
	}

}

extension AppNavigationController{
	
	fileprivate func prepareMenuButton() {
		menuButton = UIBarButtonItem(image: Icon.menu, style: UIBarButtonItemStyle.plain, target: self, action: #selector(handleMenuButton))
	}
	
	fileprivate func prepareNaigationBar() {
		navigationBar.barTintColor = UIColor(red:0.27, green:0.36, blue:0.53, alpha:1.0)
		navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
		for item in navigationBar.items! {
			item.leftBarButtonItem = menuButton
			item.leftBarButtonItem?.tintColor = UIColor.white
		}
	}
}

extension AppNavigationController{
	@objc
	fileprivate func handleMenuButton() {
		navigationDrawerController?.toggleLeftView()
	}
}
