//
//  UploadPopstView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 19/08/23.
//

import SwiftUI
import PhotosUI

struct UploadPostsView: View {
   
    @State private var caption = ""
    @State private var imagePickerPresented = false
   // @State private var photoItem: PhotosPickerItem?
    @StateObject var viewModel=uploadPostViewModel()
    @Binding var tabIndex:Int
  
    var body: some View {
        VStack{
            //action toolbar
            HStack{
                Button{
                    print("cancel upload")
                    
                    caption = ""
                    viewModel.selectImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0

                }label: {
                    Text("Cancel")
                }
                Spacer()
                Text("New Post")
                Spacer()
                Button{
                    print("Upload")
                }label: {
                    Text("Upload")
                }
            }
            .padding(.horizontal)
            
            
            
            //post image and caption
            HStack(spacing: 8){
                
                if let image  = viewModel.postImage{
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 100)
                        .clipped()
                }
             
                
                TextField("Enter your caption...",text: $caption,axis: .vertical)
            }.padding()
            
            Spacer()
        }
        .onAppear{
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectImage)
    
       
       
    }
    
}

struct UploadPopstView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostsView(tabIndex: .constant(0))
    }
}
