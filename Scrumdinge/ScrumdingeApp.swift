//
//  ScrumdingeApp.swift
//  Scrumdinge
//
//  Created by Esraa Abdelfatah on 18/05/2024.
//

import SwiftUI

@main
struct ScrumdingeApp: App {
    var body: some Scene {
        WindowGroup {
           
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
