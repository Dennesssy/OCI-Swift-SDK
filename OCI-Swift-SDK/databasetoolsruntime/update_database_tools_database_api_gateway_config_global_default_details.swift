import Foundation
import OCICommon

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDefaultDetails

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDefaultDetails: Codable, Sendable {

    public var poolRoutingHeader: String?
    public var httpPort: Int?
    public var httpsPort: Int?
    public var certificateBundle: JSONValue?
    public var documentRoot: String?
    public var advancedProperties: [String: String]?
    public var poolRoute: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum?
    public var databaseApiStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case poolRoutingHeader, httpPort, httpsPort, certificateBundle, documentRoot, advancedProperties, poolRoute, databaseApiStatus
    }

    public init(
                poolRoutingHeader: String? = nil,
                httpPort: Int? = nil,
                httpsPort: Int? = nil,
                certificateBundle: JSONValue? = nil,
                documentRoot: String? = nil,
                advancedProperties: [String: String]? = nil,
                poolRoute: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum? = nil,
                databaseApiStatus: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum? = nil
    ) {
        self.poolRoutingHeader = poolRoutingHeader
        self.httpPort = httpPort
        self.httpsPort = httpsPort
        self.certificateBundle = certificateBundle
        self.documentRoot = documentRoot
        self.advancedProperties = advancedProperties
        self.poolRoute = poolRoute
        self.databaseApiStatus = databaseApiStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDefaultDetails: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDefaultDetails()" }
}