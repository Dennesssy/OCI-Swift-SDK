import Foundation

// MARK: - MaintenanceWindow

public struct MaintenanceWindow: Codable, Sendable {

    public var dayOfWeek: MaintenanceWindowDayOfWeekEnum?
    public var timeStart: String?

    private enum CodingKeys: String, CodingKey {
        case dayOfWeek, timeStart
    }

    public init(
                dayOfWeek: MaintenanceWindowDayOfWeekEnum? = nil,
                timeStart: String? = nil
    ) {
        self.dayOfWeek = dayOfWeek
        self.timeStart = timeStart
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MaintenanceWindow: CustomStringConvertible {
    public var description: String { "MaintenanceWindow()" }
}