//
//  ViewController.swift
//  BroadcastSender
//
//  Created by Alex Antonyuk on 11/5/17.
//  Copyright © 2017 Alex Antonyuk. All rights reserved.
//

import UIKit

final class ViewController: UITableViewController {

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return tableView.dequeueReusableCell(withIdentifier: "TestCell", for: indexPath)
	}
}

extension ViewController: TestCellActions {
	func testCellButtonTapped(_ sender: TestCellActions, event: TestEvent) {
		print("Tapped button in cell \(sender) - event \(event.name)")
	}
}

