Ext.define('WebManager.view.WebMain' ,{
	extend: 'Ext.panel.Panel',
	alias : 'widget.WebMain',
	id:'WebMain',
	initComponent : function(){
		Ext.apply(this,{
			region:"center",
			layout: 'border',
			animate:true,
			items:[
				Ext.create('WebManager.view.Header'),
				Ext.create('WebManager.view.MenuTree'),
				Ext.create('WebManager.view.TabPanel')
			]
		});
		this.callParent(arguments);
	}
	
});