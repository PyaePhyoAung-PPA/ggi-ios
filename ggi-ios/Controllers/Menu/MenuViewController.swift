//
//  MenuViewController.swift
//  ggi-ios
//
//  Created by aceplus on 3/7/18.
//  Copyright © 2018 Thuriya ACE Technology. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	var menuImages = [UIImage]()
	var menuList = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		menuImages = [#imageLiteral(resourceName: "Login"),#imageLiteral(resourceName: "Login"),#imageLiteral(resourceName: "Login"),#imageLiteral(resourceName: "Login")]
		menuList = ["menu_message","menu_faq","menu_login","menu_setting"]
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return menuList.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableViewCell
		cell.menuIcon.image = menuImages[indexPath.row]
		cell.menuLabel.text = menuList[indexPath.row].localize(view: cell.menuLabel)
		let count = 0 //UnreadNotiCheck.getUnreadNotiCount()
		if indexPath.row == 4 && count > 0 {
			cell.notiCount.clipsToBounds = true
			cell.notiCount.layer.cornerRadius = 5
			cell.notiCount.backgroundColor = UIColor.red
			cell.notiCount.textColor = UIColor.white
			let space = " "
			cell.notiCount.text = String("\(space)\(count)\(space)")
		}else{
			cell.notiCount.text = nil
		}
		return cell
	}
	
//	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//		var viewController: UIViewController = UIViewController()
//		switch indexPath.row {
//		case 0:
//			viewController = ViewControllerAccess.getEmergencyViewController()
//		case 1:
//			if let user = Global.sharedGlobal.user {
//				if user.isFirstTimeLogin! {
//					let alert = UIAlertController(title: "changePasswordFirst", message: nil, preferredStyle: .alert)
//					alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
//						viewController = ViewControllerAccess.getChangePasswordViewController()
//						let navController = AppNavigationController.init(rootViewController: viewController)
//						self.navigationDrawerController?.transition(to: navController)
//					}))
//					alert.title?.localize(title: alert)
//					navigationDrawerController?.closeRightView()
//					self.present(alert, animated: true, completion: nil)
//					return
//				}else {
//					viewController = ViewControllerAccess.getMyCardViewController()
//				}
//			}else {
//				let alert = UIAlertController(title: "loginFirst" , message: nil, preferredStyle: .alert)
//				alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
//				alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
//					let tabBarController = ViewControllerAccess.getAppTabBarController()
//					tabBarController.selectedIndex = 3
//					self.navigationDrawerController?.transition(to: tabBarController)
//				}))
//				alert.title?.localize(title: alert)
//				navigationDrawerController?.closeRightView()
//				self.present(alert, animated: true, completion: nil)
//				return
//			}
//		case 2:
//			viewController = ViewControllerAccess.getFAQViewController()
//		case 3:
//			viewController = ViewControllerAccess.getHospitalViewController()
//		case 4:
//			viewController = ViewControllerAccess.getInboxViewController()
//		case 5:
//			viewController = ViewControllerAccess.getSettingViewController()
//		default:
//			navigationDrawerController?.closeRightView()
//		}
//		let navController = AppNavigationController.init(rootViewController: viewController)
//		navigationDrawerController?.transition(to: navController, completion: closeNavigationDrawer)
//		tableView.deselectRow(at: indexPath, animated: true)
//	}
	
	fileprivate func closeNavigationDrawer(result: Bool) {
		navigationDrawerController?.closeRightView()
	}
}
