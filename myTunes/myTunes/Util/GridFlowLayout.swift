//
//  GridFlowLayout.swift
//  myTunes
//
//  Created by MacOS on 23.03.2022.
//

import Foundation
import UIKit

class GridFlowLayout: UICollectionViewFlowLayout {
    
 
    let itemHeight: CGFloat = 300
    
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }

    
    func setupLayout() {
        minimumInteritemSpacing = 1
        minimumLineSpacing = 5
        scrollDirection = .vertical
    }
 
    var itemWidth: CGFloat {
        return UIScreen.main.bounds.width / 2 - 10
    }
    
    override var itemSize: CGSize {
        set {
            self.itemSize = CGSize(width: itemWidth, height: itemHeight)
            
        }
        get {
            return CGSize(width: itemWidth, height: itemHeight)
        }
    }
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return collectionView!.contentOffset
    }
}
