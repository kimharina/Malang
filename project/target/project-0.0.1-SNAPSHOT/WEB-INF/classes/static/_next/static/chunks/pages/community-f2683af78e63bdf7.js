(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[44],{88486:function(e,t,n){(window.__NEXT_P=window.__NEXT_P||[]).push(["/community",function(){return n(92865)}])},92865:function(e,t,n){"use strict";n.r(t),n.d(t,{default:function(){return S}});var s=n(47568),i=n(51438),r=n(52951),a=n(88029),c=n(26042),l=n(60460),u=n(97582),o=n(85893),m=n(17673),h=n(67294),d=n(45697),p=n.n(d),v=n(47711),y=n(73070),g=n(55007),f=function(){var e=(0,s.Z)((function(e){var t;return(0,u.__generator)(this,(function(n){switch(n.label){case 0:return t=m.stringify(e),[4,g.Z.get("/api/community/list?".concat(t))];case 1:return[2,n.sent().data]}}))}));return function(t){return e.apply(this,arguments)}}(),_=n(6726),x=n(24401),j=n(76353),N=n(41664),Z=n.n(N),b=n(38492),k=n(4111),L=n(14924),q=(0,y.Eh)(),w=function(e){(0,a.Z)(n,e);var t=(0,l.Z)(n);function n(e){var s;return(0,i.Z)(this,n),s=t.call(this,e),(0,L.Z)((0,k.Z)(s),"state",{loaded:!1}),(0,L.Z)((0,k.Z)(s),"handleImageError",(function(){s.image.current.src="".concat(q,"/web/2018/main/img_default_thumbnail_495x495.png"),s.setState({loaded:!1})})),s.image=h.createRef(),s}return(0,r.Z)(n,[{key:"componentDidMount",value:function(){this.setState({loaded:!0})}},{key:"eventList",value:function(e){var t=this;return e.length?e.map((function(e,n){return(0,o.jsx)("li",{className:n%2===0?"event_list list_left":"event_list list_right",children:(0,o.jsx)(Z(),{className:"link",href:"".concat(e.linkUrl.replace("hellomarket://hellomarket.api/event/","/post/"),"?status=").concat(t.props.query.status),children:(0,o.jsxs)("div",{className:"event_row",children:["CLOSE"===e.state.code?(0,o.jsx)("div",{className:"event_close"}):null,(0,o.jsx)("img",{className:"event_img",src:(0,y.EM)(e.imageUrl),alt:e.title})]})})},n)})):(0,o.jsx)("div",{className:"event_empty_row",children:(0,o.jsx)("span",{children:" \uc774\ubca4\ud2b8\uac00 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."})})}},{key:"render",value:function(){return(0,o.jsx)("div",{className:"event_list_area",children:(0,o.jsx)("ul",{children:this.eventList(this.props.communityList,q)})})}}]),n}(h.Component);w.propTypes={communityList:p().array,query:p().object};var T=function(e){(0,a.Z)(n,e);var t=(0,l.Z)(n);function n(){return(0,i.Z)(this,n),t.apply(this,arguments)}return(0,r.Z)(n,[{key:"render",value:function(){var e=this.props.query;return(0,o.jsxs)("div",{className:"left_nav_type2 left_nav_type2_event",children:[(0,o.jsx)("div",{className:"left_nav_type2_title",children:"\uc774\ubca4\ud2b8"}),(0,o.jsxs)("ul",{className:"left_nav_menu",children:[(0,o.jsx)("li",{children:(0,o.jsx)(Z(),{href:"/community/list.hm?status=begin",children:(0,o.jsx)("span",{className:"begin"===e.status?"open_event bold":"open_event"})})}),(0,o.jsx)("li",{children:(0,o.jsx)(Z(),{href:"/community/list.hm?status=close",children:(0,o.jsx)("span",{className:"close"===e.status?"close_event bold":"close_event"})})})]})]})}}]),n}(h.Component),E=function(e){(0,a.Z)(n,e);var t=(0,l.Z)(n);function n(e){var s;return(0,i.Z)(this,n),(s=t.call(this,e)).pager=s.onPaging(e.communityList.result.totalCount,e.communityList.result.page,e.communityList.result.limit,e.userAgent),s}return(0,r.Z)(n,[{key:"UNSAFE_componentWillReceiveProps",value:function(e){this.props.query!==e.query&&(this.pager=this.onPaging(e.communityList.result.totalCount,e.communityList.result.page,e.communityList.result.limit,e.userAgent))}},{key:"onPaging",value:function(e,t){var n=arguments.length>2&&void 0!==arguments[2]?arguments[2]:30,s=arguments.length>3?arguments[3]:void 0;return(0,y.t9)(e,t,n,s)}},{key:"render",value:function(){var e=this.props,t=e.communityList,n=e.query;return(0,o.jsxs)("section",{className:"content",children:[(0,o.jsx)("h1",{children:v.$K.TN}),(0,o.jsx)("h2",{children:"\ucee4\ubba4\ub2c8\ud2f0 \ub9ac\uc2a4\ud2b8"}),(0,o.jsx)("div",{className:"item_list_min",children:(0,o.jsxs)("div",{className:"item_list_area",children:[(0,o.jsx)("div",{className:"breadcrumbs",children:(0,o.jsxs)("ul",{children:[(0,o.jsx)("li",{children:(0,o.jsx)(Z(),{href:"/",children:"HOME"})}),(0,o.jsxs)("li",{children:[">",(0,o.jsx)(Z(),{href:"begin"===n.status?"/community/list.hm?status=begin":"/community/list.hm?status=close",children:"begin"===n.status?" \uc9c4\ud589\uc911\uc778 \uc774\ubca4\ud2b8":" \uc885\ub8cc\ub41c \uc774\ubca4\ud2b8"})]})]})}),(0,o.jsx)("div",{className:"main_area",children:(0,o.jsx)("div",{className:"main_area_center",children:(0,o.jsxs)("div",{className:"main",children:[(0,o.jsx)("div",{className:"left",children:(0,o.jsx)(T,{query:n})}),(0,o.jsxs)("section",{className:"left_main",children:[(0,o.jsx)(w,{communityList:t.list,query:n}),t.list.length?(0,o.jsx)(b.Z,{query:n,pager:this.pager,domain:"/community/list.hm"}):null]})]})})})]})})]})}}]),n}(h.Component);E.propTypes={communityList:p().object,query:p().object,userAgent:p().string};var P="\uc774\ubca4\ud2b8 | ".concat(v.$K.TN),A="".concat(v.$K.community,", \uc774\ubca4\ud2b8 \uc785\ub2c8\ub2e4."),C=function(e){(0,a.Z)(n,e);var t=(0,l.Z)(n);function n(){return(0,i.Z)(this,n),t.apply(this,arguments)}return(0,r.Z)(n,[{key:"componentDidMount",value:function(){this.props.noticeText&&(0,y.Vt)(this.props.history,this.props.noticeText)}},{key:"render",value:function(){var e=this.props,t=e.communityList,n=e.query,s=e.userAgent,i=e.asPath,r=void 0===i?"":i;return(0,o.jsxs)(o.Fragment,{children:[(0,o.jsx)(_.Z,{title:P,description:A,url:"https://www.hellomarket.com".concat(r)}),(0,o.jsx)(x.Z,{}),t&&200===t.status&&(0,o.jsx)(E,{communityList:t,query:n,userAgent:s}),(0,o.jsx)(j.Z,{})]})}}],[{key:"getInitialProps",value:function(e){var t=e.ctx;return(0,s.Z)((function(){var e,n,s,i,r,a,l;return(0,u.__generator)(this,(function(u){switch(u.label){case 0:return u.trys.push([0,6,,7]),s=t.query,i=t.asPath,r=s.categoryId,(a=(0,c.Z)({},s)).page=s.page&&"0"!==s.page?s.page:"1",a.limit="DAC0004"===r?24:6,t.isServer?(l=m.stringify(a),[4,fetch("".concat(y.Ri,"/api/community/list?").concat(l),{credentials:"include",method:"GET",headers:t.req.headers})]):[3,3];case 1:return[4,u.sent().json()];case 2:return e=u.sent(),n=(0,y.l7)(t.req.headers["user-agent"]),[3,5];case 3:return[4,f(a)];case 4:e=u.sent(),n=(0,y.l7)(navigator.userAgent),u.label=5;case 5:return 200!==e.status?[2,{noticeText:e.message,asPath:i}]:[2,{communityList:e,query:s,userAgent:n,asPath:i}];case 6:return u.sent(),[2,{noticeText:"default"}];case 7:return[2]}}))}))()}}]),n}(h.Component);C.propTypes={communityList:p().object,query:p().object,userAgent:p().string,noticeText:p().string,history:p().array,asPath:p().string};var S=C}},function(e){e.O(0,[1216,3913,8058,2888,5211,179],(function(){return t=88486,e(e.s=t);var t}));var t=e.O();_N_E=t}]);