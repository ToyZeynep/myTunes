//
//  ArtistCollectionViewCell.swift
//  myTunes
//
//  Created by MacOS on 24.03.2022.
//

import UIKit

class ArtistCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var artistImageVirew: UIImageView!
    @IBOutlet weak var wrapperTypeLabel: UILabel!
    @IBOutlet weak var primaryGenreName: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
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
    }
    
    func configure(model: MyTunesList.Fetch.ViewModel.MyTunes){
       artistNameLabel.text = model.artistName
       primaryGenreName.text = model.primaryGenreName
       wrapperTypeLabel.text = model.wrapperType
        artistImageVirew.image = UIImage(named: "artist")
    }
}
