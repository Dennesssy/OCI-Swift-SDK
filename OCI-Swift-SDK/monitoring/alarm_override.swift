// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct AlarmOverride: Codable {
    public var ruleName: String?
    public var query: String?
    public var severity: AlarmSeverityEnum?
    public var body: String?
    public var pendingDuration: String?
    
    public enum CodingKeys: String, CodingKey {
        case ruleName = "ruleName"
        case query = "query"
        case severity = "severity"
        case body = "body"
        case pendingDuration = "pendingDuration"
    }
    
    public init(ruleName: String? = nil,
                query: String? = nil,
                severity: AlarmSeverityEnum? = nil,
                body: String? = nil,
                pendingDuration: String? = nil) {
        self.ruleName = ruleName
        self.query = query
        self.severity = severity
        self.body = body
        self.pendingDuration = pendingDuration
    }
}
