//
//  ContactInfoView.swift
//  ContactsSwiftUI
//
//  Created by Тимур on 26.05.2022.
//

import SwiftUI

struct ContactInfoView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                ImageRowView()
                Spacer()
            }
                
            ContactRowView(imageName: "tray", text: contact.email)
            ContactRowView(imageName: "phone", text: contact.phoneNumber)
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Person.getContactList()[0])
    }
}
