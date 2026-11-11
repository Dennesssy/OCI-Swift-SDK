import Foundation

// MARK: - MonitorStatusCountMap

public struct MonitorStatusCountMap: Codable, Sendable {

    public var total: Int?
    public var enabled: Int?
    public var disabled: Int?
    public var invalid: Int?

    private enum CodingKeys: String, CodingKey {
        case total, enabled, disabled, invalid
    }

    public init(
                total: Int? = nil,
                enabled: Int? = nil,
                disabled: Int? = nil,
                invalid: Int? = nil
    ) {
        self.total = total
        self.enabled = enabled
        self.disabled = disabled
        self.invalid = invalid
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MonitorStatusCountMap: CustomStringConvertible {
    public var description: String { "MonitorStatusCountMap()" }
}