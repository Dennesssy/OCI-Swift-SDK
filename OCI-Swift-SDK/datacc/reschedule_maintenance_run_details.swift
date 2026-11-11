import Foundation

// MARK: - RescheduleMaintenanceRunDetails

public struct RescheduleMaintenanceRunDetails: Codable, Sendable {

    public var timeScheduled: Date?
    public var reason: String?

    private enum CodingKeys: String, CodingKey {
        case timeScheduled, reason
    }

    public init(
                timeScheduled: Date? = nil,
                reason: String? = nil
    ) {
        self.timeScheduled = timeScheduled
        self.reason = reason
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RescheduleMaintenanceRunDetails: CustomStringConvertible {
    public var description: String { "RescheduleMaintenanceRunDetails()" }
}