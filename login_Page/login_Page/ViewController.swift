//
//  ViewController.swift
//  login_Page
//
//  Created by OHS on 2023/02/03.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    let 축구선수 = ["박지성","손흥민","안정환"]
    
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtPW: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnActSubmit(_ sender: UIButton) {
        guard let userEmail = txtID.text else { return }
        guard let userPassword = txtPW.text else  { return }
        
        Auth.auth().signIn(withEmail: userEmail, password: userPassword) { [weak self] authResult, error in
            guard self != nil else { return }
            
            if authResult != nil {
                print("로그인 되었습니다")
            } else {
                print("로그인되지 않았습니다.", error?.localizedDescription ?? "")
            }
        }
    }
    
}

