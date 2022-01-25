//
//  MapView.swift
//  FindCoronaCenter
//
//  Created by 김영민 on 2022/01/24.
//

import SwiftUI
import MapKit

//핑 표시
struct AnnotationItem: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}
struct MapView: View {
    var coordination: CLLocationCoordinate2D
    //외부의 영향을 받지 않는 것을 State
    @State private var region = MKCoordinateRegion()
    @State private var annotationItems = [AnnotationItem]()
    var body: some View {
        Map(
            coordinateRegion: $region,
            annotationItems: [AnnotationItem(coordinate: coordination)],
            annotationContent:{
                MapMarker(coordinate: $0.coordinate)
            }
        )
            .onAppear{
                setRegion(coordination)
                setAnnotationItems(coordination)
            }
    }
    
    private func setRegion (_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    }
    private func setAnnotationItems (_ coordinate : CLLocationCoordinate2D) {
        annotationItems = [AnnotationItem(coordinate: coordinate)]
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        let center0 = Center(id: 0, sido: .경기도, facilityName: "실내빙상장 앞", address: "경기도 뫄뫄시 모미구", lat: "37.404476", lng: "126.9491998", centerType: .central, phoneNumber: "919-29391-2939")
        MapView(coordination: CLLocationCoordinate2D(
            latitude: CLLocationDegrees(center0.lat) ?? 0,
            longitude: CLLocationDegrees(center0.lng) ?? 0))
    }
}
