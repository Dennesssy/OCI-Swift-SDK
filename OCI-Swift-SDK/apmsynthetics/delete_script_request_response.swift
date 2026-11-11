import Foundation

// MARK: - DeleteScriptRequest

public struct DeleteScriptRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var scriptId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, scriptId, ifMatch, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                scriptId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.scriptId = scriptId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteScriptRequest: CustomStringConvertible {
    public var description: String { "DeleteScriptRequest()" }
}

// MARK: - DeleteScriptResponse

public struct DeleteScriptResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteScriptResponse: CustomStringConvertible {
    public var description: String { "DeleteScriptResponse()" }
}