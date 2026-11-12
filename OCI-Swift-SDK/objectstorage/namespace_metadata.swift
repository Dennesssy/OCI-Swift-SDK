import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/namespace_metadata.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct NamespaceMetadata: Codable, Sendable {
    public var namespace: String?
    public var defaultS3CompartmentId: String?
    public var defaultSwiftCompartmentId: String?

    public init(namespace: String? = nil, defaultS3CompartmentId: String? = nil, defaultSwiftCompartmentId: String? = nil) {
        self.namespace = namespace
        self.defaultS3CompartmentId = defaultS3CompartmentId
        self.defaultSwiftCompartmentId = defaultSwiftCompartmentId
    }
}
