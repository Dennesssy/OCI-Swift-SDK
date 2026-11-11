import Foundation

// MARK: - updatedatabasetoolsdatabaseapigatewayconfigpoolautoapispecdetails

public struct updatedatabasetoolsdatabaseapigatewayconfigpoolautoapispecdetails: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var databaseObjectName: String?
    public var databaseObjectType: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum?
    public var description: String?
    public var alias: String?
    public var operations: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum]?
    public var securitySchemes: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum]?
    public var scope: String?
    public var roles: [String]?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, databaseObjectName, databaseObjectType, description, alias, operations, securitySchemes, scope, roles, type
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                databaseObjectName: String? = nil,
                databaseObjectType: UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsDatabaseObjectTypeEnum? = nil,
                description: String? = nil,
                alias: String? = nil,
                operations: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum]? = nil,
                securitySchemes: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum]? = nil,
                scope: String? = nil,
                roles: [String]? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.databaseObjectName = databaseObjectName
        self.databaseObjectType = databaseObjectType
        self.description = description
        self.alias = alias
        self.operations = operations
        self.securitySchemes = securitySchemes
        self.scope = scope
        self.roles = roles
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
