//
//  CellTableViewCell.swift
//  foddApp
//
//  Created by Admin on 2021-03-05.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
