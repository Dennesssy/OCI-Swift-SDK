import Foundation

// MARK: - PrivilegedApiRequestOperationDetails

public struct PrivilegedApiRequestOperationDetails: Codable, Sendable {

    public var apiName: String?
    public var attributeNames: [String]?

    private enum CodingKeys: String, CodingKey {
        case apiName, attributeNames
    }

    public init(
                apiName: String? = nil,
                attributeNames: [String]? = nil
    ) {
        self.apiName = apiName
        self.attributeNames = attributeNames
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrivilegedApiRequestOperationDetails: CustomStringConvertible {
    public var description: String { "PrivilegedApiRequestOperationDetails()" }
}