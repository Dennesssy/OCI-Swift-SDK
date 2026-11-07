// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct ScheduleCollection: Codable {
    public var items: [ScheduleSummary]
    
    
    
    public init(items: [ScheduleSummary]) {
        self.items = items
    }
}
