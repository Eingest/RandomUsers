//
//  ContentView.swift
//  RandomUsers
//
//  Created by Andreas Kiesel on 23.06.22.
//

import SwiftUI

struct UsersView: View {
    // StateObject updates the UI if the users change
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Raw JSON Data: ")
                ScrollView {
                    Text(userData.users)
                }
            }
        }
        .padding()
        .navigationTitle("Random Users")
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
