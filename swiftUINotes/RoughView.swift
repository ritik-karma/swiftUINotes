//
//  RoughView.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/7/24.
//

import SwiftUI

struct RoughView: View {
    var body: some View {
        ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text("Apple Scab")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 10)
                        
                        // Cause Section
                        Text("Cause")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("Apple scab is caused by the fungus *Venturia inaequalis*. It thrives in humid conditions and primarily affects leaves and fruits, causing dark, scabby lesions.")
                            .font(.body)
                            .foregroundColor(.gray)
                            .padding(.bottom, 10)
                        
                        // Solution Section
                        Text("Solution")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("To prevent apple scab, ensure proper pruning for air circulation, apply fungicides during early spring, and choose resistant apple varieties where possible.")
                            .font(.body)
                            .foregroundColor(.gray)
                        
                        // Additional UI elements or images can be added here
                    }
                    .padding()
                    .background(Color(UIColor(red: 240/255, green: 247/255, blue: 244/255, alpha: 1.0))) // Soft green background
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                }
    }
}

#Preview {
    RoughView()
}
