Ext.define('WebManager.view.system.TreeGrid' ,{
	extend: 'Ext.panel.Panel',
	alias: 'widget.treeGrid',
	initComponent : function(){
		Ext.apply(this,{
			layout:'border',
			border:false,
			frame:false,
			items:[
				Ext.create('WebManager.view.system.TreeGridPanel')
			]
		});
		this.callParent(arguments);
	}
});