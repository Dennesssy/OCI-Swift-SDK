import Foundation

// MARK: - GetScriptRequest

public struct GetScriptRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var scriptId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, scriptId, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                scriptId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.scriptId = scriptId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetScriptRequest: CustomStringConvertible {
    public var description: String { "GetScriptRequest()" }
}

// MARK: - GetScriptResponse

public struct GetScriptResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var script: Script?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, script
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                script: Script? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.script = script
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetScriptResponse: CustomStringConvertible {
    public var description: String { "GetScriptResponse()" }
}