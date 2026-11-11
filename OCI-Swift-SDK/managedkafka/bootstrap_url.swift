import Foundation

// MARK: - BootstrapUrl

public struct BootstrapUrl: Codable, Sendable {

    public var name: String?
    public var url: String?

    private enum CodingKeys: String, CodingKey {
        case name, url
    }

    public init(
                name: String? = nil,
                url: String? = nil
    ) {
        self.name = name
        self.url = url
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BootstrapUrl: CustomStringConvertible {
    public var description: String { "BootstrapUrl()" }
}