//
//  LaunchScreenController.swift
//  ggi-ios
//
//  Created by aceplus on 3/6/18.
//  Copyright © 2018 Thuriya ACE Technology. All rights reserved.
//

import UIKit

class LaunchScreenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		UIApplication.shared.statusBarView?.backgroundColor = .red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
