import Foundation

// MARK: - WorkersSummary

public struct WorkersSummary: Codable, Sendable {

    public var total: Int?
    public var available: Int?
    public var used: Int?
    public var disabled: Int?
    public var minVersion: String?
    public var availableCapabilities: [AvailableCapability]

    private enum CodingKeys: String, CodingKey {
        case total, available, used, disabled, minVersion, availableCapabilities
    }

    public init(
                total: Int? = nil,
                available: Int? = nil,
                used: Int? = nil,
                disabled: Int? = nil,
                minVersion: String? = nil,
                availableCapabilities: [AvailableCapability]
    ) {
        self.total = total
        self.available = available
        self.used = used
        self.disabled = disabled
        self.minVersion = minVersion
        self.availableCapabilities = availableCapabilities
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkersSummary: CustomStringConvertible {
    public var description: String { "WorkersSummary()" }
}