//
//  ApiConfiguration.swift
//  myTunes
//
//  Created by MacOS on 23.03.2022.
//

import Foundation
import Alamofire

protocol APIConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}
