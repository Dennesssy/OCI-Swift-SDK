import Foundation

// MARK: - AssembleEffectiveTagSetRequest

public struct AssembleEffectiveTagSetRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: TagDefaultSummaryLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: TagDefaultSummaryLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AssembleEffectiveTagSetRequest: CustomStringConvertible {
    public var description: String { "AssembleEffectiveTagSetRequest()" }
}

// MARK: - AssembleEffectiveTagSetResponse

public struct AssembleEffectiveTagSetResponse: Codable, Sendable {
    public var items: [TagDefaultSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [TagDefaultSummary]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AssembleEffectiveTagSetResponse: CustomStringConvertible {
    public var description: String { "AssembleEffectiveTagSetResponse()" }
}