//
//  KeychainError.swift
//  ProfileTask
//
//  Created by vlad on 4/24/22.
//  Copyright © 2022 Vlad Lazoryk. All rights reserved.
//

import Foundation

enum KeychainError: Error {
    case accountSearchError
    case pinCodeDataError
    case duplicateError
    case unhandledError(status: OSStatus)
}

extension KeychainError: LocalizedError {

    var errorDescription: String? {
        switch self {
        case .accountSearchError:
            return "Error accessing user data. If reappeared, contact software developer"
        case .pinCodeDataError:
            return "Pin code encoding / decoding error. If reappeared, contact software developer"
        case .duplicateError:
            return "Keychain internal Error. Retry login"
        case .unhandledError(let status):
            return "Unknown internal error, OSStatus - \(status)"
        }
    }
}
