//
//  DetailViewController.swift
//  foddApp
//
//  Created by Admin on 2021-03-07.
//

import UIKit

class DetailViewController: UIViewController {
   
    
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    
    var image = UIImage()
    var name = ""
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        
        namelbl.text = "selected item"
        img.image = image
        
        
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btn(_ sender: Any) {
    }
    
}
