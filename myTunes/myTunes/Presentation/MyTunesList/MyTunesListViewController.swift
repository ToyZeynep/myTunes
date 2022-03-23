//
//  MyTunesListViewController.swift
//  myTunes
//
//  Created by MacOS on 23.03.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MyTunesListDisplayLogic: AnyObject
{
    func displayMyTunes(viewModel: MyTunesList.Fetch.ViewModel)

}

final class MyTunesListViewController: UIViewController {
    var interactor: MyTunesListBusinessLogic?
    var router: ( MyTunesListRoutingLogic & MyTunesListDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: - Setup Clean Code Design Pattern
    
    private func setup() {
        let viewController = self
        let interactor = MyTunesListInteractor(worker: MyTunesListWorker())
        let presenter = MyTunesListPresenter()
        let router = MyTunesListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.fetchMyTunesList()
    }
    
}
// MARK: - display view model from MyTunesListPresenter
extension MyTunesListViewController: MyTunesListDisplayLogic{
    func displayMyTunes(viewModel: MyTunesList.Fetch.ViewModel) {
        
    }
}
