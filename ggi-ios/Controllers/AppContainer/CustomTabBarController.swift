//
//  CustomTabBarController.swift
//  ggi-ios
//
//  Created by aceplus on 3/7/18.
//  Copyright © 2018 Thuriya ACE Technology. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
	
	@IBOutlet weak var appTabBar: UITabBar!
	let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setupMiddleButton()
		hideTabBarItems()
    }

	// MARK: - Setups
	
	func setupMiddleButton() {
		var menuButtonFrame = menuButton.frame
		menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height
		menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
		menuButton.frame = menuButtonFrame
		
		menuButton.backgroundColor = UIColor(red:0.09, green:0.53, blue:0.70, alpha:1.0)
		menuButton.layer.cornerRadius = menuButtonFrame.height/2
		view.addSubview(menuButton)
		
		menuButton.setImage(UIImage(named: "minus"), for: .normal)
		menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
		
		view.layoutIfNeeded()
	}
	
	
	// MARK: - Actions
	
	@objc private func menuButtonAction(sender: UIButton) {
		if menuButton.currentImage == UIImage(named: "minus"){
			hideTabBarItems()
		}else{
			showTabBarItems()
		}
	}
	
	func hideTabBarItems(){
		for item in appTabBar.items! {
			item.image = nil
			item.title = nil
		}
		menuButton.setImage(UIImage(named: "Plus"), for: .normal)
		appTabBar.isUserInteractionEnabled = false
	}
	
	func showTabBarItems(){
		menuButton.setImage(UIImage(named: "minus"), for: .normal)
		for item in appTabBar.items! {
			item.image = #imageLiteral(resourceName: "Home")
			item.title = "Home"
		}
		appTabBar.isUserInteractionEnabled = true
	}
	
	func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
		if viewController == tabBarController.viewControllers![3] {
			if let url = URL(string: "tel://\(StaticVars.PHONENO)"), UIApplication.shared.canOpenURL(url) {
				if #available(iOS 10, *) {
					UIApplication.shared.open(url)
				} else {
					UIApplication.shared.openURL(url)
				}
			}
		}
		return false
	}
}
