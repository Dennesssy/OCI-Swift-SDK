// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct StreamSummary: Codable {
    public var name: String
    public var id: String
    public var partitions: Int
    public var compartmentId: String
    public var streamPoolId: String
    public var lifecycleState: StreamLifecycleStateEnum
    public var timeCreated: Date
    
    
    
    public init(name: String,
                id: String,
                partitions: Int,
                compartmentId: String,
                streamPoolId: String,
                lifecycleState: StreamLifecycleStateEnum,
                timeCreated: Date) {
        self.name = name
        self.id = id
        self.partitions = partitions
        self.compartmentId = compartmentId
        self.streamPoolId = streamPoolId
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
    }
}
