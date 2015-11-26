//
//  CharactersViewControllerTest.swift
//  Example
//
//  Created by Pedro Vicente Gomez on 26/11/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation
import KIF
import Nimble
@testable import Example

class CharactersNavigationControllerTests: KIFTestCase {

    func testShowsSpiderManAndIronManByDefaultSuperHeroes() {
        openCharactersViewController()

        let spiderManRowLabel = tester().waitForViewWithAccessibilityLabel("SpiderMan") as! UILabel
        let ironManRowLabel = tester().waitForViewWithAccessibilityLabel("IronMan") as! UILabel

        expect(spiderManRowLabel.text).to(equal("SpiderMan"))
        expect(ironManRowLabel.text).to(equal("IronMan"))
    }

    private func openCharactersViewController() {
        let charactersViewController = ServiceLocator().provideCharactersViewController()
        presentViewController(charactersViewController)
    }

}

extension KIFTestCase {

    func presentViewController(viewController: UIViewController) {
        UIApplication.sharedApplication().keyWindow?.rootViewController = viewController
    }

}