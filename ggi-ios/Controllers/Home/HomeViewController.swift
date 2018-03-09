//
//  HomeViewController.swift
//  ggi-ios
//
//  Created by aceplus on 3/8/18.
//  Copyright © 2018 Thuriya ACE Technology. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

	@IBOutlet weak var motorImg: UIImageView!
	@IBOutlet weak var motorLbl: UILabel!
	@IBOutlet weak var fireImg: UIImageView!
	@IBOutlet weak var fireLbl: UILabel!
	@IBOutlet weak var endowmentImg: UIImageView!
	@IBOutlet weak var endowmentLbl: UILabel!
	@IBOutlet weak var groupLifeImg: UIImageView!
	@IBOutlet weak var groupLifeLbl: UILabel!
	@IBOutlet weak var travelImg: UIImageView!
	@IBOutlet weak var travelLbl: UILabel!
	@IBOutlet weak var healthImg: UIImageView!
	@IBOutlet weak var healthLbl: UILabel!
	@IBOutlet weak var paImg: UIImageView!
	@IBOutlet weak var paLbl: UILabel!
	@IBOutlet weak var cargoImg: UIImageView!
	@IBOutlet weak var cargoLbl: UILabel!
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		localizeText()
	}
	
	func localizeText(){
		motorLbl.text = "motor".localize(view: motorLbl)
		fireLbl.text = "fire".localize(view: fireLbl)
		endowmentLbl.text = "endowment".localize(view: endowmentLbl)
		groupLifeLbl.text = "groupLife".localize(view: groupLifeLbl)
		travelLbl.text = "travel".localize(view: travelLbl)
		healthLbl.text = "health".localize(view: healthLbl)
		paLbl.text = "pa".localize(view: paLbl)
		cargoLbl.text = "cargo".localize(view: cargoLbl)
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
