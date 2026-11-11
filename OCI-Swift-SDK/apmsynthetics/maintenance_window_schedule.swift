import Foundation

// MARK: - MaintenanceWindowSchedule

public struct MaintenanceWindowSchedule: Codable, Sendable {

    public var scheduleType: MaintenanceWindowScheduleTypeEnum?
    public var timeStarted: Date?
    public var timeEnded: Date?
    public var recurrenceType: MaintenanceWindowRecurrenceTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case scheduleType, timeStarted, timeEnded, recurrenceType
    }

    public init(
                scheduleType: MaintenanceWindowScheduleTypeEnum? = nil,
                timeStarted: Date? = nil,
                timeEnded: Date? = nil,
                recurrenceType: MaintenanceWindowRecurrenceTypeEnum? = nil
    ) {
        self.scheduleType = scheduleType
        self.timeStarted = timeStarted
        self.timeEnded = timeEnded
        self.recurrenceType = recurrenceType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MaintenanceWindowSchedule: CustomStringConvertible {
    public var description: String { "MaintenanceWindowSchedule()" }
}