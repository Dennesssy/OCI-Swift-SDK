/**
 * Billing Service Module
 * Handles OCI Cost, Budget, and Usage API interactions
 */

const BillingService = {
    // Cost Analysis
    async getCostAnalysis(compartmentId, timeRange = 'MTD') {
        try {
            const response = await OCIBridge.call('usageapi', 'requestSummarizedUsages', {
                compartmentId,
                timeRange
            });
            return response.items || [];
        } catch (error) {
            console.error('Failed to get cost analysis:', error);
            return [];
        }
    },
    
    // Budgets
    async listBudgets(compartmentId) {
        try {
            const response = await OCIBridge.call('budget', 'listBudgets', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list budgets:', error);
            return [];
        }
    },
    
    async getBudget(budgetId) {
        try {
            const response = await OCIBridge.call('budget', 'getBudget', { budgetId });
            return response;
        } catch (error) {
            console.error('Failed to get budget:', error);
            throw error;
        }
    },
    
    async createBudget(config) {
        try {
            const response = await OCIBridge.call('budget', 'createBudget', config);
            return response;
        } catch (error) {
            console.error('Failed to create budget:', error);
            throw error;
        }
    },
    
    async updateBudget(budgetId, config) {
        try {
            const response = await OCIBridge.call('budget', 'updateBudget', {
                budgetId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to update budget:', error);
            throw error;
        }
    },
    
    async deleteBudget(budgetId) {
        try {
            await OCIBridge.call('budget', 'deleteBudget', { budgetId });
            return true;
        } catch (error) {
            console.error('Failed to delete budget:', error);
            throw error;
        }
    },
    
    // Budget Alerts
    async listBudgetAlerts(budgetId) {
        try {
            const response = await OCIBridge.call('budget', 'listAlertRules', { budgetId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list budget alerts:', error);
            return [];
        }
    },
    
    async createBudgetAlert(budgetId, config) {
        try {
            const response = await OCIBridge.call('budget', 'createAlertRule', {
                budgetId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to create budget alert:', error);
            throw error;
        }
    },
    
    // Usage by Service
    async getUsageByService(compartmentId, startDate, endDate) {
        try {
            const response = await OCIBridge.call('usageapi', 'requestSummarizedUsages', {
                compartmentId,
                startTime: startDate,
                endTime: endDate,
                granularity: 'DAILY',
                groupBy: ['service']
            });
            return response.items || [];
        } catch (error) {
            console.error('Failed to get usage by service:', error);
            return [];
        }
    },
    
    // Forecast
    async getCostForecast(compartmentId) {
        try {
            const response = await OCIBridge.call('usageapi', 'requestForecast', {
                compartmentId
            });
            return response;
        } catch (error) {
            console.error('Failed to get cost forecast:', error);
            return null;
        }
    },
    
    // Invoices
    async listInvoices() {
        try {
            const response = await OCIBridge.call('osub', 'listInvoices');
            return response.items || [];
        } catch (error) {
            console.error('Failed to list invoices:', error);
            return [];
        }
    },
    
    // Cost Tracking Tags
    async getCostByTag(compartmentId, tagNamespace, tagKey) {
        try {
            const response = await OCIBridge.call('usageapi', 'requestSummarizedUsages', {
                compartmentId,
                groupBy: ['tag'],
                tagNamespace,
                tagKey
            });
            return response.items || [];
        } catch (error) {
            console.error('Failed to get cost by tag:', error);
            return [];
        }
    },
    
    // Helper methods
    formatCurrency(amount, currency = 'USD') {
        return new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: currency,
            minimumFractionDigits: 2
        }).format(amount);
    },
    
    getBudgetStatusColor(percent) {
        if (percent >= 100) return 'var(--status-critical)';
        if (percent >= 80) return 'var(--status-warning)';
        return 'var(--status-healthy)';
    },
    
    calculateBurnRate(currentSpend, daysInMonth = 30) {
        const dayOfMonth = new Date().getDate();
        const dailyRate = currentSpend / dayOfMonth;
        const projected = dailyRate * daysInMonth;
        return {
            daily: dailyRate,
            projected: projected,
            daysRemaining: daysInMonth - dayOfMonth
        };
    }
};

window.BillingService = BillingService;
