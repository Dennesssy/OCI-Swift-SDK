import Foundation

// MARK: - putrepositoryrefdetails

public struct putrepositoryrefdetails: Codable, Sendable {

    public var jsonData: Data?
    public var refType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, refType
    }

    public init(
                jsonData: Data? = nil,
                refType: String? = nil
    ) {
        self.jsonData = jsonData
        self.refType = refType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension putrepositoryrefdetails: CustomStringConvertible {
    public var description: String { "putrepositoryrefdetails()" }
}