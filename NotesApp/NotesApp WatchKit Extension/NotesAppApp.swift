//
//  NotesAppApp.swift
//  NotesApp WatchKit Extension
//
//  Created by SBSCO3 on 11/09/22.
//

import SwiftUI

@main
struct NotesAppApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                //ContentView()
                AddNote()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
