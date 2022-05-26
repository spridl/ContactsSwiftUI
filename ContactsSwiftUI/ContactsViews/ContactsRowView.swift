//
//  ContactsRowView.swift
//  ContactsSwiftUI
//
//  Created by Тимур on 26.05.2022.
//

import SwiftUI

struct ContactsRowView: View {
    let contact: Person
    
    var body: some View {
        Text(contact.fullName)
    }
}

struct ContactsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsRowView(contact: Person.getContactList()[0])
    }
}
