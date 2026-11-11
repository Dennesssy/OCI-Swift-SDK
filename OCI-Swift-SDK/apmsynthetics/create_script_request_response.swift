import Foundation

// MARK: - CreateScriptRequest

public struct CreateScriptRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var createScriptDetails: CreateScriptDetails?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, createScriptDetails
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                createScriptDetails: CreateScriptDetails? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.createScriptDetails = createScriptDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateScriptRequest: CustomStringConvertible {
    public var description: String { "CreateScriptRequest()" }
}

// MARK: - CreateScriptResponse

public struct CreateScriptResponse: Codable, Sendable {
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

extension CreateScriptResponse: CustomStringConvertible {
    public var description: String { "CreateScriptResponse()" }
}