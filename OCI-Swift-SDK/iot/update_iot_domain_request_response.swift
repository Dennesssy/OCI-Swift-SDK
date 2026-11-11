import Foundation

// MARK: - UpdateIotDomainRequest

public struct UpdateIotDomainRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateIotDomainDetails: UpdateIotDomainDetails?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, ifMatch, opcRequestId, updateIotDomainDetails
    }

    public init(
                iotDomainId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateIotDomainDetails: UpdateIotDomainDetails? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateIotDomainDetails = updateIotDomainDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateIotDomainRequest: CustomStringConvertible {
    public var description: String { "UpdateIotDomainRequest()" }
}

// MARK: - UpdateIotDomainResponse

public struct UpdateIotDomainResponse: Codable, Sendable {
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

extension UpdateIotDomainResponse: CustomStringConvertible {
    public var description: String { "UpdateIotDomainResponse()" }
}