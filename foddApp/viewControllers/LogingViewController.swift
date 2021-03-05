//
//  LogingViewController.swift
//  foddApp
//
//  Created by Admin on 2021-03-03.
//

import UIKit
import FirebaseAuth

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
    
        let email = EmailText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = PasswordText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil{
                self.ErrorLbl.text = error!.localizedDescription
                self.ErrorLbl.alpha = 1
                
            }else{
                let homeViewController =
                    self.storyboard?.instantiateViewController(withIdentifier: Constrants.Stroyboard.homeViewController)as?
                HomeViewController
                
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
    
    

}
