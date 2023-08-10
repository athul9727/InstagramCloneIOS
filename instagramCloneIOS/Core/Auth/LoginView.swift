//
//  LoginView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 10/08/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""


    var body: some View {
    //logo img
        
        NavigationStack{
            VStack{
                Image("instagram_logo_black")
                    .resizable() .scaledToFill().frame(width:220,height: 100)
          
                //text fields
                VStack{
                    TextField("Enter your email",text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                    TextField("Enter your password",text: $password)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                    
                    
                }
                
                Button{
                    print("showforgot password")
                }label: {
                    Text("forgot password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                        .padding(.trailing,24)
                        .padding(.top,1)
                }
                
                
                Button{
                    print("login")
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemBlue))
                        .padding(.top,1)
                        .cornerRadius(10)
                }
                
            }
        }
      
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
