//
//  TestViewController.swift
//  BroadcastSenderTests
//
//  Created by Alex Antonyuk on 11/5/17.
//  Copyright © 2017 Alex Antonyuk. All rights reserved.
//

import UIKit

final class TestViewController: UIViewController {

	let testView = TestView()
	var testEvent: TestEvent?

	override func viewDidLoad() {
		super.viewDidLoad()

		view.addSubview(testView)
	}

	func fireAction() {
		testView.button.sendActions(for: .touchUpInside)
	}
}

extension TestViewController: TestViewActions {
	func testViewMegaAction(_ sender: TestView, event: TestEvent) {
		testEvent = event
	}
}
