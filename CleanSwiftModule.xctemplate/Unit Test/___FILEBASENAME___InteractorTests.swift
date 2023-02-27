//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest

@testable import AddTargetName

class ___VARIABLE_cleanSwiftModuleName___InteractorTests: XCTestCase {

  // MARK: - Subject under test

  var interactor: ___VARIABLE_cleanSwiftModuleName___Interactor?
  var presenterSpy: ___VARIABLE_cleanSwiftModuleName___PresentationLogicSpy?

  // MARK: - Test lifecycle

  override func setUp() {
    super.setUp()
    setup___VARIABLE_cleanSwiftModuleName___Interactor()
  }

  override func tearDown() {
    super.tearDown()
  }

  // MARK: - Test setup

  func setup___VARIABLE_cleanSwiftModuleName___Interactor() {
    interactor = ___VARIABLE_cleanSwiftModuleName___Interactor()
    presenterSpy = ___VARIABLE_cleanSwiftModuleName___PresentationLogicSpy()
    interactor?.presenter = presenterSpy
  }

  // MARK: - Test doubles

  class ___VARIABLE_cleanSwiftModuleName___PresentationLogicSpy: ___VARIABLE_cleanSwiftModuleName___PresentationLogic {

    var presentStaticDataCalled = false

    var presentStaticDataResponse: ___VARIABLE_cleanSwiftModuleName___.StaticData.Response?

    func presentStaticData(response: ___VARIABLE_cleanSwiftModuleName___.StaticData.Response) {
      presentStaticDataCalled = true
      presentStaticDataResponse = response
    }
  }

  // MARK: - Tests

  func testDoLoadStaticData() {
    // Given
    let request = ___VARIABLE_cleanSwiftModuleName___.StaticData.Request()

    // When
    interactor?.doLoadStaticData(request: request)

    // Then
    XCTAssertEqual(presenterSpy?.presentStaticDataCalled, true,
                   "doLoadStaticData() should ask the presenter to presentStaticData()")
  }
}
