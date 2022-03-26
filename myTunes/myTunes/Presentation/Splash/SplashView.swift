//
//  SplashView.swift
//  myTunes
//
//  Created by MacOS on 26.03.2022.
//

import Foundation
import UIKit
import SwiftGifOrigin

class SplashViewController: UIViewController {
    
    @IBOutlet weak var splashImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        splashImageView.loadGif(asset: "splash")
        splashImageView.translatesAutoresizingMaskIntoConstraints = false
        splashImageView.contentMode = .scaleAspectFit
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {[self] in
            let storyBoard = UIStoryboard(name: "MyTunesList", bundle: nil)
            let destVC: MyTunesListViewController = storyBoard.instantiateViewController(identifier: "MyTunesList")
            destVC.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(destVC, animated: true)
        }
    }
}
