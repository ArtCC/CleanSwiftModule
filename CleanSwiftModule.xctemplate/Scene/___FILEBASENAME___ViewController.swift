//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_cleanSwiftModuleName___DisplayLogic: AnyObject {
  func displayStaticData(viewModel: ___VARIABLE_cleanSwiftModuleName___.StaticData.ViewModel)
}

class ___VARIABLE_cleanSwiftModuleName___ViewController: UIViewController {

  // MARK: - Properties

  var interactor: ___VARIABLE_cleanSwiftModuleName___BusinessLogic?
  var router: (___VARIABLE_cleanSwiftModuleName___RoutingLogic & ___VARIABLE_cleanSwiftModuleName___DataPassing)?

  private let sceneView = ___VARIABLE_cleanSwiftModuleName___View()

  // MARK: - Object's lifecycle

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }

  // MARK: - Setup

  private func setup() {
    let viewController = self
    let interactor = ___VARIABLE_cleanSwiftModuleName___Interactor()
    let presenter = ___VARIABLE_cleanSwiftModuleName___Presenter()
    let router = ___VARIABLE_cleanSwiftModuleName___Router()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }

  // MARK: - View's lifecycle

  override func loadView() {
    view = sceneView
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    setupNavigationBar()
    doLoadStaticData()
  }

  // MARK: - Private

  private func setupNavigationBar() {
  }
}

// MARK: - Output

extension ___VARIABLE_cleanSwiftModuleName___ViewController {

  private func doLoadStaticData() {
    let request = ___VARIABLE_cleanSwiftModuleName___.StaticData.Request()
    interactor?.doLoadStaticData(request: request)
  }
}

// MARK: - Input

extension ___VARIABLE_cleanSwiftModuleName___ViewController: ___VARIABLE_cleanSwiftModuleName___DisplayLogic {

  func displayStaticData(viewModel: ___VARIABLE_cleanSwiftModuleName___.StaticData.ViewModel) {
  }
}
