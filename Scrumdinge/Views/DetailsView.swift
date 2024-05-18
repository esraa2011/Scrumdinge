//
//  DetailsView.swift
//  Scrumdinge
//
//  Created by Esraa Abdelfatah on 18/05/2024.
//

import SwiftUI

struct DetailsView: View {
    let scrum: DailyScrum
    var body: some View {
       
            List{
                Section(header: Text("Metting Info")) {
                    NavigationLink(destination: MeetingView(scrum: scrum) ){
                        Label("Start Metting", systemImage: "timer")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                    }.navigationTitle(scrum.title)
                    HStack {
                        Label("Length", systemImage: "clock")
                        Spacer()
                        Text("\(scrum.lengthInMinutes) minutes")
                    }
                    .accessibilityElement(children: .combine)
                    
                    HStack {
                        Label("Theme", systemImage: "paintpalette")
                        Spacer()
                        Text("\(scrum.theme.name)")
                            .padding(4)
                            .foregroundColor(scrum.theme.accentColor)
                            .background(scrum.theme.mainColor)
                            .cornerRadius(4)
                        
                    }
                    
                }
                Section(header: Text("Attendees")){
                    ForEach(scrum.attendees) { attendee in
                        Label(attendee.name, systemImage: "person")
                    }
                }
            }
        
        }
}
    

#Preview {
    NavigationStack{
        DetailsView(scrum: DailyScrum.sampleData[0])
    }
}
