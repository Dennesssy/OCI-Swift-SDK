import Foundation

// MARK: - AvailableMaintenanceScheduleStartTimeSummary

public struct AvailableMaintenanceScheduleStartTimeSummary: Codable, Sendable {

    public var dayOfWeek: AvailableMaintenanceScheduleStartTimeSummaryDayOfWeekEnum
    public var startTimes: [String]

    private enum CodingKeys: String, CodingKey {
        case dayOfWeek, startTimes
    }

    public init(
                dayOfWeek: AvailableMaintenanceScheduleStartTimeSummaryDayOfWeekEnum,
                startTimes: [String]
    ) {
        self.dayOfWeek = dayOfWeek
        self.startTimes = startTimes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AvailableMaintenanceScheduleStartTimeSummary: CustomStringConvertible {
    public var description: String { "AvailableMaintenanceScheduleStartTimeSummary()" }
}