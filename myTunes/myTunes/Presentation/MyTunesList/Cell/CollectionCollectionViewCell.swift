//
//  CollectionCollectionViewCell.swift
//  myTunes
//
//  Created by MacOS on 24.03.2022.
//

import UIKit

class CollectionCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var wrapperType: UILabel!
    @IBOutlet weak var collectionName: UILabel!
    @IBOutlet weak var collectionImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let margins = UIEdgeInsets(top: 10, left: 4, bottom: 10, right: 4)
        contentView.frame = contentView.frame.inset(by: margins)
        contentView.layer.cornerRadius = 8
        contentView.backgroundColor = UIColor.white
        contentView.layer.borderColor = UIColor.systemMint.cgColor
        contentView.layer.borderWidth = 1
        contentView.clipsToBounds = true
        collectionImageView.layer.cornerRadius = 8
    }

    func configure(model: MyTunesList.Fetch.ViewModel.MyTunes){
        country.text = model.country
        collectionName.text = model.collectionName
        wrapperType.text = model.wrapperType
        collectionImageView.kf.setImage(with: URL(string: (model.artworkUrl100) ?? ""))
    }
}
