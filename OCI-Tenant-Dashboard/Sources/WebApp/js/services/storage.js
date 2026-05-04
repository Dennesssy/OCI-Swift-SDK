/**
 * Storage Service Module
 * Handles OCI Object Storage API interactions
 */

const StorageService = {
    async listBuckets(namespace, compartmentId) {
        try {
            const response = await OCIBridge.call('objectstorage', 'listBuckets', {
                namespace,
                compartmentId
            });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list buckets:', error);
            return [];
        }
    },
    
    async getBucket(namespace, bucketName) {
        try {
            const response = await OCIBridge.call('objectstorage', 'getBucket', {
                namespace,
                bucketName
            });
            return response;
        } catch (error) {
            console.error('Failed to get bucket:', error);
            throw error;
        }
    },
    
    async listObjects(namespace, bucketName, prefix = '') {
        try {
            const response = await OCIBridge.call('objectstorage', 'listObjects', {
                namespace,
                bucketName,
                prefix
            });
            return response.objects || [];
        } catch (error) {
            console.error('Failed to list objects:', error);
            return [];
        }
    },
    
    async uploadObject(namespace, bucketName, objectName, data) {
        try {
            const response = await OCIBridge.call('objectstorage', 'putObject', {
                namespace,
                bucketName,
                objectName,
                data
            });
            return response;
        } catch (error) {
            console.error('Failed to upload object:', error);
            throw error;
        }
    },
    
    async downloadObject(namespace, bucketName, objectName) {
        try {
            const response = await OCIBridge.call('objectstorage', 'getObject', {
                namespace,
                bucketName,
                objectName
            });
            return response;
        } catch (error) {
            console.error('Failed to download object:', error);
            throw error;
        }
    },
    
    async deleteObject(namespace, bucketName, objectName) {
        try {
            await OCIBridge.call('objectstorage', 'deleteObject', {
                namespace,
                bucketName,
                objectName
            });
            return true;
        } catch (error) {
            console.error('Failed to delete object:', error);
            throw error;
        }
    },
    
    async createBucket(namespace, bucketName, compartmentId) {
        try {
            const response = await OCIBridge.call('objectstorage', 'createBucket', {
                namespace,
                bucketName,
                compartmentId
            });
            return response;
        } catch (error) {
            console.error('Failed to create bucket:', error);
            throw error;
        }
    },
    
    async deleteBucket(namespace, bucketName) {
        try {
            await OCIBridge.call('objectstorage', 'deleteBucket', {
                namespace,
                bucketName
            });
            return true;
        } catch (error) {
            console.error('Failed to delete bucket:', error);
            throw error;
        }
    },
    
    async getNamespace() {
        try {
            const response = await OCIBridge.call('objectstorage', 'getNamespace');
            return response.value;
        } catch (error) {
            console.error('Failed to get namespace:', error);
            return null;
        }
    },
    
    // Helper methods
    formatSize(bytes) {
        if (bytes === 0) return '0 B';
        const k = 1024;
        const sizes = ['B', 'KB', 'MB', 'GB', 'TB'];
        const i = Math.floor(Math.log(bytes) / Math.log(k));
        return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
    },
    
    getStorageClassColor(storageClass) {
        const colors = {
            'Standard': 'var(--status-healthy)',
            'InfrequentAccess': 'var(--status-warning)',
            'Archive': 'var(--text-secondary)'
        };
        return colors[storageClass] || 'var(--text-secondary)';
    }
};

window.StorageService = StorageService;
