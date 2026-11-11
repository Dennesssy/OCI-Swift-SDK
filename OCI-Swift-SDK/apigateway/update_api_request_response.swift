import Foundation

// MARK: - UpdateApiRequest

public struct UpdateApiRequest: Codable, Sendable {
    public var apiId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var updateApiDetails: UpdateApiDetails?

    private enum CodingKeys: String, CodingKey {
        case apiId, ifMatch, opcRequestId, isLockOverride, updateApiDetails
    }

    public init(
                apiId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                updateApiDetails: UpdateApiDetails? = nil
    ) {
        self.apiId = apiId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.updateApiDetails = updateApiDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateApiRequest: CustomStringConvertible {
    public var description: String { "UpdateApiRequest()" }
}

// MARK: - UpdateApiResponse

public struct UpdateApiResponse: Codable, Sendable {
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

extension UpdateApiResponse: CustomStringConvertible {
    public var description: String { "UpdateApiResponse()" }
}