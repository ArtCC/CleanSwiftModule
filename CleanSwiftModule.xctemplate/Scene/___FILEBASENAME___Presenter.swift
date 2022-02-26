//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_cleanSwiftModuleName___PresentationLogic {
  func presentStaticData(response: ___VARIABLE_cleanSwiftModuleName___.StaticData.Response)
}

class ___VARIABLE_cleanSwiftModuleName___Presenter: ___VARIABLE_cleanSwiftModuleName___PresentationLogic {

  // MARK: - Properties

  weak var viewController: ___VARIABLE_cleanSwiftModuleName___DisplayLogic?

  // MARK: - Public

  func presentStaticData(response: ___VARIABLE_cleanSwiftModuleName___.StaticData.Response) {
    let viewModel = ___VARIABLE_cleanSwiftModuleName___.StaticData.ViewModel()
    viewController?.displayStaticData(viewModel: viewModel)
  }
  
  // MARK: - Private
}
