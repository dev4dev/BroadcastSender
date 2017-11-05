//
//  TestEvent.swift
//  BroadcastSender
//
//  Created by Alex Antonyuk on 11/5/17.
//  Copyright © 2017 Alex Antonyuk. All rights reserved.
//

import UIKit

final class TestEvent: UIEvent {
	let name: String
	init(name: String) {
		self.name = name
		super.init()
	}
}
