import Foundation

// MARK: - DeleteApiRequest

public struct DeleteApiRequest: Codable, Sendable {
    public var apiId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?

    private enum CodingKeys: String, CodingKey {
        case apiId, ifMatch, opcRequestId, isLockOverride
    }

    public init(
                apiId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil
    ) {
        self.apiId = apiId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteApiRequest: CustomStringConvertible {
    public var description: String { "DeleteApiRequest()" }
}

// MARK: - DeleteApiResponse

public struct DeleteApiResponse: Codable, Sendable {
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

extension DeleteApiResponse: CustomStringConvertible {
    public var description: String { "DeleteApiResponse()" }
}