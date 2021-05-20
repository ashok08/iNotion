//
//  CardCVCell.swift
//  iNotion
//
//  Created by Ashok on 20/05/21.
//

import UIKit
import NotionClient

class CardCVCell: UICollectionViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var images = [UIImage(named: "picture1"),UIImage(named: "picture2"),UIImage(named: "picture3")]
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 10
       
    }
    func setUI(pages:NotionPage,index:Int){
        self.titleLbl.text = pages.title
        self.imageView.image = self.images[index]
    }

}
