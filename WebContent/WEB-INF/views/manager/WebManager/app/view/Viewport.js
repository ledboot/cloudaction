Ext.define('WebManager.view.Viewport', {
	extend: 'Ext.container.Viewport',
	layout: 'border',
	initComponent : function(){
		Ext.apply(this,{
			items:[{
				xtype:'panel',
				alias : 'widget.panelAll',
				id : 'panelAll',
				region:"center",
				layout: 'border'
			}]
		});
		this.callParent(arguments);
	}
});