//
//  ResultCell.swift
//  QiitaClient
//
//  Created by Masato Ishikawa on 2021/12/18.
//

import SwiftUI

struct ResultCell: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            Text("記事タイトル")
                .font(.title2)
            
            HStack {
                AsyncImage(url: URL(string: "https://assets.st-note.com/production/uploads/images/63638586/rectangle_large_type_2_036bad6b2400148e2bab52d71576f4cc.jpg?width=800")) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 25, height: 25)
                .clipShape(Circle())
                
                Text("@username")
            }
            
            Divider()
        }
        
    }
}

struct ResultCell_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ForEach(0...3, id: \.self) { _ in
                ResultCell()
            }
        }
        .padding()
    }
}
