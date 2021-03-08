//
//  HomeViewController.swift
//  foddApp
//
//  Created by Admin on 2021-03-03.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
  
   
    @IBOutlet weak var tableView: UITableView!
    
   var name = ["Chili Burger", "veggle Burgers", "Bison Burgers", "Wild Salomon Burger", "Black Bean Burgers"]
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        
        cell?.lbl.text = name[indexPath.row]
        cell?.img.image = UIImage(named: name[indexPath.row])
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "DetailViewController")as? DetailViewController
        vc?.image = UIImage(named: name[indexPath.row])!
        vc?.name = name[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
