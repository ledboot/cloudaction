Ext.define('WebManager.view.system.PasswordPanel' ,{
	extend: 'Ext.panel.Panel',
	alias: 'widget.PasswordPanel',
	config:{parentItem:null},
	initComponent : function(){
		var me = this;
		var win = Ext.create('Ext.window.Window',{
            title: '修改密码',
            layout:'border',
    		height: 210,
    		width: 300,
    		animateTarget: this.parentItem,
    		modal:true,
    		items:[{
    			xtype:'form',
    			region:'center',
    			bodyPadding:20,
    			border:false,
    			url:'../manager/muserAction_p',
    			items:[{
					xtype:'textfield',
					emptyText:'旧密码',
					fieldLabel: '旧密码',
					labelWidth:60,
					anchor: '100%',
					name:'muser.user_pass',
					inputType:'password',
					allowBlank: false,
					blankText:"请输入旧密码",
					minLength: 6,
			       	minLengthText:"旧密码不得少于6个字符"
				},{
					xtype:'textfield',
					fieldLabel: '新密码',
					labelWidth:60,
					emptyText:'新密码',
					anchor: '100%',
					name:'newpass1',
					inputType:'password',
					allowBlank: false,
					blankText:"请输入新密码",
					minLength: 6,
			        minLengthText:"新密码不得少于6个字符"
				}],
				buttons:[{
					text:'保 存',
					width:150,
		        	formBind: true,
		        	disabled: true,
		        	handler:function(button){
						var form = button.up('form').getForm();
				        form.submit({
						    waitMsg : '正在修改数据，请稍后...',
							success : function(form, action) {
						        Ext.example.msg('Success', '密码修改成功','');
						        win.close();
							},
							failure : function(form, action) {
								Ext.example.msg('Failure', action.result.info,'fail');
								form.reset();
							}
						});
		        	}
				}]
    		}],
    		listeners:{
				beforeclose:function(panel,eOpts){
					me.close();
				}
    		}
    	}).show();
		me.hide();
		Ext.apply(this,{});
		this.callParent(arguments);
	}
});