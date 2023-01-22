//
//  RMService.swift
//  RickAndMorty
//
//  Created by Evgeniy Mazrukho on 22.01.2023.
//

import Foundation


/// Primary API service to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send RM API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
        
    }
}
