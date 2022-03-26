//
//  SnackBar.swift
//  myTunes
//
//  Created by MacOS on 26.03.2022.
//


import Foundation
import SnackBar_swift
class AppSnackBar: SnackBar {
    
    override var style: SnackBarStyle {
        var style = SnackBarStyle()
        style.background = .darkGray
        style.textColor = .white
        style.font = UIFont.boldSystemFont(ofSize: 16)
        style.actionTextColorAlpha = 0.6
        return style
    }
}



