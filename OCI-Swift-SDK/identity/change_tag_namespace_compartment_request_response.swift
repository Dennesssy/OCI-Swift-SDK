import Foundation

// MARK: - ChangeTagNamespaceCompartmentRequest

public struct ChangeTagNamespaceCompartmentRequest: Codable, Sendable {
    public var tagNamespaceId: String?
    public var isLockOverride: Bool?
    public var opcRequestId: String?
    public var changeTagNamespaceCompartmentDetail: ChangeTagNamespaceCompartmentDetail?

    private enum CodingKeys: String, CodingKey {
        case tagNamespaceId, isLockOverride, opcRequestId, changeTagNamespaceCompartmentDetail
    }

    public init(
                tagNamespaceId: String? = nil,
                isLockOverride: Bool? = nil,
                opcRequestId: String? = nil,
                changeTagNamespaceCompartmentDetail: ChangeTagNamespaceCompartmentDetail? = nil
    ) {
        self.tagNamespaceId = tagNamespaceId
        self.isLockOverride = isLockOverride
        self.opcRequestId = opcRequestId
        self.changeTagNamespaceCompartmentDetail = changeTagNamespaceCompartmentDetail
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeTagNamespaceCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeTagNamespaceCompartmentRequest()" }
}

// MARK: - ChangeTagNamespaceCompartmentResponse

public struct ChangeTagNamespaceCompartmentResponse: Codable, Sendable {
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

extension ChangeTagNamespaceCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeTagNamespaceCompartmentResponse()" }
}