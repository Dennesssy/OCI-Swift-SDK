import Foundation

// MARK: - DeleteSdkRequest

public struct DeleteSdkRequest: Codable, Sendable {
    public var sdkId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var isLockOverride: Bool?

    private enum CodingKeys: String, CodingKey {
        case sdkId, opcRequestId, ifMatch, isLockOverride
    }

    public init(
                sdkId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                isLockOverride: Bool? = nil
    ) {
        self.sdkId = sdkId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.isLockOverride = isLockOverride
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSdkRequest: CustomStringConvertible {
    public var description: String { "DeleteSdkRequest()" }
}

// MARK: - DeleteSdkResponse

public struct DeleteSdkResponse: Codable, Sendable {
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

extension DeleteSdkResponse: CustomStringConvertible {
    public var description: String { "DeleteSdkResponse()" }
}