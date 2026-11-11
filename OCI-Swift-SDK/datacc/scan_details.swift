import Foundation

// MARK: - ScanDetails

public struct ScanDetails: Codable, Sendable {

    public var hostname: String?
    public var ips: [String]

    private enum CodingKeys: String, CodingKey {
        case hostname, ips
    }

    public init(
                hostname: String? = nil,
                ips: [String]
    ) {
        self.hostname = hostname
        self.ips = ips
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScanDetails: CustomStringConvertible {
    public var description: String { "ScanDetails()" }
}