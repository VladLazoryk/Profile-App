//
//  NetworkError.swift
//  ProfileTask
//
//  Created by vlad on 4/24/22.
//  Copyright © 2022 Vlad Lazoryk. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case incorrectDataError
    case noConnectionError
    case serverError(error: Error)
}

extension NetworkError: LocalizedError {

    var errorDescription: String? {
        switch self {
        case .incorrectDataError:
            return "Incorrect data received from the server"
        case .noConnectionError:
            return "No connection to the server"
        case .serverError(let error):
            return "Server error - \(error.localizedDescription)"
        }
    }
}
