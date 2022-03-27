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
    
    var router: SplashRoutingLogic?
    @IBOutlet weak var splashImageView: UIImageView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        let viewController = self
        let router = SplashRouter()
        viewController.router = router
        router.viewController = viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        splashImageView.loadGif(asset: "splash")
        splashImageView.translatesAutoresizingMaskIntoConstraints = false
        splashImageView.contentMode = .scaleAspectFit
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {[self] in
            router?.routeToList()
        }
    }
}
