import Foundation

// MARK: - GetIamWorkRequestRequest

public struct GetIamWorkRequestRequest: Codable, Sendable {
    public var iamWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iamWorkRequestId, opcRequestId
    }

    public init(
                iamWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.iamWorkRequestId = iamWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIamWorkRequestRequest: CustomStringConvertible {
    public var description: String { "GetIamWorkRequestRequest()" }
}

// MARK: - GetIamWorkRequestResponse

public struct GetIamWorkRequestResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var iamWorkRequest: IamWorkRequest?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, iamWorkRequest
    }

    public init(
                opcRequestId: String? = nil,
                iamWorkRequest: IamWorkRequest? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.iamWorkRequest = iamWorkRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIamWorkRequestResponse: CustomStringConvertible {
    public var description: String { "GetIamWorkRequestResponse()" }
}