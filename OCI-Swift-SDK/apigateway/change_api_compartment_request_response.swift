import Foundation

// MARK: - ChangeApiCompartmentRequest

public struct ChangeApiCompartmentRequest: Codable, Sendable {
    public var apiId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var changeApiCompartmentDetails: ChangeApiCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case apiId, ifMatch, opcRequestId, isLockOverride, changeApiCompartmentDetails
    }

    public init(
                apiId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                changeApiCompartmentDetails: ChangeApiCompartmentDetails? = nil
    ) {
        self.apiId = apiId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.changeApiCompartmentDetails = changeApiCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeApiCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeApiCompartmentRequest()" }
}

// MARK: - ChangeApiCompartmentResponse

public struct ChangeApiCompartmentResponse: Codable, Sendable {
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

extension ChangeApiCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeApiCompartmentResponse()" }
}