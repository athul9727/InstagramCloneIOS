//
//  FeedCellView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 09/08/23.
//

import SwiftUI

struct FeedCellView: View {
    var body: some View {
        VStack{
            //image + username
            HStack{
                Image("img1")
                    .resizable().scaledToFill().frame(width: 40,height: 40).clipShape(Circle())
                Text("Chadwick Boseman")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
                
            }.padding(.leading,8)
            //post image
            Image("img1")
                .resizable().scaledToFill().frame(height: 400).clipShape(Rectangle())
            //action buttons
            HStack(spacing:16){
                Button{
                    print("like post")
                }label: {
                    Image(systemName: "heart").foregroundColor(.black )
                        .imageScale(.large)
                }
                Button{
                    print("comment post")
                }label: {
                    Image(systemName: "bubble.right").foregroundColor(.black )
                        .imageScale(.large)
                }
                Button{
                    print("share post")
                }label: {
                    Image(systemName: "paperplane").foregroundColor(.black )
                        .imageScale(.large)
                }
                Spacer()
            }.padding(.leading,8)
                .padding(.top,4)
                .foregroundColor(.black)
            //like label
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            //caption label
            HStack{
                Text("Batman ").fontWeight(.semibold)
                Text("i m batman")
            }
            .font(.footnote)
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.leading,10)
            .padding(.top,1)
            
            Text("6h ago")
                .foregroundColor(.gray)
                .font(.footnote)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
        }
        
    }
}

struct FeedCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCellView()
    }
}
