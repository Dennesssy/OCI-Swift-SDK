import Foundation

// MARK: - OciDatabaseSourceLocation

public struct OciDatabaseSourceLocation: Codable, Sendable {

    public var id: String?
    public var functionName: String?
    public var url: String?

    private enum CodingKeys: String, CodingKey {
        case id, functionName, url
    }

    public init(
                id: String? = nil,
                functionName: String? = nil,
                url: String? = nil
    ) {
        self.id = id
        self.functionName = functionName
        self.url = url
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciDatabaseSourceLocation: CustomStringConvertible {
    public var description: String { "OciDatabaseSourceLocation()" }
}