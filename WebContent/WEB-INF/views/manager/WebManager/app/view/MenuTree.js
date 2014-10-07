Ext.define('WebManager.view.MenuTree', {
	extend : 'Ext.tree.Panel',
	alias: 'widget.menuTree',
	initComponent : function(){
		var menuStore = Ext.create('WebManager.store.menuStore');
		var totl = 0;
		var me = this;
		Ext.apply(this,{
			title : '系统菜单',
			region : 'west',
			border : true,
			width : 220,
			minWidth : 170,
			collapsible : true,
			root: {
        		text: "Root node",
        		expanded: true
        	},
			autoScroll : true,
			rootVisible : false,
			split:true,
			tools:[{
				type:'help',
				tooltip: '帮助',
				id:'helptool',
				handler:function(e,el){
					me.showWelcome();
				}
			},{
				type:'gear',
				tooltip: '设置',
				handler:function(e,el){
					Ext.create('WebManager.view.StyleWin',{
						animateTarget: el
					}).show();
				}
			},{
				type:'refresh',
				tooltip: '刷新',
				handler:function(){
					menuStore.reload();
				}
			},{
				type:'close',
				tooltip: '退出',
				action:'out'
			}],
			store: menuStore,
			listeners:{
				afterlayout:function(){
					if(totl==0){
						totl=1;
						Ext.Ajax.request({
							url: '../mloginAction_f',
							success: function(response, options) {
								var obj=Ext.decode(response.responseText);
								if(obj.success){
									var d = new Ext.util.DelayedTask(function(){
                						me.showWelcome();
            						});
            						d.delay(1000);
								}
							}
						});
					}
				}
			}
		});
		this.callParent(arguments);
	},
	showWelcome:function(){
		Ext.Msg.show({
			title: '欢迎',
			msg:'<img width=620 height=420 src="../WebManager/images/view1.png">',
			width:800,
			height:500,
			animateTarget: 'helptool'
		});
	}
})