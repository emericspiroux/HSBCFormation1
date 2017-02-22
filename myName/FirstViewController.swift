//
//  FirstViewController.swift
//  myName
//
//  Created by larry on 21/02/2017.
//  Copyright © 2017 spiroux-web. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

	
	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var label: UILabel!
	
	override func viewDidLoad() {
		self.label.text = "Label vide"
		self.textField.placeholder = "Ecrire ici"
	}
	
	@IBAction func okAction(_ sender: UIButton) {
		
		if let text = self.textField.text, text != "" {
			if text == "toto" {
				self.performSegue(withIdentifier: "goToSecondView", sender: self)
			} else {
				self.label.text = text
			}
		} else {
			self.label.text = "Texte vide"
		}
		
	}
	
}
