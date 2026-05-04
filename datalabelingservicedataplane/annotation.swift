// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct Annotation: Codable {
    public var id: String
    public var recordId: String
    public var compartmentId: String
    public var createdDate: Date
    public var label: String?
    public var entity: Entity?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case recordId = "recordId"
        case compartmentId = "compartmentId"
        case createdDate = "createdDate"
        case label = "label"
        case entity = "entity"
    }
    
    public init(id: String,
                recordId: String,
                compartmentId: String,
                createdDate: Date,
                label: String? = nil,
                entity: Entity? = nil) {
        self.id = id
        self.recordId = recordId
        self.compartmentId = compartmentId
        self.createdDate = createdDate
        self.label = label
        self.entity = entity
    }
}
