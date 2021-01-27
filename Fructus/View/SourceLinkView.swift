//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Zachary Jensen on 11/20/20.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wiki", destination: URL(string: "www.google.com")!)
                Image(systemName: "arrow.up.right.square")
                
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
