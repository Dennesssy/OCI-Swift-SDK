import Foundation

// MARK: - VulnerabilitiesSummary

public struct VulnerabilitiesSummary: Codable, Sendable {

    public var total: Int?
    public var critical: Int?
    public var high: Int?
    public var medium: Int?
    public var info: Int?
    public var low: Int?

    private enum CodingKeys: String, CodingKey {
        case total, critical, high, medium, info, low
    }

    public init(
                total: Int? = nil,
                critical: Int? = nil,
                high: Int? = nil,
                medium: Int? = nil,
                info: Int? = nil,
                low: Int? = nil
    ) {
        self.total = total
        self.critical = critical
        self.high = high
        self.medium = medium
        self.info = info
        self.low = low
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VulnerabilitiesSummary: CustomStringConvertible {
    public var description: String { "VulnerabilitiesSummary()" }
}