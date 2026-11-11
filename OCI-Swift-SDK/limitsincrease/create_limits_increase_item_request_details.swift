import Foundation

// MARK: - CreateLimitsIncreaseItemRequestDetails

public struct CreateLimitsIncreaseItemRequestDetails: Codable, Sendable {

    public var serviceName: String?
    public var limitName: String?
    public var region: String?
    public var value: Int64?
    public var scope: String?
    public var questionnaireResponse: [LimitsIncreaseItemQuestionRequest]?

    private enum CodingKeys: String, CodingKey {
        case serviceName, limitName, region, value, scope, questionnaireResponse
    }

    public init(
                serviceName: String? = nil,
                limitName: String? = nil,
                region: String? = nil,
                value: Int64? = nil,
                scope: String? = nil,
                questionnaireResponse: [LimitsIncreaseItemQuestionRequest]? = nil
    ) {
        self.serviceName = serviceName
        self.limitName = limitName
        self.region = region
        self.value = value
        self.scope = scope
        self.questionnaireResponse = questionnaireResponse
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateLimitsIncreaseItemRequestDetails: CustomStringConvertible {
    public var description: String { "CreateLimitsIncreaseItemRequestDetails()" }
}