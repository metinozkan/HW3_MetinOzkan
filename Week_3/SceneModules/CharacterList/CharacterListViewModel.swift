//
//  CharacterListViewModel.swift
//  Week_3
//
//  Created by Metin özkan on 10.10.2021.
//

import Foundation
import DefaultNetworkOperationPackage

class CharacterListViewModel {
    deinit{
        print("deinit CharacterListViewModel")
    }
    
    
    private let formatter :CharacterListDataFormatterProtocol
    private var state : CharacterListStateBlock?
    
    private var data :CharacterDataResponse?
    
    func subscribeState(completion: @escaping CharacterListStateBlock ) {
         state = completion
     }
 
    
    init(formatter:CharacterListDataFormatterProtocol){
        
        self.formatter = formatter
    }

    
    
    func getCharacterList() {
           
        
        
        state?(.loading)
        
        fireApiCall(with: apiCallHandler)
        
//           DispatchQueue.main.asyncAfter(deadline: .now()+2) { [weak self] in
//
//               self?.fireApiCall { [weak self] result in
//                   switch result {
//                   case .success(let response):
//                       print("response: \(response)")
//                   case .failure(let error):
//                       print("error: \(error)")
//                   }
//                   self?.state?(.done)
//               }
//           }
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
    
    
    private func dataHandler (with response : CharacterDataResponse) {
        self.data = response
        state?(.done)
    }
    
    
    
    //MARK: -callback listener
    
    private lazy var apiCallHandler :(Result<CharacterDataResponse,ErrorResponse>) ->Void = {[weak self] result in
        
        //to show how to handler errrr
        switch result {
        case .failure(let error ):
            print ("err: \(error)")
            self?.state?(.failure)
      
        case .success(let data):
            self?.dataHandler(with: data)
           
        }
        
    
    }
}
extension CharacterListViewModel: ItemListProtocol {
    
    func askNumberOfSection() -> Int {
        return 1
    }
    
    func askNumberOfItem(in section: Int) -> Int {
        
        guard let dataUnwrapped = data else {return 0}
        return dataUnwrapped.data.results.count
    }
    
    func askData(at index: Int) -> GenericDataProtocol? {
        guard let dataUnwrapped = data else {return nil}
    

        return formatter.getItem(from: dataUnwrapped.data.results[index])
    }
    
}
