//
//  ImageRowView.swift
//  ContactsSwiftUI
//
//  Created by Тимур on 26.05.2022.
//

import SwiftUI

struct ImageRowView: View {
    var body: some View {
            Image(systemName: "person.fill")
                .resizable()
                .frame(
                    width: UIScreen.main.bounds.width / 3,
                    height: UIScreen.main.bounds.width / 3
                )
    }
}

struct ImageRowView_Previews: PreviewProvider {
    static var previews: some View {
        ImageRowView()
    }
}
