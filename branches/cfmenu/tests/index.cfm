<cfset stLinks = [{'name':'CfAjaxProxy', 'links':[
						{
							'url':'cfajaxproxy/attr-cfc.cfm',
							'name':'CFC attribute test cases',
							'title':'Railo-ajaxProxy usage of attribute cfc examples and proxy objects',
							'css':[],
							'js':['js/demo.js','js/tester.js','js/jquery-1.3.2.js']
							},
						{	'url':'cfajaxproxy/attr-bind-js.cfm',
							'name':'Bind JS examples',
							'title':'ajaxProxy',
							'css':[],
							'js':['js/demo.js']
							},
						{	'url':'cfajaxproxy/attr-bind-cfc.cfm',
							'name':'Bind CFC examples',
							'title':'Railo-ajaxProxy bind cfc:....',
							'css':[],
							'js':['js/demo.js']
							},
						{	'url':'cfajaxproxy/attr-bind-url.cfm',
							'name':'Bind URL examples',
							'title':'Railo-ajaxProxy bind url:....',
							'css':[],
							'js':['js/demo.js']
							}
						]
					},
					{	'name':'CfDiv', 'links':[
						{	'url':'cfdiv/cfdiv.cfm',
							'name':'Examples',
							'title':'CFDiv Example',
							'css':[],
							'js':['js/demo.js']
							}
						]
					},
					{	'name':'CFWindow', 'links':[
						{	'url':'cfwindow/cfwindow.cfm',
							'name':'Example',
							'title':'CFWindow Examples',
							'css':[],
							'js':['js/demo.js']
							},
						{	'url':'cfwindow/cfwindow2.cfm',
							'name':'Example 2',
							'title':'CFWindow Examples 2',
							'css':[],
							'js':['js/demo.js']
							},	
						{	'url':'cfwindow/buttons.cfm',
							'name':'buttons',
							'title':'Buttons',
							'css':[],
							'js':['js/demo.js']
							},
							
						{	'url':'cfwindow/ext.cfm',
							'name':'Ext',
							'title':'Ext Window',
							'css':[],
							'js':['js/demo.js']
							}
						]
					},
					{	'name':'CFAjaxImport', 'links':[
						{	'url':'cfajaximport/css.cfm',
							'name':'Custom css resources',
							'title':'Custom css resources',
							'css':[],
							'js':['js/demo.js']
							},
						{	'url':'cfajaximport/tag.cfm',
							'name':'Use the tags attribute.',
							'title':'TAGS attribute',
							'css':[],
							'js':['js/demo.js']
							}	
						]
					},
					{	'name':'CFLayout Tab', 'links':[
						{	'url':'cflayout/tab-one.cfm',
							'name':'Basic Tabs',
							'title':'Basic Tabs',
							'css':[],
							'js':['js/demo.js']
							},
						{	'url':'cflayout/tab-two.cfm',
							'name':'Select, Enable, Disable, Add....',
							'title':'Select, Enable, Disable, Add....',
							'css':[],
							'js':['js/demo.js']
							},
						{	'url':'cflayout/tab-three.cfm',
							'name':'Ajax and Binding',
							'title':'Ajax and Binding',
							'css':[],
							'js':['js/demo.js']
							},
						{	'url':'cflayout/tab-four.cfm',
							'name':'callbacks',
							'title':'Custom Callbacks',
							'css':[],
							'js':['js/demo.js']
							}																
						]
					},
					{	'name':'CfMap', 'links':[
						{	'url':'cfmap/index.cfm',
							'name':'CfMap',
							'title':'CfMap',
							'css':[],
							'js':['js/demo.js']
							}
						]	
					},
					/* CFMENU by MrBuzzy.org
					{	'name':'cfmenu', 'links':[
						{	'url':'cfmenu/cfmenu.cfm',
							'name':'cfmenu',
							'title':'cfmenu',
							'css':[],
							'js':['js/demo.js']
							},
					{	'url':'cfmenu/cfmenuitem.cfm',
							'name':'cfmenuitem',
							'title':'cfmenuitem',
							'css':[],
							'js':['js/demo.js']
							},															
							

					{	'url':'cfmenu/cfmenu-example1.cfm',
							'name':'example: vertical',
							'title':'cfmenu example 1',
							'css':[],
							'js':['js/demo.js']
							},															
							

					{	'url':'cfmenu/cfmenu-example2.cfm',
							'name':'example: horizontal',
							'title':'cfmenu example 2',
							'css':[],
							'js':['js/demo.js']
							},															
						]	
					},*/						
					{	'name':'Functions', 'links':[
						{	'url':'functions/submitForm.cfm',
							'name':'Railo.Ajax.submitForm',
							'title':'Railo.Ajax.submitForm',
							'css':[],
							'js':['js/demo.js']
							},
						{	'url':'functions/ajaxForm.cfm',
							'name':'Railo.Ajax.ajaxForm',
							'title':'Railo.Ajax.ajaxForm',
							'css':[],
							'js':['js/demo.js']
							},								
						]
					}
					
				]>
<cfset stMenu = {'title':'AJAX Proxy examples - by Andrea Campolonghi', 'css':[], 'js':['js/Sizzle.js','js/demo.js'], 'url':'overview.cfm'}>
<cfparam name="url.template" default="overview.cfm">

<cfif structKeyExists(url, "template")>
	<cfloop array="#stLinks#" index="stNav">
		<cfloop array="#stNav.links#" index="stEl">
			<cfif stEl.url eq url.template>
				<cfset stMenu = stEl>
			</cfif>
		</cfloop>
	</cfloop>
	<cfinclude template="header.cfm">
	<cfinclude template="#url.template#">
<cfelse>
	<cfinclude template="header.cfm">
</cfif>
<cfinclude template="footer.cfm">
