//
//  SelectRegionItem.swift
//  FindCoronaCenter
//
//  Created by 김영민 on 2022/01/24.
//

import SwiftUI

struct SelectRegionItem: View {
    var region : Center.Sido
    var count : Int
    var body: some View {
        ZStack{
            Color(white: 0.9)
            VStack{
                Text(region.rawValue)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                Text("\(count)")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
            }
            .padding()
        }.cornerRadius(20)
    }
}

struct SelectRegionItem_Previews: PreviewProvider {
    static var previews: some View {
        let region0 = Center.Sido.경상남도
        SelectRegionItem(region: region0, count: 3)
    }
}
