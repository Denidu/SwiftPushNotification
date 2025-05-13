//
//  NotificationSettingsView.swift
//  SwiftPushNotification
//
//  Created by Denidu Gamage on 2025-05-13.
//

import SwiftUI

struct NotificationSettingsView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Manage Notifications")
                .font(.title3)

            Button("Open iOS Settings") {
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url)
                }
            }
            .foregroundColor(.blue)
        }
        .padding()
    }
}

