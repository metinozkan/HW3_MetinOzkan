//
//  CharacterListViewModel.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterListViewModel {
    
    private var state : CharacterListStateBlock?
    
    func subscribeState(completion: @escaping CharacterListStateBlock ) {
         state = completion
     }
 
    
    init(){
        
        
    }

    
    
    func getCharacterList() {
           
        state?(.loading)
           DispatchQueue.main.asyncAfter(deadline: .now()+2) { [weak self] in
             
               self?.fireApiCall { [weak self] result in
                   switch result {
                   case .success(let response):
                       print("response: \(response)")
                   case .failure(let error):
                       print("error: \(error)")
                   }
                   self?.state?(.done)
               }
           }
    }
   
    
     
    private func fireApiCall(with completion: @escaping (Result<CharacterDataResponse, ErrorResponse>) -> Void) {
        
        do {
            let urlRequest = try MarvelCharactersApiServiceProvider().returnUrlRequest()
            APIManager.shared.executeRequest(urlRequest:urlRequest , completion: completion)
        }
        catch  let error  {
         print("rrear",error)
        }
                
       
        
        
    }
}
extension CharacterListViewModel: ItemListProtocol {
    
    func askNumberOfSection() -> Int {
        return 1
    }
    
    func askNumberOfItem(in section: Int) -> Int {
        return 0 
    }
    
    func askData(at index: Int) -> GenericDataProtocol? {
        return nil
    }
    
}
