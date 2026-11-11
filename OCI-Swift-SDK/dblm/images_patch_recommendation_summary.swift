import Foundation

// MARK: - ImagesPatchRecommendationSummary

public struct ImagesPatchRecommendationSummary: Codable, Sendable {

    public var totalImagesCount: Int?
    public var upToDateImagesCount: Int?
    public var imagePatchRecommendationsCount: Int?

    private enum CodingKeys: String, CodingKey {
        case totalImagesCount, upToDateImagesCount, imagePatchRecommendationsCount
    }

    public init(
                totalImagesCount: Int? = nil,
                upToDateImagesCount: Int? = nil,
                imagePatchRecommendationsCount: Int? = nil
    ) {
        self.totalImagesCount = totalImagesCount
        self.upToDateImagesCount = upToDateImagesCount
        self.imagePatchRecommendationsCount = imagePatchRecommendationsCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ImagesPatchRecommendationSummary: CustomStringConvertible {
    public var description: String { "ImagesPatchRecommendationSummary()" }
}