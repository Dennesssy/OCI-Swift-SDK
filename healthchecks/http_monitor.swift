// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct HttpMonitor: Codable {
    public var id: String?
    public var resultsUrl: String?
    public var homeRegion: String?
    public var timeCreated: Date?
    public var compartmentId: String?
    public var targets: [String]?
    public var vantagePointNames: [String]?
    public var port: Int?
    public var timeoutInSeconds: Int?
    public var protocol: HttpProbeProtocolEnum?
    public var method: HttpProbeMethodEnum?
    public var path: String?
    public var headers: [String: String]?
    public var displayName: String?
    public var intervalInSeconds: Int?
    public var isEnabled: Bool?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: Any]]?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case resultsUrl = "resultsUrl"
        case homeRegion = "homeRegion"
        case timeCreated = "timeCreated"
        case compartmentId = "compartmentId"
        case targets = "targets"
        case vantagePointNames = "vantagePointNames"
        case port = "port"
        case timeoutInSeconds = "timeoutInSeconds"
        case protocol = "protocol"
        case method = "method"
        case path = "path"
        case headers = "headers"
        case displayName = "displayName"
        case intervalInSeconds = "intervalInSeconds"
        case isEnabled = "isEnabled"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
    }
    
    public init(id: String? = nil,
                resultsUrl: String? = nil,
                homeRegion: String? = nil,
                timeCreated: Date? = nil,
                compartmentId: String? = nil,
                targets: [String]? = nil,
                vantagePointNames: [String]? = nil,
                port: Int? = nil,
                timeoutInSeconds: Int? = nil,
                protocol: HttpProbeProtocolEnum? = nil,
                method: HttpProbeMethodEnum? = nil,
                path: String? = nil,
                headers: [String: String]? = nil,
                displayName: String? = nil,
                intervalInSeconds: Int? = nil,
                isEnabled: Bool? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: Any]]? = nil) {
        self.id = id
        self.resultsUrl = resultsUrl
        self.homeRegion = homeRegion
        self.timeCreated = timeCreated
        self.compartmentId = compartmentId
        self.targets = targets
        self.vantagePointNames = vantagePointNames
        self.port = port
        self.timeoutInSeconds = timeoutInSeconds
        self.protocol = protocol
        self.method = method
        self.path = path
        self.headers = headers
        self.displayName = displayName
        self.intervalInSeconds = intervalInSeconds
        self.isEnabled = isEnabled
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }
}
