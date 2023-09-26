//
//  ContentViewModel.swift
//  instagramCloneIOS
//
//  Created by Athul Thomas on 26/09/23.
//

import Foundation
import Firebase
import Combine

class ContentViewModel:ObservableObject{
    
    private let service = AuthService.shared
    private var canellables = Set<AnyCancellable>()
    
    @Published var userSession:FirebaseAuth.User?
    
    init(){
        setupubscribers()
    }
    
    func setupubscribers(){
        service.$userSession.sink { [weak self] userSession in self?.userSession = userSession}.store(in: &canellables)
    }

}
