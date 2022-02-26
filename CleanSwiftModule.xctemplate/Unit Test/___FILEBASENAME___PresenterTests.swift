//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest

@testable import AddTargetName

class ___VARIABLE_cleanSwiftModuleName___PresenterTests: XCTestCase {

  // MARK: - Subject under test

  var presenter: ___VARIABLE_cleanSwiftModuleName___Presenter?
  var viewControllerSpy: ___VARIABLE_cleanSwiftModuleName___DisplayLogicSpy?

  // MARK: - Test lifecycle

  override func setUp() {
    super.setUp()
    setup___VARIABLE_cleanSwiftModuleName___Presenter()
  }

  override func tearDown() {
    super.tearDown()
  }

  // MARK: - Test setup

  func setup___VARIABLE_cleanSwiftModuleName___Presenter() {
    presenter = ___VARIABLE_cleanSwiftModuleName___Presenter()
    viewControllerSpy = ___VARIABLE_cleanSwiftModuleName___DisplayLogicSpy()
    presenter?.viewController = viewControllerSpy
  }

  // MARK: - Test doubles

  class ___VARIABLE_cleanSwiftModuleName___DisplayLogicSpy: ___VARIABLE_cleanSwiftModuleName___DisplayLogic {

    var displayStaticDataCalled = false

    var displayStaticDataViewModel: ___VARIABLE_cleanSwiftModuleName___.StaticData.ViewModel?

    func displayStaticData(viewModel: ___VARIABLE_cleanSwiftModuleName___.StaticData.ViewModel) {
      displayStaticDataCalled = true
      displayStaticDataViewModel = viewModel
    }
  }

  // MARK: - Tests

  func testPresentStaticData() {
    // Given
    let response = ___VARIABLE_cleanSwiftModuleName___.StaticData.Response()

    // When
    presenter?.presentStaticData(response: response)

    // Then
    XCTAssertEqual(viewControllerSpy?.displayStaticDataCalled, true,
                   "presentStaticData() should ask the view controller to displayStaticData()")
  }
}
