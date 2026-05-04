// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum BaseAnnouncementTypeEnum: String, Codable {
    case actionRecommended = "ACTION_RECOMMENDED"
    case actionRequired = "ACTION_REQUIRED"
    case emergencyChange = "EMERGENCY_CHANGE"
    case emergencyMaintenance = "EMERGENCY_MAINTENANCE"
    case emergencyMaintenanceComplete = "EMERGENCY_MAINTENANCE_COMPLETE"
    case emergencyMaintenanceExtended = "EMERGENCY_MAINTENANCE_EXTENDED"
    case emergencyMaintenanceRescheduled = "EMERGENCY_MAINTENANCE_RESCHEDULED"
    case information = "INFORMATION"
    case plannedChange = "PLANNED_CHANGE"
    case plannedChangeComplete = "PLANNED_CHANGE_COMPLETE"
    case plannedChangeExtended = "PLANNED_CHANGE_EXTENDED"
    case plannedChangeRescheduled = "PLANNED_CHANGE_RESCHEDULED"
    case productionEventNotification = "PRODUCTION_EVENT_NOTIFICATION"
    case scheduledMaintenance = "SCHEDULED_MAINTENANCE"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = BaseAnnouncementTypeEnum(rawValue: rawValue.uppercased()) ?? .actionRecommended
    }
    
    public static func fromString(_ value: String) -> BaseAnnouncementTypeEnum {
        switch value.uppercased() {
        case "ACTION_RECOMMENDED": return .actionRecommended
        case "ACTION_REQUIRED": return .actionRequired
        case "EMERGENCY_CHANGE": return .emergencyChange
        case "EMERGENCY_MAINTENANCE": return .emergencyMaintenance
        case "EMERGENCY_MAINTENANCE_COMPLETE": return .emergencyMaintenanceComplete
        case "EMERGENCY_MAINTENANCE_EXTENDED": return .emergencyMaintenanceExtended
        case "EMERGENCY_MAINTENANCE_RESCHEDULED": return .emergencyMaintenanceRescheduled
        case "INFORMATION": return .information
        case "PLANNED_CHANGE": return .plannedChange
        case "PLANNED_CHANGE_COMPLETE": return .plannedChangeComplete
        case "PLANNED_CHANGE_EXTENDED": return .plannedChangeExtended
        case "PLANNED_CHANGE_RESCHEDULED": return .plannedChangeRescheduled
        case "PRODUCTION_EVENT_NOTIFICATION": return .productionEventNotification
        case "SCHEDULED_MAINTENANCE": return .scheduledMaintenance
        default: return .actionRecommended
        }
    }
    
    public static func allValues() -> [BaseAnnouncementTypeEnum] {
        return [.actionRecommended, .actionRequired, .emergencyChange, .emergencyMaintenance, .emergencyMaintenanceComplete, .emergencyMaintenanceExtended, .emergencyMaintenanceRescheduled, .information, .plannedChange, .plannedChangeComplete, .plannedChangeExtended, .plannedChangeRescheduled, .productionEventNotification, .scheduledMaintenance]
    }
}
