//
//  MyTunesCollectionViewCell.swift
//  myTunes
//
//  Created by MacOS on 23.03.2022.
//

import UIKit

class TrackCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var wrapperType: UILabel!
    @IBOutlet weak var kind: UILabel!
    @IBOutlet weak var trackName: UILabel!
     @IBOutlet weak var artWorkImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let margins = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        contentView.frame = contentView.frame.inset(by: margins)
        contentView.layer.cornerRadius = 8
        contentView.backgroundColor = UIColor.white
        contentView.layer.borderColor = UIColor.systemMint.cgColor
        contentView.layer.borderWidth = 1
        contentView.clipsToBounds = true
        artWorkImageView.layer.cornerRadius = 8
    }
   
    func configure(model: MyTunesList.Fetch.ViewModel.MyTunes){
        trackName.text = model.trackName
        wrapperType.text = model.wrapperType
        kind.text = model.kind
        artWorkImageView.kf.setImage(with: URL(string: (model.artworkUrl100) ?? ""))
        favoriteButton.isUserInteractionEnabled = false
        favoriteButton.isHidden = true
    }
    
    func configureFavorites(model: FavoriteList.Fetch.ViewModel.MyTunes){
        trackName.text = model.trackName
        wrapperType.text = model.wrapperType
        kind.text = model.kind
        artWorkImageView.kf.setImage(with: URL(string: (model.artworkUrl100) ?? ""))
        favoriteButton.setImage(UIImage(named: "heart")?.withRenderingMode(.alwaysTemplate), for: .normal)
        favoriteButton.tintColor = .systemRed
    }
}
