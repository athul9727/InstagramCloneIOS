//
//  SearchView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 10/08/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack(spacing:12){
                    
                    ForEach(User.MOCK_USERS){ user in
                        HStack{
                            Image(user.profileImageUrl ?? "")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40,height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment:.leading){
                                Text(user.username)
                                    .fontWeight(.semibold)
                                
                                Text(user.fullname ?? "")
                                    .fontWeight(.semibold)
                                
                            }
                            .font(.footnote)
                            
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                    }
                    
                }
                .padding(.top,8)
                .searchable(text: $searchText,prompt:"search..")

            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
