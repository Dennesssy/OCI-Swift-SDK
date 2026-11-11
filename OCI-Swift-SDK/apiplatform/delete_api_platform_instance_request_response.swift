import Foundation

// MARK: - DeleteApiPlatformInstanceRequest

public struct DeleteApiPlatformInstanceRequest: Codable, Sendable {
    public var apiPlatformInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apiPlatformInstanceId, ifMatch, opcRequestId
    }

    public init(
                apiPlatformInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apiPlatformInstanceId = apiPlatformInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteApiPlatformInstanceRequest: CustomStringConvertible {
    public var description: String { "DeleteApiPlatformInstanceRequest()" }
}

// MARK: - DeleteApiPlatformInstanceResponse

public struct DeleteApiPlatformInstanceResponse: Codable, Sendable {
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

extension DeleteApiPlatformInstanceResponse: CustomStringConvertible {
    public var description: String { "DeleteApiPlatformInstanceResponse()" }
}