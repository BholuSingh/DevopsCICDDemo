//
//  RetirementCalculatorUITests.swift
//  RetirementCalculatorUITests
//
//  Created by Eduardo Rosas on 8/19/19.
//  Copyright © 2019 Eduardo Rosas. All rights reserved.
//

import XCTest

class RetirementCalculatorUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        XCTContext.runActivity(named: "ScreenShort") { (activity) in
           
        let app = XCUIApplication()
        app.textFields["Monthly investments"].tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        key.tap()
        
        let key2 = app/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        key2.tap()
        app/*@START_MENU_TOKEN@*/.textFields["age"]/*[[".textFields[\"Your current age\"]",".textFields[\"age\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let key3 = app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        key.tap()
        app/*@START_MENU_TOKEN@*/.textFields["retirement"]/*[[".textFields[\"Your planned retirement age\"]",".textFields[\"retirement\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let key4 = app/*@START_MENU_TOKEN@*/.keys["6"]/*[[".keyboards.keys[\"6\"]",".keys[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key4.tap()
        key.tap()
        app.textFields["Average interest rate of investments"].tap()
        key.tap()
        key2.tap()
        app/*@START_MENU_TOKEN@*/.textFields["saving"]/*[[".textFields[\"Current savings\"]",".textFields[\"saving\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let key5 = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key5.tap()
        key2.tap()
        key2.tap()
        key2.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Calculate retirement amount"]/*[[".buttons[\"Calculate retirement amount\"].staticTexts[\"Calculate retirement amount\"]",".buttons[\"amount_button\"].staticTexts[\"Calculate retirement amount\"]",".staticTexts[\"Calculate retirement amount\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let resultText = app/*@START_MENU_TOKEN@*/.staticTexts["result_label"]/*[[".staticTexts[\"If you save $1000.0 every month for 30 years, and invest that money plus your current investment of $5000.0 at a 10.0% anual interest rate, you will have $X by the time you are 61\"]",".staticTexts[\"result_label\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        XCTAssertEqual(resultText.exists, true)
        }
    }

}
