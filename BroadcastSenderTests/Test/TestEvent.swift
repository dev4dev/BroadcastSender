//
//  TestEvent.swift
//  BroadcastSenderTests
//
//  Created by Alex Antonyuk on 11/5/17.
//  Copyright © 2017 Alex Antonyuk. All rights reserved.
//

import UIKit

class TestEvent: UIEvent {
	let value: String
	init(value: String) {
		self.value = value
		super.init()
	}
}

