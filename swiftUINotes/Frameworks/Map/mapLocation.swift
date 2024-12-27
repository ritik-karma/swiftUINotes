//
//  mapLocation.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 12/20/24.
//

import SwiftUI
import MapKit
import CoreLocation

class LocationManager: NSObject, ObservableObject {
    var locationManager: CLLocationManager?
    
    
    @Published var region = MKCoordinateRegion(center: .init(latitude: 17.9378, longitude: 79.8493), span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    
    //Checking location service in device
    func checkLocationServiceEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
        } else {
            print("Location service off in device")
        }
    }
    
    ///Checking l service in app & this func can only be accessed within the class
    private  func checkLocationServiceAuthorization() {
        guard let locationManager = locationManager else{
            return
        }
        switch locationManager.authorizationStatus {
        case .authorizedAlways, .authorizedWhenInUse:
            //users current location
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2))
        case .restricted:
            print("Location restricted")
        case .denied:
            print("user denied loca.. permision")
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        default :
            break
        }
    }
    
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManagerDidChangeAuth(_ manager: CLLocationManager) {
        checkLocationServiceAuthorization()
        }
        
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        //
    }
    
}

struct mapLocation: View {
    @StateObject var viewModel = LocationManager()
    var body: some View {
        Map(coordinateRegion: $viewModel.region)
            .ignoresSafeArea()
            .onAppear{
                viewModel.checkLocationServiceEnabled()
            }
    }
}

#Preview {
    mapLocation()
}
