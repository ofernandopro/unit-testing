//
//  SignUpFormModelValidatorTests.swift
//  TestesUnitariosTests
//
//  Created by Fernando Moreira on 02/01/23.
//

import XCTest
@testable import TestesUnitarios

class SignUpFormModelValidatorTests: XCTestCase {

    var sut: SignUpFormModelValidator!
    
    override func setUp() {
        // Arrange
        sut = SignUpFormModelValidator()
    }

    override func tearDown() {
        sut = nil
    }

    func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Fernando")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE")
        
    }
    
    func testSignUpFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a first name that is shorter than \(SignUpConstants.firstNameMinLength) characters")
        
    }
    
    func testSignUpFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "FernandoFernando")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a first name that is longer than \(SignUpConstants.firstNameMaxLength) characters")
        
    }
    
    func testSignUpFormModelValidator_WhenEqualPasswordsProvided_ShouldReturnTrue() {
        
        // Act
        let doPasswordsMatch = sut.doPasswordsMatch(password: "12345", repeatPassword: "12345")
        
        // Assert
        XCTAssertTrue(doPasswordsMatch, "The doPasswordsMatch() should have returned TRUE for a pawword that matches with repeatPassword")
        
    }
    
    func testSignUpFormModelValidator_WhenNotMatchingPasswordsProvided_ShouldReturnFalse() {
        
        // Act
        let doPasswordsMatch = sut.doPasswordsMatch(password: "12345678", repeatPassword: "12345")
        
        // Assert
        XCTAssertFalse(doPasswordsMatch, "The doPasswordsMatch() should have returned FALSE for a pawword that does not matches with repeatPassword")
        
    }

}



