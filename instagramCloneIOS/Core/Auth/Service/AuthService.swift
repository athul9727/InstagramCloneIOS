//
//  AuthService.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 26/09/23.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession:FirebaseAuth.User?
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    func loginUser(email:String,password:String) async throws{
        
    }
    
    func createUser(email:String,password:String,username:String) async throws{
        
    }
    
    func loadUserData() async throws{
        
    }
    
    func signout(){
        
    }
    
}
