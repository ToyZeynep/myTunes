//
//  MyTunesCollectionViewCell.swift
//  myTunes
//
//  Created by MacOS on 23.03.2022.
//

import UIKit

class TrackCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var wrapperType: UILabel!
    @IBOutlet weak var kind: UILabel!
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var artistname: UILabel!
    @IBOutlet weak var artWorkImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let margins = UIEdgeInsets(top: 10, left: 4, bottom: 10, right: 4)
        contentView.frame = contentView.frame.inset(by: margins)
        contentView.layer.cornerRadius = 8
        contentView.backgroundColor = UIColor.white
        contentView.layer.borderColor = UIColor.purple.cgColor
        contentView.layer.borderWidth = 1
        contentView.clipsToBounds = true
        
    }
}
