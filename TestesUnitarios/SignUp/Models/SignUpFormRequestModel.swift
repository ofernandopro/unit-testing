//
//  SignUpFormRequestModel.swift
//  TestesUnitarios
//
//  Created by Fernando Moreira on 08/01/23.
//

import Foundation

struct SignUpFormRequestModel: Encodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}
