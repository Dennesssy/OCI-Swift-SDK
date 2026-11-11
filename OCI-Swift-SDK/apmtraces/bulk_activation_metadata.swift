import Foundation

// MARK: - BulkActivationMetadata

public struct BulkActivationMetadata: Codable, Sendable {

    public var operationStatus: BulkActivationMetadataOperationStatusEnum
    public var operationType: BulkActivationMetadataOperationTypeEnum
    public var stringAttributesActivated: Int?
    public var numericAttributesActivated: Int?
    public var syntheticStringAttributesActivated: Int?
    public var syntheticNumericAttributesActivated: Int?
    public var availableStringAttributes: Int?
    public var availableNumericAttributes: Int?
    public var availableSyntheticStringAttributes: Int?
    public var availableSyntheticNumericAttributes: Int?

    private enum CodingKeys: String, CodingKey {
        case operationStatus, operationType, stringAttributesActivated, numericAttributesActivated, syntheticStringAttributesActivated, syntheticNumericAttributesActivated, availableStringAttributes, availableNumericAttributes, availableSyntheticStringAttributes, availableSyntheticNumericAttributes
    }

    public init(
                operationStatus: BulkActivationMetadataOperationStatusEnum,
                operationType: BulkActivationMetadataOperationTypeEnum,
                stringAttributesActivated: Int? = nil,
                numericAttributesActivated: Int? = nil,
                syntheticStringAttributesActivated: Int? = nil,
                syntheticNumericAttributesActivated: Int? = nil,
                availableStringAttributes: Int? = nil,
                availableNumericAttributes: Int? = nil,
                availableSyntheticStringAttributes: Int? = nil,
                availableSyntheticNumericAttributes: Int? = nil
    ) {
        self.operationStatus = operationStatus
        self.operationType = operationType
        self.stringAttributesActivated = stringAttributesActivated
        self.numericAttributesActivated = numericAttributesActivated
        self.syntheticStringAttributesActivated = syntheticStringAttributesActivated
        self.syntheticNumericAttributesActivated = syntheticNumericAttributesActivated
        self.availableStringAttributes = availableStringAttributes
        self.availableNumericAttributes = availableNumericAttributes
        self.availableSyntheticStringAttributes = availableSyntheticStringAttributes
        self.availableSyntheticNumericAttributes = availableSyntheticNumericAttributes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkActivationMetadata: CustomStringConvertible {
    public var description: String { "BulkActivationMetadata()" }
}