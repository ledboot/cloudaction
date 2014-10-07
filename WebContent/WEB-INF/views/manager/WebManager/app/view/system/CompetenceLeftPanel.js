Ext.define('WebManager.view.system.CompetenceLeftPanel' ,{
	extend: 'Ext.grid.Panel',
	alias: 'widget.competenceLeftPanel',
	initComponent : function(){
		var roleStore = Ext.create('WebManager.store.roleStore');
		var me = this;
		Ext.apply(this,{
			region:"east",
			title:'角色列表',
			collapsible : true,
			split:true,
			width:200,
			minWidth:150,
			maxWidth:350,
			store: roleStore,
			selType: 'rowmodel',
			hideHeaders:true,
			forceFit:true,
			columns: [{
		    	dataIndex: 'role_name'
		    }],
		    listeners:{
				itemclick:function(thiz, record, item, index, e, eOpts){
					Ext.getCmp('competenceGridPanel').createTree(record.data.role_id,record.data.role_name);
				}
		    }
		});
		this.callParent(arguments);
	}
});