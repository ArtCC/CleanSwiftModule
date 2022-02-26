//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_cleanSwiftModuleName___BusinessLogic {
  func doLoadStaticData(request: ___VARIABLE_cleanSwiftModuleName___.StaticData.Request)
}

protocol ___VARIABLE_cleanSwiftModuleName___DataStore {
}

class ___VARIABLE_cleanSwiftModuleName___Interactor: ___VARIABLE_cleanSwiftModuleName___BusinessLogic, ___VARIABLE_cleanSwiftModuleName___DataStore {

  // MARK: - Properties

  var presenter: ___VARIABLE_cleanSwiftModuleName___PresentationLogic?

  // MARK: - Public

  func doLoadStaticData(request: ___VARIABLE_cleanSwiftModuleName___.StaticData.Request) {
    let response = ___VARIABLE_cleanSwiftModuleName___.StaticData.Response()
    presenter?.presentStaticData(response: response)
  }

  // MARK: - Private
}
