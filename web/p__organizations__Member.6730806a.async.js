"use strict";(self.webpackChunkant_design_pro=self.webpackChunkant_design_pro||[]).push([[193],{66470:function(e,t,n){n.r(t),n.d(t,{default:function(){return L}});var a=n(50959),r=n(82092),i=n.n(r),l=n(67825),o=n.n(l),s=n(15558),u=n.n(s),c=n(90228),d=n.n(c),f=n(87999),p=n.n(f),m=n(26068),v=n.n(m),h=n(48305),b=n.n(h),g=n(37956),y=n(71827),x=n(91283),j=n(64684),w=n(22825),O=n(16483),k=n.n(O),I=n(81796),R=n(7733),S=n(52883),z=n(16166),C=n(73115),Z=n(70346),P=n(56909),T=n(28117),E=n(33600),Y=(n(81414),n(11527)),M=["current","pageSize"];k().locale("zh-cn");var H=function(e){var t=e.columns,n=e.path,r=e.operations,l=e.dropdownMenu,s=e.initParams,c=void 0===s?{}:s,f=e.viewRef,m=e.editable,h=void 0===m||m,O=e.deleteable,H=void 0===O||O,K=e.createable,D=void 0===K||K,N=e.toolbars,A=e.scrollx,F=e.optionColWidth,_=void 0===F?100:F,L=e.selectable,V=void 0===L||L,U=e.rowKey,q=void 0===U?"id":U,W=e.searchFormRef,B=e.requestCallback,G=e.searchProps,J=void 0===G?{}:G,X=e.tableProps,Q=void 0===X?{}:X,$=e.formProps,ee=void 0===$?{}:$,te=e.children,ne=(0,a.useState)(),ae=b()(ne,2),re=ae[0],ie=ae[1],le=(0,a.useState)([]),oe=b()(le,2),se=oe[0],ue=oe[1],ce=(0,a.useState)([]),de=b()(ce,2),fe=de[0],pe=de[1],me=g.Z.useApp().message,ve=(0,a.useRef)(),he=(0,a.useRef)(),be=(0,E.useSearchParams)(),ge=b()(be,2),ye=ge[0],xe=ge[1],je=a.useMemo((function(){return t.map((function(e){return"dateTime"===e.valueType&&Object.assign(e,{render:function(t,n){return"string"==typeof e.dataIndex&&n[e.dataIndex]?k()(n[e.dataIndex]).format("YYYY-MM-DD HH:mm:ss"):"-"}}),"date"===e.valueType&&Object.assign(e,{render:function(t,n){return"string"==typeof e.dataIndex&&n[e.dataIndex]?k()(n[e.dataIndex]).format("YYYY-MM-DD"):"-"}}),e.widget===R.l9.DATE_RANGE&&Object.assign(e,{renderFormItem:function(e,t){var n=t.fieldProps,a=k()(),r=a.startOf("week").day(1).startOf("day"),i=a.endOf("week").day(7).endOf("day");return(0,Y.jsx)(y.default.RangePicker,v()(v()({},n),{},{allowClear:!0,showTime:{defaultValue:[k()("00:00:00","HH:mm:ss"),k()("23:59:59","HH:mm:ss")]},format:"YYYY/MM/DD HH:mm:ss",presets:[{label:"昨日",value:[a.subtract(1,"day").startOf("day"),a.subtract(1,"day").endOf("day")]},{label:"今日",value:[a.startOf("day"),a]},{label:"上周",value:[r.subtract(7,"day"),i.subtract(7,"day")]},{label:"本周",value:[r,i]},{label:"上个月",value:[a.subtract(1,"month").startOf("month"),a.subtract(1,"month").endOf("month")]},{label:"本月",value:[a.startOf("month"),a]},{label:"去年",value:[a.subtract(1,"year").startOf("year"),a.subtract(1,"year").endOf("year")]},{label:"今年",value:[a.startOf("year"),a]}]}))}}),e}))}),[t]),we=function(){var e=p()(d()().mark((function e(t,n,a){var r;return d()().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(r=me.loading("正在删除"),n){e.next=3;break}return e.abrupt("return",!0);case 3:return e.prev=3,e.next=6,(0,S.g8)(t,{ids:n.map((function(e){return e.id}))});case 6:return r(),me.success("删除成功，即将刷新"),a(),e.abrupt("return",!0);case 12:return e.prev=12,e.t0=e.catch(3),r(),me.error("删除失败，请重试"),e.abrupt("return",!1);case 17:case"end":return e.stop()}}),e,null,[[3,12]])})));return function(t,n,a){return e.apply(this,arguments)}}();return(0,a.useImperativeHandle)(f,(function(){return{params:re||{},selectedRowKeys:se||[],selectedRows:fe||[],reload:function(){ve.current&&(ve.current.reload(),ue([]))},getExportParams:function(){return(0,z.e7)(re||{},["pageSize","current"])||{}}}})),a.useEffect((function(){var e;null===(e=ve.current)||void 0===e||e.reload()}),[ye]),(0,Y.jsxs)(Y.Fragment,{children:[(0,Y.jsx)(T.Z,v()({actionRef:ve,formRef:W,rowKey:q,size:"small",search:v()({labelWidth:80,span:4},J),columns:[].concat(u()(je),[{title:"操作",dataIndex:"option",valueType:"option",fixed:"right",width:_,render:function(e,t){return(0,Y.jsxs)(Y.Fragment,{children:[null==r?void 0:r(t),h&&(0,Y.jsx)("a",{style:{marginRight:3,marginLeft:3},onClick:function(){var e,n;null===(e=he.current)||void 0===e||null===(n=e.callUpdateView)||void 0===n||n.call(e,{record:t,params:c||{}})},children:"编辑"}),H&&(0,Y.jsx)(x.Z,{title:"确认删除？",placement:"topRight",onConfirm:function(){we(n,[t],(function(){ve.current&&ve.current.reload()}))},children:(0,Y.jsx)(j.ZP,{type:"link",size:"small",danger:!0,children:"删除"})})]})}}]),scroll:{x:A||1200,scrollToFirstRowOnChange:!0},onReset:function(){ye.toString()&&xe({}),ue([])},columnsState:{persistenceKey:n.split("/").join("_"),persistenceType:"localStorage"},toolBarRender:function(){return[].concat(u()(N?N(fe||[]):[]),[D?(0,Y.jsxs)(j.ZP,{type:"primary",onClick:function(){var e,t;null===(e=he.current)||void 0===e||null===(t=e.callCreateView)||void 0===t||t.call(e,{params:c})},children:[(0,Y.jsx)(C.Z,{})," 新建"]}):null,fe&&fe.length>0&&(0,Y.jsx)(w.Z,{menu:l?l(fe):{items:[{label:"批量删除",key:"remove",icon:(0,Y.jsx)(Z.Z,{}),onClick:(e=p()(d()().mark((function e(){return d()().wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,we(n,fe,(function(){ve.current&&ve.current.reload()}));case 2:case"end":return e.stop()}}),e)}))),function(){return e.apply(this,arguments)})}]},children:(0,Y.jsxs)(j.ZP,{children:["批量操作 ",(0,Y.jsx)(P.Z,{})]})})]);var e},tableAlertRender:!1,pagination:{pageSizeOptions:[10,20,50,100,200,500,1e3],showSizeChanger:!0},request:function(e,a){var r,l=e.current,s=void 0===l?1:l,u=e.pageSize,d=void 0===u?20:u,f=o()(e,M),p=Object.fromEntries(ye),m=v()(v()(v()({},c),f),p);ie(m);var h=Object.keys(m).reduce((function(e,n){if(""===m[n]||null===m[n])return e;var a=null==t?void 0:t.find((function(e){return e.dataIndex===n}));return null!=a&&a.operator&&a.operator!==R.T0.Equals?v()(v()({},e),{},i()({},n,i()({},a.operator,m[n]))):v()(v()({},e),{},i()({},n,m[n]))}),{}),b={where:h};if(null!==(r=Object.keys(a))&&void 0!==r&&r.length){var g,y=null===(g=Object.keys(a))||void 0===g?void 0:g.reduce((function(e,t){return a[t]?v()(v()({},e),{},i()({},t,"descend"===a[t]?"desc":"asc")):e}),{});Object.assign(b,{orderBy:y})}return null==B||B(b),(0,S.LV)(n,{where:h,current:s,pageSize:d})},rowSelection:!!V&&{selectedRowKeys:se,onChange:function(e,t){pe(t),ue(e)}}},Q)),te,(0,Y.jsx)(I.Z,v()({path:n,columns:t,actionRef:he,saveCallback:function(){var e;null===(e=ve.current)||void 0===e||e.reload()}},ee))]})},K=n(28213),D=n(70725),N=n(73264),A=n(912),F=n(21621),_=function(e){var t=e.activateKey,n=e.children,a=(0,E.useNavigate)();return(0,Y.jsxs)(D.Z,{children:[(0,Y.jsx)(N.Z,{span:3,style:{paddingRight:6},children:(0,Y.jsx)(A.Z,{title:"组织权限",styles:{body:{padding:12,height:"83vh",overflowY:"auto"}},children:(0,Y.jsx)(F.Z,{onClick:function(e){var t=e.key;a("/organizations/".concat(t))},style:{width:"100%",borderRight:"none"},defaultSelectedKeys:["organization"],selectedKeys:[t],mode:"inline",items:[{label:"组织信息",key:"organization"},{label:"组织架构",key:"department"},{label:"组织成员",key:"member"},{label:"资源管理",key:"resource"},{label:"角色管理",key:"role"}]})})}),(0,Y.jsx)(N.Z,{span:21,children:n})]})},L=function(){var e,t,n=a.useRef(),r=(0,E.useModel)("@@initialState").initialState;return(0,Y.jsx)(K.Z,{activateKey:R.z_.PERMISSION,children:(0,Y.jsx)(_,{activateKey:"member",children:(0,Y.jsx)(A.Z,{title:"组织成员",styles:{body:{padding:12,height:"83vh",overflowY:"auto"}},children:(0,Y.jsx)(H,{path:"api/organizations/member",title:"组织成员",editable:!0,createable:!0,deleteable:!0,viewRef:n,searchProps:{filterType:"light"},initParams:{organizationId:null==r||null===(e=r.organization)||void 0===e?void 0:e.id,organizationName:null==r||null===(t=r.organization)||void 0===t?void 0:t.name},selectable:!0,columns:[{name:"departmentId",title:"所属部门",dataIndex:"departmentId",widget:R.l9.AUTOCOMPLETE,hideInTable:!0,search:!1,reference:{path:"api/organizations/department/list",properties:{name:"departmentName"}}},{name:"departmentName",title:"所属部门",dataIndex:"departmentName",hideInForm:!0,search:!1},{name:"name",title:"名称",dataIndex:"name"},{name:"phone",title:"手机号",dataIndex:"phone"},{name:"email",title:"邮箱",dataIndex:"email"},{name:"position",title:"岗位",dataIndex:"position"},{name:"avatar",title:"头像",dataIndex:"avatar",widget:R.l9.UPLOAD,multiple:!1,search:!1},{name:"gender",title:"性别",dataIndex:"gender",widget:R.l9.SELECT,search:!1,valueEnum:{0:"未设置",1:"男",2:"女"},options:[{label:"未设置",value:0},{label:"男",value:1},{label:"女",value:2}]},{name:"activated",title:"状态",dataIndex:"activated",widget:R.l9.SWITCH,valueEnum:{true:"启用",false:"禁用"}}]})})})})}},16166:function(e,t,n){n.d(t,{XV:function(){return c},c7:function(){return p},e7:function(){return f},kL:function(){return d},pM:function(){return u}});var a=n(335),r=n.n(a),i=n(26068),l=n.n(i),o=n(82092),s=n.n(o),u=function(e){try{return JSON.parse(e),!0}catch(e){return!1}},c=function(e){var t;return/[A-Za-z]/.test(null==e?void 0:e.substring(0,1))?null==e||null===(t=e.substring(0,1))||void 0===t?void 0:t.toUpperCase():null==e?void 0:e.substring(0,1)},d=function(e){return Object.keys(e).reduce((function(t,n){return null!==e[n]&&""!==e[n]?Object.assign(t,s()({},n,e[n])):t}),{})},f=function(e,t){var n,a=l()({},e),i=r()(t);try{for(i.s();!(n=i.n()).done;){var o=n.value;a.hasOwnProperty(o)&&delete a[o]}}catch(e){i.e(e)}finally{i.f()}return a},p=function(e,t){var n=document.createElement("script");n.type="text/javascript",n.src=e,n.onload=function(){console.log("Script loaded: ".concat(e)),t&&t()},n.onerror=function(){console.error("Failed to load script: ".concat(e))},document.head.appendChild(n)}}}]);