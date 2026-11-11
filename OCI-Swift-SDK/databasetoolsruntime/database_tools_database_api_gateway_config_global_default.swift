import Foundation
import OCICommon

// MARK: - DatabaseToolsDatabaseApiGatewayConfigGlobalDefault

public struct DatabaseToolsDatabaseApiGatewayConfigGlobalDefault: Codable, Sendable {

    public var key: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var poolRoutingHeader: String?
    public var httpPort: Int?
    public var httpsPort: Int?
    public var certificateBundle: JSONValue?
    public var documentRoot: String?
    public var advancedProperties: [String: String]?
    public var poolRoute: DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum?
    public var databaseApiStatus: DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum?
    public var metadataSource: DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum?

    private enum CodingKeys: String, CodingKey {
        case key, timeCreated, timeUpdated, poolRoutingHeader, httpPort, httpsPort, certificateBundle, documentRoot, advancedProperties, poolRoute, databaseApiStatus, metadataSource
    }

    public init(
                key: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                poolRoutingHeader: String? = nil,
                httpPort: Int? = nil,
                httpsPort: Int? = nil,
                certificateBundle: JSONValue? = nil,
                documentRoot: String? = nil,
                advancedProperties: [String: String]? = nil,
                poolRoute: DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum? = nil,
                databaseApiStatus: DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum? = nil,
                metadataSource: DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum? = nil
    ) {
        self.key = key
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.poolRoutingHeader = poolRoutingHeader
        self.httpPort = httpPort
        self.httpsPort = httpsPort
        self.certificateBundle = certificateBundle
        self.documentRoot = documentRoot
        self.advancedProperties = advancedProperties
        self.poolRoute = poolRoute
        self.databaseApiStatus = databaseApiStatus
        self.metadataSource = metadataSource
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsDatabaseApiGatewayConfigGlobalDefault: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigGlobalDefault()" }
}