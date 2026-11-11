import Foundation

// MARK: - updatedatabasetoolsdatabaseapigatewayconfigglobaldetails

public struct updatedatabasetoolsdatabaseapigatewayconfigglobaldetails: Codable, Sendable {

    public var jsonData: Data?
    public var poolRoute: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum?
    public var poolRoutingHeader: String?
    public var databaseApiStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum?
    public var httpPort: Int?
    public var httpsPort: Int?
    public var certificateBundle: databaseapigatewayconfigcertificatebundle?
    public var documentRoot: String?
    public var advancedProperties: [String: String]?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, poolRoute, poolRoutingHeader, databaseApiStatus, httpPort, httpsPort, certificateBundle, documentRoot, advancedProperties, type
    }

    public init(
                jsonData: Data? = nil,
                poolRoute: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum? = nil,
                poolRoutingHeader: String? = nil,
                databaseApiStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum? = nil,
                httpPort: Int? = nil,
                httpsPort: Int? = nil,
                certificateBundle: databaseapigatewayconfigcertificatebundle? = nil,
                documentRoot: String? = nil,
                advancedProperties: [String: String]? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.poolRoute = poolRoute
        self.poolRoutingHeader = poolRoutingHeader
        self.databaseApiStatus = databaseApiStatus
        self.httpPort = httpPort
        self.httpsPort = httpsPort
        self.certificateBundle = certificateBundle
        self.documentRoot = documentRoot
        self.advancedProperties = advancedProperties
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension updatedatabasetoolsdatabaseapigatewayconfigglobaldetails: CustomStringConvertible {
    public var description: String { "updatedatabasetoolsdatabaseapigatewayconfigglobaldetails()" }
}