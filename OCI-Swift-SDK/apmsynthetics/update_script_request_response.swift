import Foundation

// MARK: - UpdateScriptRequest

public struct UpdateScriptRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var scriptId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateScriptDetails: UpdateScriptDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, scriptId, ifMatch, opcRequestId, updateScriptDetails
    }

    public init(
                apmDomainId: String? = nil,
                scriptId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateScriptDetails: UpdateScriptDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.scriptId = scriptId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateScriptDetails = updateScriptDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateScriptRequest: CustomStringConvertible {
    public var description: String { "UpdateScriptRequest()" }
}

// MARK: - UpdateScriptResponse

public struct UpdateScriptResponse: Codable, Sendable {
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

extension UpdateScriptResponse: CustomStringConvertible {
    public var description: String { "UpdateScriptResponse()" }
}