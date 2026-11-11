import Foundation

// MARK: - updatepropertysetdetails

public struct updatepropertysetdetails: Codable, Sendable {

    public var jsonData: Data?
    public var key: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, key
    }

    public init(
                jsonData: Data? = nil,
                key: String? = nil
    ) {
        self.jsonData = jsonData
        self.key = key
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension updatepropertysetdetails: CustomStringConvertible {
    public var description: String { "updatepropertysetdetails()" }
}