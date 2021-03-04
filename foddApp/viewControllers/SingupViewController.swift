//
//  SingupViewController.swift
//  foddApp
//
//  Created by Admin on 2021-03-03.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore



class SingupViewController: UIViewController {
    
    
    @IBOutlet weak var EmailText: UITextField!
    
    
    @IBOutlet weak var PhoneText: UITextField!
    
    @IBOutlet weak var PasswordText: UITextField!
    
    @IBOutlet weak var RegisterBtn: UIButton!
    
    @IBOutlet weak var LogingBtn: UIButton!
    
    
    @IBOutlet weak var ForgetBtn: UIButton!
    
    
    @IBOutlet weak var Errorlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        SetUpElement()
       
         
    }
    
    func SetUpElement()
    {
        Errorlbl.alpha = 0
        
    }
    
    func validateFileds() -> String? {
        
        if EmailText.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PhoneText.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            PasswordText.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            
            return "Pleases fill the Email correctly"
        }
        
        
        
        return nil
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func RegisterAc(_ sender: Any) {
        
        let error = validateFileds()
        
        if error != nil{
            self.ShowError(error!)
        }else{
            
            let Email = EmailText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let Password = PasswordText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        //    let Phonenumber = PhoneText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            
            Auth.auth().createUser(withEmail: Email, password: Password) { (results, err) in
                if err != nil{
                    
                    self.ShowError("user creating error ")
                }else
                {
                    //let db = Firestore.firestore()
                   
                    let db = Firestore.firestore()
                    db.collection("Users").addDocument(data: ["Email":Email, "Password":Password, "uid":results!.user.uid]) { (error) in
                        if error != nil{
                            self.ShowError("Error saving user data")
                        }
                    }
                    
                    self.TransitionToHome()
                    
                    
                }
            }
            
            
            
        }
    }
    
    
func TransitionToHome(){
    let homeViewController =
    storyboard?.instantiateViewController(withIdentifier: Constrants.Stroyboard.homeViewController)as?
    HomeViewController
    
    view.window?.rootViewController = homeViewController
    view.window?.makeKeyAndVisible()
    }
   
func ShowError(_ message: String){
    Errorlbl.text = message
    Errorlbl.alpha = 1
}
    
func LogingBtnAc(_ sender: Any) {
    }
    
func ForgetBtnAc(_ sender: Any) {
    }
    

}
