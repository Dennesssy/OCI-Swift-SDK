/**
 * OCI Tenant Dashboard - Main Application
 */

const OCIDashboard = {
    currentView: 'dashboard',
    currentCategory: null,
    
    async init() {
        // Check authentication first
        const isAuth = await OCIBridge.auth.isAuthenticated();
        if (!isAuth) {
            // Redirect to auth page
            window.location.href = 'auth.html';
            return;
        }
        
        this.setupEventListeners();
        this.setupNavigation();
        this.loadInitialData();
        this.setupKeyboardShortcuts();
        this.setupLogoutButton();
    },
    
    setupLogoutButton() {
        // Add logout button to sidebar
        const sidebarFooter = document.querySelector('.sidebar-footer');
        if (sidebarFooter) {
            const logoutBtn = document.createElement('button');
            logoutBtn.className = 'btn-logout';
            logoutBtn.innerHTML = '<span>🚪</span> Logout';
            logoutBtn.style.cssText = `
                width: 100%;
                margin-top: 12px;
                padding: 8px;
                background: transparent;
                border: 1px solid var(--border-primary);
                border-radius: 6px;
                color: var(--text-secondary);
                font-size: 12px;
                cursor: pointer;
                display: flex;
                align-items: center;
                gap: 6px;
                justify-content: center;
                transition: all 0.15s;
            `;
            logoutBtn.onmouseover = () => {
                logoutBtn.style.background = 'var(--bg-tertiary)';
                logoutBtn.style.color = 'var(--text-primary)';
            };
            logoutBtn.onmouseout = () => {
                logoutBtn.style.background = 'transparent';
                logoutBtn.style.color = 'var(--text-secondary)';
            };
            logoutBtn.onclick = async () => {
                await OCIBridge.auth.logout();
                window.location.href = 'auth.html';
            };
            sidebarFooter.appendChild(logoutBtn);
        }
    },
    
    setupEventListeners() {
        // Navigation items
        document.querySelectorAll('.nav-item[data-view], .nav-item[data-category]').forEach(item => {
            item.addEventListener('click', (e) => {
                e.preventDefault();
                
                // Update active state
                document.querySelectorAll('.nav-item').forEach(i => i.classList.remove('active'));
                item.classList.add('active');
                
                // Handle navigation
                const view = item.dataset.view;
                const category = item.dataset.category;
                
                if (view === 'dashboard') {
                    this.showDashboard();
                } else if (category) {
                    this.showCategory(category);
                }
            });
        });
        
        // Top bar actions
        document.getElementById('refreshBtn').addEventListener('click', () => {
            this.refreshAll();
        });
        
        document.getElementById('addCardBtn').addEventListener('click', () => {
            this.showAddCardModal();
        });
        
        document.getElementById('themeToggle').addEventListener('click', () => {
            this.toggleTheme();
        });
        
        // Search
        document.getElementById('searchInput').addEventListener('input', (e) => {
            this.handleSearch(e.target.value);
        });
        
        // View toggle
        document.querySelectorAll('.toggle-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                document.querySelectorAll('.toggle-btn').forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
                this.setLayout(btn.dataset.layout);
            });
        });
        
        // Card actions
        document.addEventListener('cardAction', (e) => {
            this.handleCardAction(e.detail.action, e.detail.cardId);
        });
        
        document.addEventListener('expandCard', (e) => {
            this.expandCard(e.detail.cardId);
        });
        
        document.addEventListener('refreshCard', (e) => {
            this.refreshCardData(e.detail.cardId, e.detail.widget);
        });
    },
    
    setupNavigation() {
        // Update badge counts
        this.updateCategoryCounts();
    },
    
    async updateCategoryCounts() {
        const counts = {
            dev: 8,
            enterprise: 8,
            ai: 4,
            security: 8,
            operations: 6
        };
        
        document.getElementById('dev-count').textContent = counts.dev;
        document.getElementById('ent-count').textContent = counts.enterprise;
        document.getElementById('ai-count').textContent = counts.ai;
        document.getElementById('sec-count').textContent = counts.security;
        document.getElementById('ops-count').textContent = counts.operations;
    },
    
    showDashboard() {
        this.currentView = 'dashboard';
        this.currentCategory = null;
        document.getElementById('viewTitle').textContent = 'Dashboard';
        CardsSystem.filterByCategory('all');
    },
    
    showCategory(category) {
        this.currentView = 'category';
        this.currentCategory = category;
        
        const titles = {
            dev: 'Developer Services',
            enterprise: 'Enterprise Services',
            ai: 'AI / ML Services',
            security: 'Security Services'
        };
        
        document.getElementById('viewTitle').textContent = titles[category];
        CardsSystem.filterByCategory(category);
    },
    
    async refreshAll() {
        const btn = document.getElementById('refreshBtn');
        btn.querySelector('span').classList.add('animate-spin');
        
        // Refresh all cards
        CardsSystem.dashboardConfig.forEach(config => {
            CardsSystem.refreshCard(config.id);
        });
        
        setTimeout(() => {
            btn.querySelector('span').classList.remove('animate-spin');
        }, 1000);
    },
    
    async refreshCardData(cardId, widgetElement) {
        const handlers = {
            'compute-instances': () => this.loadComputeData(widgetElement),
            'cost-overview': () => this.loadCostData(widgetElement),
            'object-storage': () => this.loadStorageData(widgetElement),
            'vault-keys': () => this.loadVaultData(widgetElement),
            'kubernetes': () => this.loadKubernetesData(widgetElement),
            'databases': () => this.loadDatabaseData(widgetElement),
            'cloud-guard': () => this.loadCloudGuardData(widgetElement),
            'generative-ai': () => this.loadAIData(widgetElement),
            // Billing cards
            'budgets': () => this.loadBudgetsData(widgetElement),
            'invoices': () => this.loadInvoicesData(widgetElement),
            'usage-by-service': () => this.loadUsageByServiceData(widgetElement),
            // IAM cards
            'iam-users': () => this.loadIAMUsersData(widgetElement),
            'iam-groups': () => this.loadIAMGroupsData(widgetElement),
            'iam-policies': () => this.loadIAMPoliciesData(widgetElement),
            'compartments': () => this.loadCompartmentsData(widgetElement),
            // Provisioning cards
            'quick-provision': () => this.loadQuickProvisionData(widgetElement),
            'api-services': () => this.loadAPIServicesData(widgetElement),
            // Operations cards
            'notifications': () => this.loadNotificationsData(widgetElement),
            'alarms': () => this.loadAlarmsData(widgetElement),
            'limits': () => this.loadLimitsData(widgetElement),
            'email': () => this.loadEmailData(widgetElement),
            'resource-manager': () => this.loadResourceManagerData(widgetElement),
            'secrets': () => this.loadSecretsData(widgetElement)
        };
        
        const handler = handlers[cardId];
        if (handler) {
            try {
                await handler();
            } catch (error) {
                widgetElement.innerHTML = `
                    <div class="widget-error">
                        <span>⚠️</span>
                        <p>Failed to load data</p>
                    </div>
                `;
            }
        }
    },
    
    // Data loading methods
    async loadComputeData(widget) {
        const data = await OCIBridge.call('core', 'listInstances');
        const running = data.items.filter(i => i.lifecycleState === 'RUNNING').length;
        const total = data.items.length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${running}<span class="trend">/ ${total}</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>${running === total ? 'All running' : `${total - running} stopped`}</span>
            </div>
        `;
    },
    
    async loadCostData(widget) {
        const data = await OCIBridge.call('budget', 'getCurrentSpend');
        
        widget.innerHTML = `
            <div class="widget-counter">
                $${data.amount.toFixed(2)}
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>${data.timeRange} - ${data.currency}</span>
            </div>
        `;
    },
    
    async loadStorageData(widget) {
        const data = await OCIBridge.call('objectstorage', 'listBuckets');
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${data.items.length}
            </div>
            <div class="widget-list">
                ${data.items.slice(0, 3).map(bucket => `
                    <div class="widget-list-item">
                        <span>${bucket.name}</span>
                        <span>${bucket.namespace}</span>
                    </div>
                `).join('')}
            </div>
        `;
    },
    
    async loadVaultData(widget) {
        const data = await OCIBridge.call('keymanagement', 'listVaults');
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${data.items.length}
            </div>
            <div class="widget-list">
                ${data.items.map(vault => `
                    <div class="widget-list-item">
                        <span>${vault.displayName}</span>
                        <span class="status-dot"></span>
                    </div>
                `).join('')}
            </div>
        `;
    },
    
    async loadKubernetesData(widget) {
        widget.innerHTML = `
            <div class="widget-counter">
                3<span class="trend">clusters</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>All healthy</span>
            </div>
        `;
    },
    
    async loadDatabaseData(widget) {
        widget.innerHTML = `
            <div class="widget-counter">
                5<span class="trend">databases</span>
            </div>
            <div class="widget-list">
                <div class="widget-list-item">
                    <span>Production ADB</span>
                    <span class="status-dot"></span>
                </div>
                <div class="widget-list-item">
                    <span>MySQL App</span>
                    <span class="status-dot"></span>
                </div>
            </div>
        `;
    },
    
    async loadCloudGuardData(widget) {
        widget.innerHTML = `
            <div class="widget-counter" style="color: var(--status-healthy);">
                0<span class="trend">alerts</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>All secure</span>
            </div>
        `;
    },
    
    async loadAIData(widget) {
        widget.innerHTML = `
            <div class="widget-counter">
                2<span class="trend">endpoints</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>Cohere + LLaMA</span>
            </div>
        `;
    },
    
    // Billing data loaders
    async loadBudgetsData(widget) {
        const data = await BillingService.listBudgets('root');
        const active = data.filter(b => b.lifecycleState === 'ACTIVE').length;
        const exceeded = data.filter(b => (b.actualSpend || 0) > (b.amount || 0)).length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${data.length}<span class="trend">budgets</span>
            </div>
            <div class="widget-status">
                <span class="status-dot" style="background: ${exceeded > 0 ? 'var(--status-critical)' : 'var(--status-healthy)'}"></span>
                <span>${exceeded > 0 ? `${exceeded} exceeded` : 'All healthy'}</span>
            </div>
        `;
    },
    
    async loadInvoicesData(widget) {
        const invoices = await BillingService.listInvoices();
        const pending = invoices.filter(i => i.status === 'PENDING').length;
        const total = invoices.length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${total}<span class="trend">invoices</span>
            </div>
            <div class="widget-list">
                ${pending > 0 ? `
                    <div class="widget-list-item">
                        <span style="color: var(--status-warning)">${pending} pending payment</span>
                        <span>⚠️</span>
                    </div>
                ` : `
                    <div class="widget-list-item">
                        <span>All invoices paid</span>
                        <span>✓</span>
                    </div>
                `}
            </div>
        `;
    },
    
    async loadUsageByServiceData(widget) {
        const usage = await BillingService.getUsageByService('root', new Date(Date.now() - 30*24*60*60*1000).toISOString(), new Date().toISOString());
        const topServices = usage.slice(0, 3);
        
        widget.innerHTML = `
            <div class="widget-list">
                ${topServices.map(s => `
                    <div class="widget-list-item">
                        <span>${s.serviceName || 'Unknown'}</span>
                        <span>$${(s.computedAmount || 0).toFixed(2)}</span>
                    </div>
                `).join('')}
            </div>
        `;
    },
    
    // IAM data loaders
    async loadIAMUsersData(widget) {
        const users = await IAMService.listUsers('root');
        const active = users.filter(u => u.lifecycleState === 'ACTIVE').length;
        const mfaEnabled = users.filter(u => u.isMfaActivated).length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${active}<span class="trend">users</span>
            </div>
            <div class="widget-list">
                <div class="widget-list-item">
                    <span>MFA Enabled</span>
                    <span>${mfaEnabled}/${active}</span>
                </div>
            </div>
        `;
    },
    
    async loadIAMGroupsData(widget) {
        const groups = await IAMService.listGroups('root');
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${groups.length}<span class="trend">groups</span>
            </div>
            <div class="widget-list">
                ${groups.slice(0, 3).map(g => `
                    <div class="widget-list-item">
                        <span>${g.name}</span>
                        <span>${g.userCount || 0} members</span>
                    </div>
                `).join('')}
            </div>
        `;
    },
    
    async loadIAMPoliciesData(widget) {
        const policies = await IAMService.listPolicies('root');
        const active = policies.filter(p => p.lifecycleState === 'ACTIVE').length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${active}<span class="trend">policies</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>All active</span>
            </div>
        `;
    },
    
    async loadCompartmentsData(widget) {
        const compartments = await IAMService.listCompartments('root');
        const active = compartments.filter(c => c.lifecycleState === 'ACTIVE').length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${active}<span class="trend">compartments</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>Resource organized</span>
            </div>
        `;
    },
    
    // Provisioning data loaders
    async loadQuickProvisionData(widget) {
        const templates = ProvisioningService.getQuickTemplates();
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${templates.length}<span class="trend">templates</span>
            </div>
            <div class="widget-list">
                ${templates.slice(0, 3).map(t => `
                    <div class="widget-list-item">
                        <span>${t.name}</span>
                        <span>${t.resources.length} resources</span>
                    </div>
                `).join('')}
            </div>
        `;
    },
    
    async loadAPIServicesData(widget) {
        const services = await ProvisioningService.listAvailableServices();
        const enabled = services.filter(s => s.enabled).length;
        const total = services.length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${enabled}<span class="trend">/${total} enabled</span>
            </div>
            <div class="widget-status">
                <span class="status-dot" style="background: ${enabled === total ? 'var(--status-healthy)' : 'var(--status-warning)'}"></span>
                <span>${enabled === total ? 'All APIs enabled' : `${total - enabled} to enable`}</span>
            </div>
        `;
    },
    
    // Operations data loaders
    async loadNotificationsData(widget) {
        const topics = await NotificationsService.listTopics('root');
        const subscriptions = topics.length > 0 ? 
            await NotificationsService.listSubscriptions(topics[0].id) : [];
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${topics.length}<span class="trend">topics</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>${subscriptions.length} subscriptions</span>
            </div>
        `;
    },
    
    async loadAlarmsData(widget) {
        const alarms = await NotificationsService.listAlarms('root');
        const firing = alarms.filter(a => a.status === 'FIRING').length;
        
        widget.innerHTML = `
            <div class="widget-counter" style="color: ${firing > 0 ? 'var(--status-critical)' : 'var(--text-primary)'}">
                ${alarms.length}<span class="trend">alarms</span>
            </div>
            <div class="widget-status">
                <span class="status-dot" style="background: ${firing > 0 ? 'var(--status-critical)' : 'var(--status-healthy)'}"></span>
                <span>${firing > 0 ? `${firing} firing!` : 'All OK'}</span>
            </div>
        `;
    },
    
    async loadLimitsData(widget) {
        const services = await LimitsService.listServices();
        const limits = await LimitsService.getLimitsSummary('root');
        const atRisk = limits.filter(l => 
            l.limits.some(limit => (limit.used / limit.available) > 0.8)
        ).length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${services.length}<span class="trend">services</span>
            </div>
            <div class="widget-status">
                <span class="status-dot" style="background: ${atRisk > 0 ? 'var(--status-warning)' : 'var(--status-healthy)'}"></span>
                <span>${atRisk > 0 ? `${atRisk} near limit` : 'All good'}</span>
            </div>
        `;
    },
    
    async loadEmailData(widget) {
        const senders = await EmailService.listApprovedSenders('root');
        const config = EmailService.getSmtpConfig();
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${senders.length}<span class="trend">senders</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>${config.host}</span>
            </div>
        `;
    },
    
    async loadResourceManagerData(widget) {
        const stacks = await ResourceManagerService.listStacks('root');
        const recentJobs = stacks.length > 0 ? 
            await ResourceManagerService.listJobs(stacks[0].id) : [];
        const failed = recentJobs.filter(j => j.status === 'FAILED').length;
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${stacks.length}<span class="trend">stacks</span>
            </div>
            <div class="widget-status">
                <span class="status-dot" style="background: ${failed > 0 ? 'var(--status-critical)' : 'var(--status-healthy)'}"></span>
                <span>${failed > 0 ? `${failed} failed jobs` : 'All healthy'}</span>
            </div>
        `;
    },
    
    async loadSecretsData(widget) {
        const vaults = await SecretsService.listVaults('root');
        let totalSecrets = 0;
        
        for (const vault of vaults.slice(0, 3)) {
            try {
                const secrets = await SecretsService.listSecrets(vault.id);
                totalSecrets += secrets.length;
            } catch (e) {
                // Skip inaccessible vaults
            }
        }
        
        widget.innerHTML = `
            <div class="widget-counter">
                ${totalSecrets}<span class="trend">secrets</span>
            </div>
            <div class="widget-status">
                <span class="status-dot"></span>
                <span>${vaults.length} vaults</span>
            </div>
        `;
    },
    
    handleCardAction(action, cardId) {
        console.log('Handling action:', action, 'for card:', cardId);
        
        // Show toast notification
        this.showToast(`${action} triggered for ${cardId}`);
    },
    
    expandCard(cardId) {
        console.log('Expanding card:', cardId);
        // Navigate to detailed view
        this.showToast(`Opening detailed view for ${cardId}`);
    },
    
    handleSearch(query) {
        const cards = document.querySelectorAll('.card');
        const lowerQuery = query.toLowerCase();
        
        cards.forEach(card => {
            const text = card.textContent.toLowerCase();
            if (text.includes(lowerQuery)) {
                card.style.opacity = '1';
                card.style.transform = 'scale(1)';
            } else {
                card.style.opacity = '0.3';
                card.style.transform = 'scale(0.95)';
            }
        });
        
        if (query === '') {
            cards.forEach(card => {
                card.style.opacity = '1';
                card.style.transform = 'scale(1)';
            });
        }
    },
    
    showAddCardModal() {
        const modal = document.getElementById('cardModal');
        modal.classList.add('active');
        
        // TODO: Populate with available cards
        const available = CardsSystem.getAvailableCards();
        console.log('Available cards:', available);
    },
    
    toggleTheme() {
        const current = document.documentElement.getAttribute('data-theme') || 'dark';
        const next = current === 'dark' ? 'light' : 'dark';
        document.documentElement.setAttribute('data-theme', next);
        localStorage.setItem('oci-theme', next);
    },
    
    setLayout(layout) {
        const grid = document.getElementById('cardsGrid');
        if (layout === 'list') {
            grid.style.gridTemplateColumns = '1fr';
        } else {
            grid.style.gridTemplateColumns = 'repeat(auto-fill, minmax(280px, 1fr))';
        }
    },
    
    setupKeyboardShortcuts() {
        document.addEventListener('keydown', (e) => {
            // Cmd/Ctrl + K for search
            if ((e.metaKey || e.ctrlKey) && e.key === 'k') {
                e.preventDefault();
                document.getElementById('searchInput').focus();
            }
            
            // Esc to close modals
            if (e.key === 'Escape') {
                document.querySelectorAll('.modal.active').forEach(m => {
                    m.classList.remove('active');
                });
            }
            
            // R to refresh
            if (e.key === 'r' && !e.metaKey && !e.ctrlKey) {
                if (document.activeElement.tagName !== 'INPUT') {
                    this.refreshAll();
                }
            }
        });
    },
    
    showToast(message) {
        const toast = document.createElement('div');
        toast.className = 'toast';
        toast.textContent = message;
        toast.style.cssText = `
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: var(--bg-elevated);
            color: var(--text-primary);
            padding: 12px 20px;
            border-radius: 8px;
            box-shadow: var(--shadow-lg);
            z-index: 10000;
            animation: fadeIn 0.3s ease;
        `;
        
        document.body.appendChild(toast);
        
        setTimeout(() => {
            toast.style.opacity = '0';
            toast.style.transition = 'opacity 0.3s';
            setTimeout(() => toast.remove(), 300);
        }, 3000);
    },
    
    async loadInitialData() {
        // Load theme preference
        const savedTheme = localStorage.getItem('oci-theme') || 'dark';
        document.documentElement.setAttribute('data-theme', savedTheme);
    }
};

// Initialize on load
document.addEventListener('DOMContentLoaded', () => {
    OCIDashboard.init();
});

// Expose globally
window.OCIDashboard = OCIDashboard;
