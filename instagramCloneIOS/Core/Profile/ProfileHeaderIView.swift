//
//  ProfileHeaderIView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 19/08/23.
//

import SwiftUI

struct ProfileHeaderIView: View {
    let user:User
    var body: some View {
        VStack(spacing:10){
            //pic and stats
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable().resizable().scaledToFill().frame(width: 80,height: 80).clipShape(Circle())
                
                Spacer()
                
                HStack(spacing:8){
                    
                    UserStatView(value: 100, title: "Posts")
                    UserStatView(value: 100, title: "Followers")
                    UserStatView(value: 100, title: "Following")
                }
                
                
            }.padding(.horizontal)
            VStack(alignment: .leading){
                
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
               
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                
            }.frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal)
            
            
            Button{
                
            }label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .frame(width: 360,height: 32)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius:6).stroke( Color.gray,lineWidth:1))
            }
            //action button
            Divider()
        }
    }
}

struct ProfileHeaderIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderIView(user: User.MOCK_USERS[0])
    }
}
