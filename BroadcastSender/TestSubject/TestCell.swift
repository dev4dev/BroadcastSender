//
//  TestCell.swift
//  BroadcastSender
//
//  Created by Alex Antonyuk on 11/5/17.
//  Copyright © 2017 Alex Antonyuk. All rights reserved.
//

import UIKit

@objc protocol TestCellActions: class {
	func testCellButtonTapped(_ sender: TestCellActions, event: TestEvent)
}

final class TestCell: UITableViewCell, BroadcastSender {

	@IBAction func onButtonTap(_ sender: UIButton) {
		send(selector: #selector(TestCellActions.testCellButtonTapped(_:event:)), event: TestEvent(name: "hello world from cell"))
	}

}
