import Foundation

// MARK: - AvailableMaintenanceScheduleStartTimeCollection

public struct AvailableMaintenanceScheduleStartTimeCollection: Codable, Sendable {

    public var items: [AvailableMaintenanceScheduleStartTimeSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [AvailableMaintenanceScheduleStartTimeSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AvailableMaintenanceScheduleStartTimeCollection: CustomStringConvertible {
    public var description: String { "AvailableMaintenanceScheduleStartTimeCollection()" }
}