// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct KafkaSettings: Codable {
    public var autoCreateTopicsEnable: Bool?
    public var bootstrapServers: String?
    public var logRetentionHours: Int?
    
    public enum CodingKeys: String, CodingKey {
        case autoCreateTopicsEnable = "autoCreateTopicsEnable"
        case bootstrapServers = "bootstrapServers"
        case logRetentionHours = "logRetentionHours"
    }
    
    public init(autoCreateTopicsEnable: Bool? = nil,
                bootstrapServers: String? = nil,
                logRetentionHours: Int? = nil) {
        self.autoCreateTopicsEnable = autoCreateTopicsEnable
        self.bootstrapServers = bootstrapServers
        self.logRetentionHours = logRetentionHours
    }
}
