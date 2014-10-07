Ext.define('WebManager.view.system.DicTypeGrid',{
	extend:'Ext.grid.Panel',
	alias:'widget.dicTypeGrid',
	initComponet:function(){
		var me=this;
		var rowEditing=Ext.create('Ext.grid.plugin.RowEditing',{
			clicksToMoveEditor:1,
			autoCancel:true
		});
		var dicTypeStore=Ext.define('WebManager.store.dicTypeStore');
		Ext.apply(this,{
			store:dicTypeStore,
			selType:'rowmodel',
			loadMask:true,
			plugins:[rowEditing],
			columns:[{
				header:'数据字典类型名称',
				dataIndex:'dicTypeName',
				width:200,
				flex:1//相对比例进行伸缩 任何'flex=0'或'flex=undefined'的子项将不被伸缩(即组件原始尺寸不会被修改).
				editor:{}
			},{
				header:'创建时间',
				dataIndex:'createTime',
				width:200,
				flex:1,
				editor:{}
			},{
				header:'操作',
				xtype:'actioncolumn',
				width:200,
				flex:1,
				menuDisabled:true,
				sortable:false,
				align:'center',
				groupable:false,
				items:[{
					iconcls:'delete-icon',
					tooltip:'删除',
					handler:function(grid,rowIndex,colIndex){
						var rec=grid.getStore().getAt(rowIndex);
						Ext.Msg.show({
							title:'确定数据字典类型',
							msg:'你确定删除<b>'+rec.data.dicTypeName+'</b>',
							buttons:Ext.Msg.YESNO,
							icon:Ext.Msg.QUESTION,
							fn:function(btn){
								if(btn=='yes'){
									Ext.Ajax.request({
										params:{'mdicType.id':rec.data.id},
										url:'../manager/dicTypeAction_d',
										success:function(response){
											Ext.example.msg('Success','<b>'+rec.data.dicTypeName+'</b>删除成功','');
										}
									});
								}
							}
						});
					}
				}],
				dockedItems:[{
					xtype:'pagingtoolbar',
					store:dicTypeStore,
					dock:'bottom',
					emptyMsg:'没有数据',
					items:[{
						xtype:'button',
						text:'添加数据字典类型',
						iconCls:'add-icon',
						handler:function(button){
							var win=Ext.create('Ext.window.Window',{
								title:'添加数据字典类型',
								layout:'border',
								height:220,
								width:300,
								animateTarget:button.getEl(),
								modal:true,
								items:[{
									xtype:'form',
									region:'center',
									bodyPadding:20,
									url:'../manager/dicTypeAction_a',
									border:false,
									buttons:[{
										text:'保存',
										width:100,
										formBind:true,
										disabled:true,
										handler:function(btn){
											var form=btn.up('form').getForm();
											form.submit({
												waitMsg : '正在保存数据，请稍后...',
												success:function(form,action){
													Ext.example.msg('Success','数据字典类型添加成功','');
												},
												failure:function(from,action){
													Ext.example.msg('Failure',action.result.info,'fail');
													form.reset();
												}
											});
										}
									}],
									items:[{
										xtype:'textfield',
										align:'center',
										name:'mdicType.dicTypeName',
										allowBlank:false,
										anchor:'100%',
										blankText:'数据字典类型名称不能为空',
										minLength:2,
										minLengthText:'名称不得少于2个字符',
										emptyText:'数据字典名称'
									},{
										xtype:'datepicker'
										aling:'center',
										name:'mdicType.createTime',
										allowBlank:false,
										anchor:'100%',
									},{
										xtype:'checkbox',
										align:'center',
										name:'mdicType.state',
									}]
								}]
							}).show();
						}
					}],
		            	displayInfo: true,
		            	displayMsg: '当前显示{0}-{1}条记录 / 共{2}条记录 ',
		            	beforePageText: '第',
		            	afterPageText: '页/共{0}页'
				}],
				
			}],
			listeners:{
				edit:function(editor, e){
					Ext.Ajax.request({
		                params: {
							'mrole.role_id':e.record.data.role_id,
							'mrole.role_name':e.record.data.role_name,
							'mrole.role_description':e.record.data.role_description
		                },
		                url: '../manager/roleAction_u',
		                success: function(response) {
		                	Ext.example.msg('Success', '修改 <b>'+e.record.data.role_name+'</b> 成功','');
		                }
		            });
				}
			}
		});
		this.callParent(arguments);
	}
});