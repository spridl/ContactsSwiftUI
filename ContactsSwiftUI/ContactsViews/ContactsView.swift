//
//  ContactsView.swift
//  ContactsSwiftUI
//
//  Created by Тимур on 26.05.2022.
//

import SwiftUI

struct ContactsView: View {
    let boardName: String
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: ContactInfoView(contact: contact)) {
                    ContactsRowView(contact: contact)
                }
            }
            .listStyle(.plain)
            .navigationTitle(boardName)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(boardName: "Contacts", contacts: Person.getContactList())
    }
}
