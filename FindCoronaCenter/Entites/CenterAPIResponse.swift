//
//  CenterAPIResponse.swift
//  FindCoronaCenter
//
//  Created by 김영민 on 2022/01/24.
//

import Foundation


struct CenterAPIResponse : Decodable {
    let data: [Center]
}
