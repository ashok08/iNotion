//
//  cardTVCell.swift
//  iNotion
//
//  Created by Ashok on 20/05/21.
//

import UIKit
import NotionClient
class cardTVCell: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var likesLbl: UILabel!
    @IBOutlet weak var commentLbl: UILabel!
    @IBOutlet weak var bookmarkLbl: UILabel!
    @IBOutlet weak var descrpLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUI(databaseValue:NotionPage){

        self.titleLbl.text = databaseValue.title


    }
    
}
