//
//  LogingViewController.swift
//  foddApp
//
//  Created by Admin on 2021-03-03.
//

import UIKit

class LogingViewController: UIViewController {
    
    
    @IBOutlet weak var EmailText: UITextField!
    
    
    @IBOutlet weak var PasswordText: UITextField!
    
    @IBOutlet weak var LoginBtn: UIButton!
    
    
    @IBOutlet weak var ErrorLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        SetUpElements()
    }
    
    func SetUpElements()
    {
        ErrorLbl.alpha = 0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func LogingBtnAc(_ sender: Any) {
    }
    
    

}
