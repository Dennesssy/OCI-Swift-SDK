import Foundation

// MARK: - ValidateDatabaseToolsConnectionOracleDatabaseResult

public struct ValidateDatabaseToolsConnectionOracleDatabaseResult: Codable, Sendable {

    public var code: String?
    public var message: String?
    public var databaseVersion: String?
    public var cause: String?
    public var action: String?
    public var databaseName: String?
    public var currentSchema: String?
    public var sessionUser: String?
    public var proxyUser: String?
    public var authenticatedIdentity: String?
    public var authenticationMethod: String?
    public var cloudService: String?
    public var databaseToolsIdentityStatuses: [ValidationIdentityStatus]?
    public var enterpriseIdentity: String?
    public var proxyEnterpriseIdentity: String?
    public var externalAuthenticationStatuses: [ValidationExternalAuthenticationStatus]?
    public var dbmsCloudStatus: DbmsCloudStatusEnum

    private enum CodingKeys: String, CodingKey {
        case code, message, databaseVersion, cause, action, databaseName, currentSchema, sessionUser, proxyUser, authenticatedIdentity, authenticationMethod, cloudService, databaseToolsIdentityStatuses, enterpriseIdentity, proxyEnterpriseIdentity, externalAuthenticationStatuses, dbmsCloudStatus
    }

    public init(
                code: String? = nil,
                message: String? = nil,
                databaseVersion: String? = nil,
                cause: String? = nil,
                action: String? = nil,
                databaseName: String? = nil,
                currentSchema: String? = nil,
                sessionUser: String? = nil,
                proxyUser: String? = nil,
                authenticatedIdentity: String? = nil,
                authenticationMethod: String? = nil,
                cloudService: String? = nil,
                databaseToolsIdentityStatuses: [ValidationIdentityStatus]? = nil,
                enterpriseIdentity: String? = nil,
                proxyEnterpriseIdentity: String? = nil,
                externalAuthenticationStatuses: [ValidationExternalAuthenticationStatus]? = nil,
                dbmsCloudStatus: DbmsCloudStatusEnum
    ) {
        self.code = code
        self.message = message
        self.databaseVersion = databaseVersion
        self.cause = cause
        self.action = action
        self.databaseName = databaseName
        self.currentSchema = currentSchema
        self.sessionUser = sessionUser
        self.proxyUser = proxyUser
        self.authenticatedIdentity = authenticatedIdentity
        self.authenticationMethod = authenticationMethod
        self.cloudService = cloudService
        self.databaseToolsIdentityStatuses = databaseToolsIdentityStatuses
        self.enterpriseIdentity = enterpriseIdentity
        self.proxyEnterpriseIdentity = proxyEnterpriseIdentity
        self.externalAuthenticationStatuses = externalAuthenticationStatuses
        self.dbmsCloudStatus = dbmsCloudStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateDatabaseToolsConnectionOracleDatabaseResult: CustomStringConvertible {
    public var description: String { "ValidateDatabaseToolsConnectionOracleDatabaseResult()" }
}