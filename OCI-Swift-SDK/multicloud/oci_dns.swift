import Foundation

// MARK: - OciDns

public struct OciDns: Codable, Sendable {

    public var customDomainName: String?

    private enum CodingKeys: String, CodingKey {
        case customDomainName
    }

    public init(
                customDomainName: String? = nil
    ) {
        self.customDomainName = customDomainName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciDns: CustomStringConvertible {
    public var description: String { "OciDns()" }
}