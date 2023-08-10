//
//  ProfileView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 02/08/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
       
        
    ]
    
    
    var body: some View {
        NavigationStack {
            ScrollView{
                //header
                VStack(spacing:10){
                    //pic and stats
                    HStack{
                        Image("img1")
                            .resizable().resizable().scaledToFill().frame(width: 80,height: 80).clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing:8){
                            
                            UserStatView(value: 100, title: "Posts")
                            UserStatView(value: 100, title: "Followers")
                            UserStatView(value: 100, title: "Following")
                        }
                        
                        
                    }.padding(.horizontal)
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
                LazyVGrid(columns: gridItems,spacing:2){
                 
                    ForEach((0...15),id:\.self){ index in
                        Image("img1")
                            .resizable().scaledToFill()
                    }
                
                
                       
                    
                }
            }
            .navigationTitle("Profile").navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement:.navigationBarTrailing){
                    Button(){
                        
                    }label: {
                        Image(systemName: "line.3.horizontal").foregroundColor(.black )
                    }
                    
                }
                
            }
        }
       
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
