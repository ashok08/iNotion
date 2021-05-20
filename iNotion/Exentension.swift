//
//  Exentension.swift
//  iNotion
//
//  Created by Ashok on 20/05/21.
//

import Foundation
import UIKit
//MARK: - UICollectionView
extension UICollectionView{
    
    func dequeueXib<T>(_ identifier :String, _ indexPath:IndexPath, _ OfClass :T.Type) -> T{
        self.register(UINib(nibName: identifier, bundle:nil), forCellWithReuseIdentifier: identifier)
        let cell = self.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? T
        return cell!
    }
}
