//
//  ExerciseTableViewCell.swift
//  tableview-demo
//
//  Created by jeanwei on 2020/4/11.
//  Copyright © 2020 jeanwei. All rights reserved.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {
    @IBOutlet weak var Exerciseimageview: UIImageView!
    @IBOutlet weak var Exerciseintrolabel: UILabel!
    
    @IBOutlet weak var Exerciselabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
