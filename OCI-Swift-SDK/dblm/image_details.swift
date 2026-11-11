import Foundation

// MARK: - ImageDetails

public struct ImageDetails: Codable, Sendable {

    public var imageId: String?
    public var subscribedImage: String?
    public var currentVersion: String?
    public var imageStatus: ImageDetailsImageStatusEnum?
    public var imageVersion: String?
    public var imageOwner: String?
    public var createdBy: String?
    public var timeImageCreation: Date?
    public var upToDateImageVersion: String?

    private enum CodingKeys: String, CodingKey {
        case imageId, subscribedImage, currentVersion, imageStatus, imageVersion, imageOwner, createdBy, timeImageCreation, upToDateImageVersion
    }

    public init(
                imageId: String? = nil,
                subscribedImage: String? = nil,
                currentVersion: String? = nil,
                imageStatus: ImageDetailsImageStatusEnum? = nil,
                imageVersion: String? = nil,
                imageOwner: String? = nil,
                createdBy: String? = nil,
                timeImageCreation: Date? = nil,
                upToDateImageVersion: String? = nil
    ) {
        self.imageId = imageId
        self.subscribedImage = subscribedImage
        self.currentVersion = currentVersion
        self.imageStatus = imageStatus
        self.imageVersion = imageVersion
        self.imageOwner = imageOwner
        self.createdBy = createdBy
        self.timeImageCreation = timeImageCreation
        self.upToDateImageVersion = upToDateImageVersion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ImageDetails: CustomStringConvertible {
    public var description: String { "ImageDetails()" }
}