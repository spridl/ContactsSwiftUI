//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Тимур on 26.05.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    let boardName = "Contact List"
    
    var body: some View {
        TabView {
            ContactsView(boardName: boardName, contacts: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            ContactListView(boardName: boardName, contacts: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
