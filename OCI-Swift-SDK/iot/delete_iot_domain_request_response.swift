import Foundation

// MARK: - DeleteIotDomainRequest

public struct DeleteIotDomainRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, ifMatch, opcRequestId
    }

    public init(
                iotDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteIotDomainRequest: CustomStringConvertible {
    public var description: String { "DeleteIotDomainRequest()" }
}

// MARK: - DeleteIotDomainResponse

public struct DeleteIotDomainResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteIotDomainResponse: CustomStringConvertible {
    public var description: String { "DeleteIotDomainResponse()" }
}