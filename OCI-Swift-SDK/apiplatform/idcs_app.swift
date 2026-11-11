import Foundation

// MARK: - IdcsApp

public struct IdcsApp: Codable, Sendable {

    public var url: String?

    private enum CodingKeys: String, CodingKey {
        case url
    }

    public init(
                url: String? = nil
    ) {
        self.url = url
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IdcsApp: CustomStringConvertible {
    public var description: String { "IdcsApp()" }
}