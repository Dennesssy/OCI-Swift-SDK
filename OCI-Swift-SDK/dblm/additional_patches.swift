import Foundation

// MARK: - AdditionalPatches

public struct AdditionalPatches: Codable, Sendable {

    public var patchId: Int?
    public var patchName: String?
    public var description: String?
    public var category: AdditionalPatchesCategoryEnum?

    private enum CodingKeys: String, CodingKey {
        case patchId, patchName, description, category
    }

    public init(
                patchId: Int? = nil,
                patchName: String? = nil,
                description: String? = nil,
                category: AdditionalPatchesCategoryEnum? = nil
    ) {
        self.patchId = patchId
        self.patchName = patchName
        self.description = description
        self.category = category
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
