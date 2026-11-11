import Foundation

// MARK: - CancelWorkRequestRequest

public struct CancelWorkRequestRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId, ifMatch
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.workRequestId = workRequestId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelWorkRequestRequest: CustomStringConvertible {
    public var description: String { "CancelWorkRequestRequest()" }
}

// MARK: - CancelWorkRequestResponse

public struct CancelWorkRequestResponse: Codable, Sendable {
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

extension CancelWorkRequestResponse: CustomStringConvertible {
    public var description: String { "CancelWorkRequestResponse()" }
}