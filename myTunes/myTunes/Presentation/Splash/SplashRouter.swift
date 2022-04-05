//
//  SplashRouter.swift
//  myTunes
//
//  Created by MacOS on 27.03.2022.
//

import Foundation
import UIKit

protocol SplashRoutingLogic: AnyObject {
    func routeToList()
}

final class SplashRouter:  SplashRoutingLogic{
    weak var viewController: SplashViewController?

    func routeToList() {
        let storyBoard = UIStoryboard(name: "MyTunesList", bundle: nil)
        let destVC: MyTunesListViewController = storyBoard.instantiateViewController(identifier: "MyTunesList")
        destVC.modalPresentationStyle = .fullScreen
        viewController?.navigationController?.pushViewController(destVC, animated: true)
    }
}
