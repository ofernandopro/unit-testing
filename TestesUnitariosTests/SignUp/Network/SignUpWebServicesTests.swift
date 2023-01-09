//
//  SignUpWebServicesTests.swift
//  TestesUnitariosTests
//
//  Created by Fernando Moreira on 08/01/23.
//

import XCTest
@testable import TestesUnitarios

class SignUpWebServicesTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown()  {
        
    }

    func testSignUpWebService_WhenGivenSuccessfullResponse_ReturnSuccess() {
        // Arrange
        let sut = SignUpWebService()
        
        let signFormRequestModel = SignUpFormRequestModel(firstName: "Fernando", lastName: "Moreira", email: "test@test.com", password: "12345678")
        
        // Act
        sut.signUp(withForm: signFormRequestModel) { (signUpResponseModel, error) in
            
            // Assert
            // "{\"status\":\"ok\"}"
            XCTAssertEqual(signUpResponseModel?.status, "ok")
            
        }
        
    }




















}
