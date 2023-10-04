//
//  OnboardingUITests.swift
//  Ketabee-iOSUITests
//
//  Created by Ali AwadAlkarim on 04/10/2023.
//

import XCTest

final class OnboardingUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

//    func testOnboardingSwipe() throws {
//        // UI test code
//        let app = XCUIApplication()
//        app.launch()
//        
//        // Assuming you have UI elements for the onboarding view
//        let page1 = app.staticTexts["Welcome to Ketabee"]
//        let page2 = app.staticTexts["Get Started"]
//        let page3 = app.staticTexts["Explore"]
//        
//        // Swipe right to navigate through onboarding pages
//        let scrollView = app.scrollViews.firstMatch
//        scrollView.swipeRight()
//        XCTAssert(page1.exists, "Page 1 should still be visible")
//        
//        scrollView.swipeRight()
//        XCTAssert(page2.exists, "Page 2 should still be visible")
//        
//        scrollView.swipeRight()
//        XCTAssert(page3.exists, "Page 3 should still be visible")
//        
//        // Swipe left to navigate back
//        scrollView.swipeLeft()
//        XCTAssert(page2.exists, "Page 2 should be visible again")
//        
//        scrollView.swipeLeft()
//        XCTAssert(page1.exists, "Page 1 should be visible again")
//    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
