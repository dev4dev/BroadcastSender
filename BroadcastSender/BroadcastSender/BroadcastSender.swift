//
//  BroadcastSender.swift
//
//  Created by Alex Antonyuk on 11/21/16.
//  Copyright © 2016 Alex Antonyuk. All rights reserved.
//

import UIKit

protocol BroadcastSender {
	func send<EventType: UIEvent>(selector: Selector, event: EventType?)
}

extension BroadcastSender {
	func send<EventType: UIEvent>(selector: Selector, event: EventType?) {
		UIApplication.shared.sendAction(selector, to: nil, from: self, for: event)
	}
}
