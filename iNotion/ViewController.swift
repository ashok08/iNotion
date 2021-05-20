//
//  ViewController.swift
//  iNotion
//
//  Created by Ashok on 18/05/21.
//

import UIKit
import NotionClient

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var database = [NotionPage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        APIRequest.shared.postRequest(onSuccess: { (values) in
            self.database = values!
            self.collectionView.reloadData()
        }) { (error) in
            print(error!)
    
    }
}
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.database.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueXib("CardCVCell", indexPath, CardCVCell.self)
        cell.setUI(pages: self.database[indexPath.row], index: indexPath.row)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.size.width/2) - 10, height: 180)
    }
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}

