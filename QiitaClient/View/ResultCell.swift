//
//  ResultCell.swift
//  QiitaClient
//
//  Created by Masato Ishikawa on 2021/12/18.
//

import SwiftUI

struct ResultCell: View {
    let viewModel: ResultCellViewModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            Text(viewModel.article.title)
                .font(.title2)
            
            HStack {
                AsyncImage(url: viewModel.authorImageUrl) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 25, height: 25)
                .clipShape(Circle())
                
                Text(viewModel.article.user.name)
            }
            
            Divider()
        }
        
    }
}
