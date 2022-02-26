//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_cleanSwiftModuleName___RoutingLogic {
  func routeBack()
}

protocol ___VARIABLE_cleanSwiftModuleName___DataPassing {
  var dataStore: ___VARIABLE_cleanSwiftModuleName___DataStore? { get }
}

class ___VARIABLE_cleanSwiftModuleName___Router: ___VARIABLE_cleanSwiftModuleName___RoutingLogic, ___VARIABLE_cleanSwiftModuleName___DataPassing {

  // MARK: - Properties

  weak var viewController: ___VARIABLE_cleanSwiftModuleName___ViewController?
  var dataStore: ___VARIABLE_cleanSwiftModuleName___DataStore?

  // MARK: - Routing

  func routeBack() {
    viewController?.navigationController?.popViewController(animated: true)
  }
}
