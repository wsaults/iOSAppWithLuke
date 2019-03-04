//
//  ViewControllerTests.swift
//  Starter AppTests
//
//  Created by Will Saults on 3/3/19.
//  Copyright © 2019 Will Saults. All rights reserved.
//

import XCTest
@testable import Starter_App

class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: ViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        viewController = vc
        _ = viewController.view // To call viewDidLoad
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let expectedText = "hi"
        
        let actualText = viewController?.updateLabel(text: expectedText)
        
        XCTAssertEqual(expectedText, actualText, "Text did not match")
    }
    
    func testLabelChangedOnButtonTap() {
        // arrange
        viewController.input.text = "Wow"
        // act
        viewController?.buttonClicked(self)
        // assert
        XCTAssertEqual("Wow", viewController?.label.text)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
