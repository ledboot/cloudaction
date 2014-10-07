Ext.define('WebManager.view.system.CompetenceGrid' ,{
	extend: 'Ext.panel.Panel',
	alias: 'widget.competenceGrid',
	initComponent : function(){
		Ext.apply(this,{
			layout:'border',
			items:[
				Ext.create('WebManager.view.system.CompetenceLeftPanel'),
				Ext.create('WebManager.view.system.CompetenceGridPanel')
			]
		});
		this.callParent(arguments);
	}
});