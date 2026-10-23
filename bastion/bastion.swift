// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct Bastion: Codable {
    public var bastionType: String
    public var id: String
    public var name: String
    public var compartmentId: String
    public var targetVcnId: String
    public var targetSubnetId: String
    public var maxSessionTtlInSeconds: Int
    public var timeCreated: Date
    public var lifecycleState: BastionLifecycleStateEnum
    public var phoneBookEntry: String?
    public var clientCidrBlockAllowList: [String]?
    public var staticJumpHostIpAddresses: [String]?
    public var privateEndpointIpAddress: String?
    public var maxSessionsAllowed: Int?
    public var dnsProxyStatus: BastionDnsProxyStatusEnum?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    
    public enum CodingKeys: String, CodingKey {
        case bastionType = "bastionType"
        case id = "id"
        case name = "name"
        case compartmentId = "compartmentId"
        case targetVcnId = "targetVcnId"
        case targetSubnetId = "targetSubnetId"
        case maxSessionTtlInSeconds = "maxSessionTtlInSeconds"
        case timeCreated = "timeCreated"
        case lifecycleState = "lifecycleState"
        case phoneBookEntry = "phoneBookEntry"
        case clientCidrBlockAllowList = "clientCidrBlockAllowList"
        case staticJumpHostIpAddresses = "staticJumpHostIpAddresses"
        case privateEndpointIpAddress = "privateEndpointIpAddress"
        case maxSessionsAllowed = "maxSessionsAllowed"
        case dnsProxyStatus = "dnsProxyStatus"
        case timeUpdated = "timeUpdated"
        case lifecycleDetails = "lifecycleDetails"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
    }
    
    public init(bastionType: String,
                id: String,
                name: String,
                compartmentId: String,
                targetVcnId: String,
                targetSubnetId: String,
                maxSessionTtlInSeconds: Int,
                timeCreated: Date,
                lifecycleState: BastionLifecycleStateEnum,
                phoneBookEntry: String? = nil,
                clientCidrBlockAllowList: [String]? = nil,
                staticJumpHostIpAddresses: [String]? = nil,
                privateEndpointIpAddress: String? = nil,
                maxSessionsAllowed: Int? = nil,
                dnsProxyStatus: BastionDnsProxyStatusEnum? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil) {
        self.bastionType = bastionType
        self.id = id
        self.name = name
        self.compartmentId = compartmentId
        self.targetVcnId = targetVcnId
        self.targetSubnetId = targetSubnetId
        self.maxSessionTtlInSeconds = maxSessionTtlInSeconds
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.phoneBookEntry = phoneBookEntry
        self.clientCidrBlockAllowList = clientCidrBlockAllowList
        self.staticJumpHostIpAddresses = staticJumpHostIpAddresses
        self.privateEndpointIpAddress = privateEndpointIpAddress
        self.maxSessionsAllowed = maxSessionsAllowed
        self.dnsProxyStatus = dnsProxyStatus
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }
}
