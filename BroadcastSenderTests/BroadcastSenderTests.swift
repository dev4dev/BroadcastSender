//
//  BroadcastSenderTests.swift
//  BroadcastSenderTests
//
//  Created by Alex Antonyuk on 11/5/17.
//  Copyright © 2017 Alex Antonyuk. All rights reserved.
//

import XCTest
@testable import BroadcastSender

class BroadcastSenderTests: XCTestCase {

	func testExample() {
		// given
		let sut = TestViewController()
		sut.loadViewIfNeeded()

		// when
		sut.fireAction()

		// then
		XCTAssertEqual(sut.testEvent?.value, "LolKek", "Received event value should be LolKek")
	}
}
