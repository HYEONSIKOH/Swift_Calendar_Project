//
//  ViewController.swift
//  login_Page
//
//  Created by OHS on 2023/02/03.
//

import UIKit
import FirebaseAnalytics
import Firebase

class ViewController: UIViewController {
    
    var ref : FIRDatabaseReference!
    
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtPW: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
}

