import Foundation

// MARK: - databasetoolsdatabaseapigatewayconfigglobal

public struct databasetoolsdatabaseapigatewayconfigglobal: Codable, Sendable {

    public var jsonData: Data?
    public var poolRoute: DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum?
    public var poolRoutingHeader: String?
    public var databaseApiStatus: DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum?
    public var metadataSource: DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum?
    public var httpPort: Int?
    public var httpsPort: Int?
    public var certificateBundle: databaseapigatewayconfigcertificatebundle?
    public var documentRoot: String?
    public var advancedProperties: [String: String]?
    public var key: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, poolRoute, poolRoutingHeader, databaseApiStatus, metadataSource, httpPort, httpsPort, certificateBundle, documentRoot, advancedProperties, key, timeCreated, timeUpdated, type
    }

    public init(
                jsonData: Data? = nil,
                poolRoute: DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum? = nil,
                poolRoutingHeader: String? = nil,
                databaseApiStatus: DatabaseToolsDatabaseApiGatewayConfigGlobalDatabaseApiStatusEnum? = nil,
                metadataSource: DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum? = nil,
                httpPort: Int? = nil,
                httpsPort: Int? = nil,
                certificateBundle: databaseapigatewayconfigcertificatebundle? = nil,
                documentRoot: String? = nil,
                advancedProperties: [String: String]? = nil,
                key: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.poolRoute = poolRoute
        self.poolRoutingHeader = poolRoutingHeader
        self.databaseApiStatus = databaseApiStatus
        self.metadataSource = metadataSource
        self.httpPort = httpPort
        self.httpsPort = httpsPort
        self.certificateBundle = certificateBundle
        self.documentRoot = documentRoot
        self.advancedProperties = advancedProperties
        self.key = key
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension databasetoolsdatabaseapigatewayconfigglobal: CustomStringConvertible {
    public var description: String { "databasetoolsdatabaseapigatewayconfigglobal()" }
}