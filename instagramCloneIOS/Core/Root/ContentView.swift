//
//  ContentView.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewmodel = ContentViewModel()
    var body: some View {
        Group {
            
            if(viewmodel.userSession == nil){
                LoginView()
            }
            else{
                TabMainView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
