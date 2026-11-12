import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/update_namespace_metadata_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct UpdateNamespaceMetadataDetails: Codable, Sendable {
    public var defaultS3CompartmentId: String?
    public var defaultSwiftCompartmentId: String?

    public init(defaultS3CompartmentId: String? = nil, defaultSwiftCompartmentId: String? = nil) {
        self.defaultS3CompartmentId = defaultS3CompartmentId
        self.defaultSwiftCompartmentId = defaultSwiftCompartmentId
    }
}
