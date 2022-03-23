//
//  MyTunesListInteractor.swift
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

protocol MyTunesListBusinessLogic: AnyObject {

}

protocol MyTunesListDataStore {
    var myTunesList: [ListResponse]? { get set }
}

final class MyTunesListInteractor: MyTunesListBusinessLogic, MyTunesListDataStore {
    var myTunesList: [ListResponse]?
    var presenter: MyTunesListPresentationLogic?
    var worker: MyTunesListWorkingLogic
    
    init(worker: MyTunesListWorkingLogic) {
        self.worker = worker
    }
    
    func fetchMyTunesList(params: [String: Any] ){
        ///2. Adım
        self.worker.getMyTunesList(params: params) {[weak self] result in
            switch result {
            case .success(let response):
                self?.myTunesList = response
                guard let myTunesList = self?.myTunesList else { return }
                ///gelen response'u oluşturduğumuz listeye aktarıyoruz ve parametre olarak presenter a gönderiyoruz
                self?.presenter?.presentMyTunesList(response:  MyTunesList.Fetch.Response( myTunesList: myTunesList))
            case .failure(let error):
                self?.presenter?.presentAlert(title: "Error", message: error.localizedDescription)
            }
        }
    }
}
