// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public struct Announcement: Codable {
    public var id: String
    public var referenceTicketNumber: String
    public var summary: String
    public var services: [String]
    public var affectedRegions: [String]
    public var isBanner: Bool
    public var timeOneTitle: String?
    public var timeOneValue: Date?
    public var timeTwoTitle: String?
    public var timeTwoValue: Date?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var environmentName: String?
    public var chainId: String?
    public var description: String?
    public var additionalInformation: String?
    public var affectedResources: [AffectedResource]?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case referenceTicketNumber = "referenceTicketNumber"
        case summary = "summary"
        case services = "services"
        case affectedRegions = "affectedRegions"
        case isBanner = "isBanner"
        case timeOneTitle = "timeOneTitle"
        case timeOneValue = "timeOneValue"
        case timeTwoTitle = "timeTwoTitle"
        case timeTwoValue = "timeTwoValue"
        case timeCreated = "timeCreated"
        case timeUpdated = "timeUpdated"
        case environmentName = "environmentName"
        case chainId = "chainId"
        case description = "description"
        case additionalInformation = "additionalInformation"
        case affectedResources = "affectedResources"
    }
    
    public init(id: String,
                referenceTicketNumber: String,
                summary: String,
                services: [String],
                affectedRegions: [String],
                isBanner: Bool,
                timeOneTitle: String? = nil,
                timeOneValue: Date? = nil,
                timeTwoTitle: String? = nil,
                timeTwoValue: Date? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                environmentName: String? = nil,
                chainId: String? = nil,
                description: String? = nil,
                additionalInformation: String? = nil,
                affectedResources: [AffectedResource]? = nil) {
        self.id = id
        self.referenceTicketNumber = referenceTicketNumber
        self.summary = summary
        self.services = services
        self.affectedRegions = affectedRegions
        self.isBanner = isBanner
        self.timeOneTitle = timeOneTitle
        self.timeOneValue = timeOneValue
        self.timeTwoTitle = timeTwoTitle
        self.timeTwoValue = timeTwoValue
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.environmentName = environmentName
        self.chainId = chainId
        self.description = description
        self.additionalInformation = additionalInformation
        self.affectedResources = affectedResources
    }
}
