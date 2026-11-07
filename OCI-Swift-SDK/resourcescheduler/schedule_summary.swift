// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation
import OCICommon

public struct ScheduleSummary: Codable {
    public var id: String
    public var compartmentId: String
    public var displayName: String
    public var action: ScheduleActionEnum
    public var recurrenceDetails: String
    public var recurrenceType: ScheduleRecurrenceTypeEnum
    public var timeCreated: Date
    public var lifecycleState: ScheduleLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var description: String?
    public var timeStarts: Date?
    public var timeEnds: Date?
    public var timeUpdated: Date?
    public var timeLastRun: Date?
    public var timeNextRun: Date?
    
    public enum CodingKeys: String, CodingKey {
        case id = "id"
        case compartmentId = "compartmentId"
        case displayName = "displayName"
        case action = "action"
        case recurrenceDetails = "recurrenceDetails"
        case recurrenceType = "recurrenceType"
        case timeCreated = "timeCreated"
        case lifecycleState = "lifecycleState"
        case freeformTags = "freeformTags"
        case definedTags = "definedTags"
        case description = "description"
        case timeStarts = "timeStarts"
        case timeEnds = "timeEnds"
        case timeUpdated = "timeUpdated"
        case timeLastRun = "timeLastRun"
        case timeNextRun = "timeNextRun"
    }
    
    public init(id: String,
                compartmentId: String,
                displayName: String,
                action: ScheduleActionEnum,
                recurrenceDetails: String,
                recurrenceType: ScheduleRecurrenceTypeEnum,
                timeCreated: Date,
                lifecycleState: ScheduleLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                description: String? = nil,
                timeStarts: Date? = nil,
                timeEnds: Date? = nil,
                timeUpdated: Date? = nil,
                timeLastRun: Date? = nil,
                timeNextRun: Date? = nil) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.action = action
        self.recurrenceDetails = recurrenceDetails
        self.recurrenceType = recurrenceType
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.description = description
        self.timeStarts = timeStarts
        self.timeEnds = timeEnds
        self.timeUpdated = timeUpdated
        self.timeLastRun = timeLastRun
        self.timeNextRun = timeNextRun
    }
}
