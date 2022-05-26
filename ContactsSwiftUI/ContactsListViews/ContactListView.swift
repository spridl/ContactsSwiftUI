//
//  ContactListView.swift
//  ContactsSwiftUI
//
//  Created by Тимур on 26.05.2022.
//

import SwiftUI

struct ContactListView: View {
    let boardName: String
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                Section(contact.fullName) {
                    ContactRowView(imageName: Contacts.email.rawValue, text: contact.email)
                    ContactRowView(imageName: Contacts.phone.rawValue, text: contact.phoneNumber)
                }
                .listStyle(.insetGrouped)
                .textCase(nil)
            }
            .navigationTitle(boardName)
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(boardName: "Contact List", contacts: Person.getContactList())
    }
}
