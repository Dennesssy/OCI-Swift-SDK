import Foundation

// MARK: - SdkLanguageOptionalParameters

public struct SdkLanguageOptionalParameters: Codable, Sendable {

    public var paramName: String?
    public var displayName: String?
    public var description: String?
    public var isRequired: Bool?
    public var maxSize: Float?
    public var inputType: SdkLanguageOptionalParametersInputTypeEnum?
    public var allowedValues: [SdkLanguageOptionalParametersAllowedValue]?

    private enum CodingKeys: String, CodingKey {
        case paramName, displayName, description, isRequired, maxSize, inputType, allowedValues
    }

    public init(
                paramName: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                isRequired: Bool? = nil,
                maxSize: Float? = nil,
                inputType: SdkLanguageOptionalParametersInputTypeEnum? = nil,
                allowedValues: [SdkLanguageOptionalParametersAllowedValue]? = nil
    ) {
        self.paramName = paramName
        self.displayName = displayName
        self.description = description
        self.isRequired = isRequired
        self.maxSize = maxSize
        self.inputType = inputType
        self.allowedValues = allowedValues
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
