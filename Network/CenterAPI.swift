//
//  CenterAPI.swift
//  FindCoronaCenter
//
//  Created by 김영민 on 2022/01/24.
//

import Foundation


struct CenterAPI {
    static let scheme = "https"
    static let host = "api.odcloud.kr/api"
    static let path = "/15077586/v1/centers"
    
    func getCenterListComponents() -> URLComponents {
        var components = URLComponents()
        
        components.scheme = CenterAPI.scheme
        components.host = CenterAPI.host
        components.path = CenterAPI.path
        
        components.queryItems = [
            URLQueryItem(name: "perPage", value: "300")
        ]
        
        return components
    }
}
