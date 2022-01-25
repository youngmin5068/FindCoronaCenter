//
//  CenterList.swift
//  FindCoronaCenter
//
//  Created by 김영민 on 2022/01/24.
//

import SwiftUI

struct CenterList: View {
    var centers = [Center]()
    var body: some View {
        List(centers,id: \.id){ center in
            NavigationLink(destination: CenterDetailView(center: center)){
            CenterRow(center: center)
            }
            .navigationTitle(center.sido.rawValue)
        }
       
    }
}

struct CenterList_Previews: PreviewProvider {
    static var previews: some View {
        CenterList()
    }
}
