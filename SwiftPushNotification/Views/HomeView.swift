//
//  HomeView.swift
//  SwiftPushNotification
//
//  Created by Denidu Gamage on 2025-05-13.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = NotificationViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                Text("Swift Push Notifications")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Button("Send Local Notification") {
                    viewModel.sendTestNotification()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                NavigationLink("Notification Settings", destination: NotificationSettingsView())
            }
            .padding()
        }
    }
}

