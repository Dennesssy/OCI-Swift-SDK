import Foundation

// MARK: - AvailableOverrideMaintenanceStartTimeSummary

public struct AvailableOverrideMaintenanceStartTimeSummary: Codable, Sendable {

    public var timeDateAvailable: Date?
    public var startTimes: [String]

    private enum CodingKeys: String, CodingKey {
        case timeDateAvailable, startTimes
    }

    public init(
                timeDateAvailable: Date? = nil,
                startTimes: [String]
    ) {
        self.timeDateAvailable = timeDateAvailable
        self.startTimes = startTimes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AvailableOverrideMaintenanceStartTimeSummary: CustomStringConvertible {
    public var description: String { "AvailableOverrideMaintenanceStartTimeSummary()" }
}