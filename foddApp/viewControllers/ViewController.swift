//
//  ViewController.swift
//  foddApp
//
//  Created by Admin on 2021-03-03.
//

import UIKit

class ViewController: UIViewController {

    
    var name = ["nimnadi fernando", "tinhy phatuge", "Jananani Bannaka", "Avishka Baalsuriya", "Lasitha Silva", "Chathura Bannaka","Crash Number1", "crash Number2" ]
    
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
     //   SingupViewController()
        // Do any additional setup after loading the view.
    }


}


extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
}
