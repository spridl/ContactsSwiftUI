//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Тимур on 26.05.2022.
//

import SwiftUI

enum TabBarImageItem: String {
    case contacts = "person.3"
    case numbers = "phone"
}

struct ContentView: View {
    let persons = Person.getContactList()
    let boardName = "Contact List"
    
    var body: some View {
        TabView {
            ContactsView(boardName: boardName, contacts: persons)
                .tabItem {
                    Image(systemName: TabBarImageItem.contacts.rawValue)
                    Text("Contacts")
                }
            ContactListView(boardName: boardName, contacts: persons)
                .tabItem {
                    Image(systemName: TabBarImageItem.numbers.rawValue)
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
