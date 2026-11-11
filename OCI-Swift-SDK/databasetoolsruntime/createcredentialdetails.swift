import Foundation

// MARK: - createcredentialdetails

public struct createcredentialdetails: Codable, Sendable {

    public var jsonData: Data?
    public var key: String?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, key, type
    }

    public init(
                jsonData: Data? = nil,
                key: String? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.key = key
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension createcredentialdetails: CustomStringConvertible {
    public var description: String { "createcredentialdetails()" }
}