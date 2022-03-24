//
//  MyTunesDetailsRouter.swift
//  myTunes
//
//  Created by MacOS on 24.03.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MyTunesDetailsRoutingLogic: AnyObject {
   
}

protocol MyTunesDetailsDataPassing: AnyObject {
    var dataStore: MyTunesDetailsDataStore? { get }
}

final class MyTunesDetailsRouter:MyTunesDetailsRoutingLogic, MyTunesDetailsDataPassing {
    weak var viewController: MyTunesDetailsViewController?
    var dataStore: MyTunesDetailsDataStore?

}
