import Foundation

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDefaultDetails

public struct CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDefaultDetails: Codable, Sendable {

    public var displayName: String?
    public var content: String?

    private enum CodingKeys: String, CodingKey {
        case displayName, content
    }

    public init(
                displayName: String? = nil,
                content: String? = nil
    ) {
        self.displayName = displayName
        self.content = content
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDefaultDetails: CustomStringConvertible {
    public var description: String { "CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDefaultDetails()" }
}