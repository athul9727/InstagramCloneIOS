//
//  CompleteSignUpView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 11/08/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing:12){
            
            Spacer()
            
            Text(" Welcome to instagram,  athul_thomas ")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration start using instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
    
            
            NavigationLink{
//                CreatePasswordView().navigationBarBackButtonHidden(true)
            }label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .padding(.top,1)
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
            
            
            
        }.toolbar {
            ToolbarItem(placement:.navigationBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
