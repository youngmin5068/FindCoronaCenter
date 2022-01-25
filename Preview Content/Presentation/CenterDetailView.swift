//
//  CenterDetailView.swift
//  FindCoronaCenter
//
//  Created by 김영민 on 2022/01/24.
//

import SwiftUI
import MapKit
struct CenterDetailView: View {
    var center: Center
    var body: some View {
        VStack {
            MapView(coordination: center.coordinate)
                .ignoresSafeArea(edges: .all)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
            CenterRow(center: center)
        }
        .navigationTitle(center.facilityName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CenterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let center0 = Center(id: 0, sido: .경기도, facilityName: "실내빙상장 앞", address: "경기도 뫄뫄시 모미구", lat: "37.404476", lng: "126.9491998", centerType: .central, phoneNumber: "919-29391-2939")
        CenterDetailView(center: center0)
    }
}
