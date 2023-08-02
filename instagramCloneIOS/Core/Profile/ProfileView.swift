//
//  ProfileView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 02/08/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        //header
        VStack{
            //pic and stats
            HStack{
                Image("")
                
            }
            VStack(alignment: .leading){
                
                Text("Chadwick Boseman")
                    .font(.footnote)
                    .fontWeight(.semibold)
               
                Text("Wakanda Forever")
                    .font(.footnote)
                    

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
        //post grid view
       
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
