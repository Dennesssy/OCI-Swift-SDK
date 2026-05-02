// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct Suppression: Codable {
    public var timeSuppressedFrom: Date?
    public var timeSuppressUntil: Date?
    public var description: String?
    
    public enum CodingKeys: String, CodingKey {
        case timeSuppressedFrom = "timeSuppressedFrom"
        case timeSuppressUntil = "timeSuppressUntil"
        case description = "description"
    }
    
    public init(timeSuppressedFrom: Date? = nil,
                timeSuppressUntil: Date? = nil,
                description: String? = nil) {
        self.timeSuppressedFrom = timeSuppressedFrom
        self.timeSuppressUntil = timeSuppressUntil
        self.description = description
    }
}
