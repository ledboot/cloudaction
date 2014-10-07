Ext.define('WebManager.view.TabPanel', {
	extend : 'Ext.tab.Panel',
	alias: 'widget.TabPanel',
	initComponent : function() {
		Ext.apply(this, {
			region : 'center',
			id:'main_panel',
			activeTab : 0,
			layout : 'border',
			border : false,
			plain: true,
			items : [ {
				title : '首页',
				layout : 'fit'
			}]
		});
		this.callParent(arguments);
	}
})
