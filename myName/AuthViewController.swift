//
//  AuthViewController.swift
//  myName
//
//  Created by larry on 21/02/2017.
//  Copyright © 2017 spiroux-web. All rights reserved.
//

import UIKit
import LocalAuthentication

class AuthViewController: UIViewController {

	let touchId = LAContext()

	@IBAction func touchIdAction(_ sender: UIButton) {
		
		var error:NSError?
		
		if touchId.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
			touchId.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Pour se connecter", reply: { (success, error) in
				if success {
					self.performSegue(withIdentifier: "goToLabel", sender: self)
				}
			})
		}
		
		
	}

}
