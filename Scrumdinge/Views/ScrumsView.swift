//
//  ScrumsView.swift
//  Scrumdinge
//
//  Created by Esraa Abdelfatah on 18/05/2024.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack{
            List(scrums){ scrum in
                NavigationLink(destination: DetailsView(scrum: scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar{
                Button(action:{}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

#Preview {
    
    ScrumsView(scrums: DailyScrum.sampleData)
}
