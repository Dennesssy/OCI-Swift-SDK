import Foundation

// MARK: - ExternalRespCache

public struct ExternalRespCache: Codable, Sendable {

    public var servers: [ResponseCacheRespServer]
    public var authenticationSecretId: String?
    public var authenticationSecretVersionNumber: Int64?
    public var isSslEnabled: Bool?
    public var isSslVerifyDisabled: Bool?
    public var connectTimeoutInMs: Int?
    public var readTimeoutInMs: Int?
    public var sendTimeoutInMs: Int?

    private enum CodingKeys: String, CodingKey {
        case servers, authenticationSecretId, authenticationSecretVersionNumber, isSslEnabled, isSslVerifyDisabled, connectTimeoutInMs, readTimeoutInMs, sendTimeoutInMs
    }

    public init(
                servers: [ResponseCacheRespServer],
                authenticationSecretId: String? = nil,
                authenticationSecretVersionNumber: Int64? = nil,
                isSslEnabled: Bool? = nil,
                isSslVerifyDisabled: Bool? = nil,
                connectTimeoutInMs: Int? = nil,
                readTimeoutInMs: Int? = nil,
                sendTimeoutInMs: Int? = nil
    ) {
        self.servers = servers
        self.authenticationSecretId = authenticationSecretId
        self.authenticationSecretVersionNumber = authenticationSecretVersionNumber
        self.isSslEnabled = isSslEnabled
        self.isSslVerifyDisabled = isSslVerifyDisabled
        self.connectTimeoutInMs = connectTimeoutInMs
        self.readTimeoutInMs = readTimeoutInMs
        self.sendTimeoutInMs = sendTimeoutInMs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalRespCache: CustomStringConvertible {
    public var description: String { "ExternalRespCache()" }
}