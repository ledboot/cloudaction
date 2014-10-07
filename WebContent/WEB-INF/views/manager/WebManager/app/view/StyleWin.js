Ext.define('WebManager.view.StyleWin', {
	extend: 'Ext.window.Window',
	initComponent : function(){
		var win = this;
		var states = Ext.create('Ext.data.Store', {
		    fields: ['css', 'name'],
		    data : [
		        {"css":"extjs/resources/css/ext-all-neptune.css", "name":"Neptune"},
		        {"css":"extjs/resources/css/ext-all.css", "name":"Default"},
		        {"css":"extjs/resources/css/ext-all-gray.css", "name":"Gray"},
		        {"css":"extjs/resources/css/ext-all-access.css", "name":"Access"}
		    ]
		});
		var combox = Ext.create('Ext.form.field.ComboBox',{
			fieldLabel: '请选择',
			store: states,
			queryMode: 'local',
    		displayField: 'name',
    		valueField: 'css',
    		value:"extjs/resources/css/ext-all-neptune.css"
		});
		Ext.apply(this,{
			layout: 'border',
			modal:true,
			title:'设置主题',
			resizable:false,
			frame:true,
			border:false,
			width:320,
			height:140,
			items: [{
				xtype:'panel',
				region : 'center',
				border:false,
				frame:false,
				bodyPadding: 20,
				items:[
					combox
				]
			}],
			buttons:[{
		    	text: '确 定',
		    	width:120,
		    	handler:function(){
					Ext.util.CSS.swapStyleSheet("theme",combox.getValue());
					Ext.util.CSS.swapStyleSheet("mytheme",'css/frame2.css');
					win.close();
		    	}
		    }]
		});
		this.callParent(arguments);
	}
});