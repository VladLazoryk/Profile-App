//
//  ValidationError.swift
//  ProfileTask
//
//  Created by vlad on 4/24/22.
//  Copyright © 2022 Vlad Lazoryk. All rights reserved.
//



import Foundation

enum ValidationError: Error {
    case serverError(error: Error)
}

extension ValidationError: LocalizedError {

    var errorDescription: String? {
        switch self {
        case .serverError(let error):
            return "Server error - \(error.localizedDescription)"
        }
    }
}
