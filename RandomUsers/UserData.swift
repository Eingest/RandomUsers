//
//  UserData.swift
//  RandomUsers
//
//  Created by Andreas Kiesel on 23.06.22.
//

import Foundation

@MainActor
class UserData: ObservableObject {
    // Published updates users with the new Data from UsersView
    @Published var users: [User] = []
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users
        }
        catch {
            print(error)
        }
    }
}
