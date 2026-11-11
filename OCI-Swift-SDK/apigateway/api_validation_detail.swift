import Foundation

// MARK: - ApiValidationDetail

public struct ApiValidationDetail: Codable, Sendable {

    public var msg: String?
    public var severity: ApiValidationDetailSeverityEnum?
    public var src: [[Float]]?

    private enum CodingKeys: String, CodingKey {
        case msg, severity, src
    }

    public init(
                msg: String? = nil,
                severity: ApiValidationDetailSeverityEnum? = nil,
                src: [[Float]]? = nil
    ) {
        self.msg = msg
        self.severity = severity
        self.src = src
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiValidationDetail: CustomStringConvertible {
    public var description: String { "ApiValidationDetail()" }
}