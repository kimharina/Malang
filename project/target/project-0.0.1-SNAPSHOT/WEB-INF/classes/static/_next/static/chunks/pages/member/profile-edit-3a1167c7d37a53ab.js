(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[9992],{36772:function(e,t,n){(window.__NEXT_P=window.__NEXT_P||[]).push(["/member/profile-edit",function(){return n(46477)}])},46477:function(e,t,n){"use strict";n.r(t),n.d(t,{default:function(){return me}});var s=n(47568),o=n(51438),a=n(52951),i=n(88029),r=n(60460),c=n(97582),u=n(85893),l=n(67294),p=n(45697),d=n.n(p),m=n(73070),f=n(47711),h=n(79835),x=n(50291),S=n(6726),_=n(4111),g=n(14924),w=n(26042),b=n(69396),v=n(14416),j=n(11163),I=n.n(j),N=n(41664),y=n.n(N),k=n(23027),C=n(38709),E=n(51605),P=n(63065),Z=n(91113),T=n(55007),L=function(){var e=(0,s.Z)((function(){return(0,c.__generator)(this,(function(e){switch(e.label){case 0:return[4,T.Z.get("/api/configure/marketing")];case 1:return[2,e.sent().data]}}))}));return function(){return e.apply(this,arguments)}}(),A=function(){var e=(0,s.Z)((function(e){return(0,c.__generator)(this,(function(t){switch(t.label){case 0:return[4,T.Z.put("/api/configure/marketing",e)];case 1:return[2,t.sent().data]}}))}));return function(t){return e.apply(this,arguments)}}(),D=n(15021),R=n(70898),M=n(31838),U=n.n(M),K=n(7297),B=n(10063);function O(){var e=(0,K.Z)(["\n    margin-top: ",";\n  "]);return O=function(){return e},e}var V={Wrapper:B.ZP.div.withConfig({componentId:"sc-d5117916-0"})(O(),(function(e){return e.marginTop}))},G=function(e){var t=e.title,n=e.marginTop;return(0,u.jsx)(u.Fragment,{children:(0,u.jsx)(V.Wrapper,{marginTop:n,children:t})})},W=function(e){var t=e.message,n=e.className;return(0,u.jsx)("div",{className:n,children:t})};function F(){var e=(0,K.Z)(["\n    display: flex;\n    margin-top: 21px;\n  "]);return F=function(){return e},e}function H(){var e=(0,K.Z)(["\n    display: flex;\n    height: 30px;\n    font-size: 15px;\n    margin-left: 10px;\n    align-items: center;\n  "]);return H=function(){return e},e}function $(){var e=(0,K.Z)(["\n    width: 28px;\n    height: 28px;\n    border-radius: 50%;\n  "]);return $=function(){return e},e}var q={SocialBox:B.ZP.div.withConfig({componentId:"sc-a27a2b0b-0"})(F()),SocialName:B.ZP.div.withConfig({componentId:"sc-a27a2b0b-1"})(H()),SocialImg:B.ZP.img.withConfig({componentId:"sc-a27a2b0b-2"})($())},z=function(e){var t=e.socialBox;return(0,u.jsx)(u.Fragment,{children:(0,u.jsx)("div",{children:t.map((function(e,t){return(0,u.jsxs)(q.SocialBox,{children:[(0,u.jsx)(q.SocialImg,{src:e.imgUrl,alt:"social logo"}),(0,u.jsx)(q.SocialName,{children:e.name})]},t)}))})})};function Y(){var e=(0,K.Z)(["\n    margin-top: ",";\n  "]);return Y=function(){return e},e}var X={Wrapper:B.ZP.div.withConfig({componentId:"sc-525246f5-0"})(Y(),(function(e){return e.marginTop}))},J=function(e){var t=e.name,n=e.className,s=e.onClick,o=e.type,a=e.marginTop;return(0,u.jsx)(X.Wrapper,{marginTop:a,children:(0,u.jsx)("button",{className:n,onClick:s,type:o,children:t})})},Q=function(e){var t=e.socialBox;return(0,u.jsx)("div",{children:t.map((function(e,t){return(0,u.jsx)("div",{children:(0,u.jsx)(J,{name:e.isLink?"".concat(R.Dl.BUTTON_TYPE.CANCEL):"".concat(R.Dl.BUTTON_TYPE.LINK),className:e.isLink?"edit_cancel_btn":"",onClick:e.isLink?function(){return e.onRemove()}:function(){return e.onLink()},marginTop:"16px"})},t)}))})},ee=function(e){var t=e.socialBox;return(0,u.jsxs)(u.Fragment,{children:[(0,u.jsx)("div",{children:(0,u.jsx)(z,{socialBox:t})}),(0,u.jsx)("div",{children:(0,u.jsx)(Q,{socialBox:t})})]})},te=function(e){var t=e.type,n=e.placeholder,s=e.className,o=e.onChange,a=e.onKeyDown,i=e.value,r=e.autoComplete;return(0,u.jsx)(u.Fragment,{children:(0,u.jsx)("input",{autoComplete:r,value:i,type:t,placeholder:n,className:s,onChange:o,onKeyDown:a})})},ne=function(e){var t=(0,j.useRouter)(),n=e.certificates,s=e.userInfo,o=e.onUserInfoStatus,a={};n.filter((function(e){if("mobile"===e.code)return a.name=e.property.name,void(a.phoneNumber=e.property.phoneNumber)}));var i="".concat(a.name," (").concat(a.phoneNumber,")");return(0,u.jsxs)(u.Fragment,{children:[(0,u.jsx)("div",{children:"\ubcf8\uc778\uc778\uc99d"}),(0,u.jsxs)("div",{className:"certificates_box",children:[(0,u.jsx)("div",{className:"profile_userId_value",children:i}),s.status&&(0,u.jsxs)("div",{className:"not_certificates_ul",children:[(0,u.jsx)("div",{className:"not_certificates",children:"\uff65 \uc774\ub984\ubcc0\uacbd\uc2dc \uc774\uc804 \uacc4\uc88c\uc815\ubcf4\ub294 \uc790\ub3d9 \uc0ad\uc81c\ub429\ub2c8\ub2e4. \uc2e0\uaddc \uacc4\uc88c\uc815\ubcf4\ub97c \ub4f1\ub85d\ud574\uc8fc\uc138\uc694."}),(0,u.jsx)("div",{className:"not_certificates_area",children:(0,u.jsx)("div",{className:"not_certificates_btn",onClick:function(){t.push("/auth/certification?continue_url=/m/profile&certification_type=re_certification")},children:"\ud734\ub300\ud3f0 \ubcf8\uc778\uc778\uc99d"})})]})]}),(0,u.jsx)("div",{className:"certificates_box_btn",children:(0,u.jsx)("button",{className:s.status?"edit_cancel_btn":"",type:"button",onClick:function(){return o()},children:s.status?"\ucde8\uc18c":"\uc774\ub984\ubcc0\uacbd"})})]})};var se=function(e){return"nick"===e.type?(0,u.jsxs)("li",{children:[(0,u.jsx)("div",{children:"\ub2c9\ub124\uc784"}),(0,u.jsx)("div",{children:(0,u.jsx)("input",{type:"text",value:e.nick,className:"input_box",onChange:function(t){return e.onNick(t.target.value)}})}),(0,u.jsx)("div",{children:(0,u.jsx)("button",{type:"button",onClick:function(){return e.onSubmit()},children:"\ubcc0\uacbd"})})]}):"introduce"===e.type?(0,u.jsxs)("li",{children:[(0,u.jsx)("div",{children:"\uc18c\uac1c\uae00"}),(0,u.jsxs)("div",{className:"introduce_textarea",children:[(0,u.jsx)("textarea",{value:e.introduce,onChange:function(t){return e.onIntroduce(t.target.value)}}),(0,u.jsxs)("div",{children:[e.introduce.length,"/150"]})]}),(0,u.jsx)("div",{className:"introduce_button",children:(0,u.jsx)("button",{type:"button",onClick:function(){return e.onSubmit()},children:"\ubcc0\uacbd"})})]}):"address"===e.type?(0,u.jsxs)("li",{children:[(0,u.jsx)("div",{children:"\uc0c1\uc810\uc8fc\uc18c"}),(0,u.jsxs)("div",{children:[(0,u.jsxs)("div",{className:"address_domain_box",children:[(0,u.jsx)("span",{children:"www.hellomarket.com/s/"}),(0,u.jsx)("input",{type:"text",value:e.domain,className:"input_box",onChange:function(t){return e.onDomain(t.target.value)},autoComplete:"new-password"})]}),(0,u.jsx)("div",{className:"address_notice",children:"\u2022 6-15\uc790 \uc601\ubb38 \uc18c\ubb38\uc790, \uc22b\uc790\ub85c \uc785\ub825\ud574\uc8fc\uc138\uc694. (\uc22b\uc790\ub9cc \ubd88\uac00)"}),(0,u.jsx)("div",{className:"address_notice",children:"\u2022 \ud55c \ubc88 \uc124\uc815\ud55c \uc8fc\uc18c\ub294 30\uc77c \uc774\ud6c4 \ubcc0\uacbd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4."})]}),(0,u.jsx)("div",{children:(0,u.jsx)("button",{type:"button",onClick:function(){return e.onSubmit()},children:"\uc218\uc815"})})]}):"phoneNumber"===e.type?(0,u.jsx)("li",{}):"userId"===e.type?(0,u.jsxs)("li",{children:[(0,u.jsx)(G,{title:"\uc774\uba54\uc77c"}),(0,u.jsxs)("div",{children:[(0,u.jsx)(W,{className:"profile_userId_value",message:e.userId.email?e.userId.email:"\ub4f1\ub85d\ud574\uc8fc\uc138\uc694."}),!e.userId.status&&(0,u.jsx)(te,{type:"text",placeholder:"\uc774\uba54\uc77c \uc8fc\uc18c \uc785\ub825",className:"input_box phone_input_box",onChange:function(t){return e.onEmail(t.target.value)}}),!e.userId.status&&e.userId.certificateStatus&&(0,u.jsx)(te,{type:"text",placeholder:"\uc778\uc99d\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694",className:"input_box phone_input_box",onChange:function(t){return e.onAuthCode(t.target.value)},onKeyDown:function(e){return(0,m.X1)(e)}}),(0,u.jsx)(W,{className:"emailErrorMsg",message:e.emailErrMsg})]}),(0,u.jsxs)("div",{children:[e.userId.email?(0,u.jsx)(J,{className:e.userId.status?"":"edit_cancel_btn",type:"button",name:e.userId.status?"\ubcc0\uacbd":"\ucde8\uc18c",marginTop:"",onClick:function(){e.onUserEmailSubmit(!e.userId.status)}}):(0,u.jsx)(J,{className:e.userId.status?"":"edit_cancel_btn",type:"button",name:e.userId.status?"\ub4f1\ub85d":"\ucde8\uc18c",marginTop:"",onClick:function(){e.onUserEmailSubmit(!e.userId.status)}}),!e.userId.status&&(0,u.jsx)(J,{type:"button",className:"phone_button_box",onClick:function(){return e.onCertificate()},name:"\uc778\uc99d\uc694\uccad",marginTop:""}),!e.userId.status&&e.userId.certificateStatus&&(0,u.jsx)(J,{type:"button",className:"phone_button_box",onClick:function(){return e.onSubmit()},name:"\ud655\uc778",marginTop:""})]})]}):"password"===e.type?(0,u.jsxs)(u.Fragment,{children:["password"===e.type&&(0,u.jsxs)("li",{children:[(0,u.jsx)(G,{title:"\ube44\ubc00\ubc88\ud638"}),(0,u.jsx)(W,{className:"profile_userId_value",message:e.passwordValid?"****************":"\ub4f1\ub85d\ud574\uc8fc\uc138\uc694."}),e.passwordValid?(0,u.jsx)(J,{className:e.passwordInfo.status?"edit_cancel_btn":"",type:"button",onClick:function(){return e.onPasswordBtnStatus()},name:e.passwordInfo.status?"\ucde8\uc18c":"\ubcc0\uacbd"}):(0,u.jsx)(J,{className:e.passwordInfo.status?"edit_cancel_btn":"",type:"button",onClick:function(){return e.onPasswordBtnStatus()},name:e.passwordInfo.status?"\ucde8\uc18c":"\ub4f1\ub85d"})]}),e.passwordInfo.status&&!e.passwordValid&&(0,u.jsxs)(u.Fragment,{children:[(0,u.jsxs)("li",{className:"profile_password_area profile_password_area_middle",children:[(0,u.jsx)(G,{title:"\ube44\ubc00\ubc88\ud638"}),(0,u.jsx)("div",{children:(0,u.jsx)(te,{type:"password",placeholder:"\uc601\ubb38,\uc22b\uc790,\ud2b9\uc218\ubb38\uc790 \ud3ec\ud568 8~15\uc790",value:e.password,className:"input_box",onChange:function(t){return e.onNowPassword(t.target.value)},autoComplete:"new-password"})})]}),(0,u.jsxs)("li",{className:"profile_password_area profile_password_area_last",children:[(0,u.jsx)(G,{title:"\ube44\ubc00\ubc88\ud638 \ud655\uc778"}),(0,u.jsxs)("div",{children:[(0,u.jsx)(te,{type:"password",placeholder:"\ube44\ubc00\ubc88\ud638 \ud655\uc778",value:e.newPassword,className:"input_box",onChange:function(t){return e.onNewPassword(t.target.value)},autoComplete:"new-password"}),(0,u.jsx)(W,{className:e.passwordErrMsg&&"passwordErrorMsg",message:e.passwordErrMsg&&e.passwordErrMsg})]}),(0,u.jsx)(J,{type:"button",onClick:function(){return e.onRegistPassword()},name:"\ud655\uc778"})]})]}),e.passwordInfo.status&&e.passwordValid&&(0,u.jsxs)(u.Fragment,{children:[e.passwordValid&&(0,u.jsxs)("li",{className:"profile_password_area profile_password_area_middle",children:[(0,u.jsx)(G,{title:"\ud604\uc7ac \ube44\ubc00\ubc88\ud638"}),(0,u.jsx)("div",{children:(0,u.jsx)(te,{type:"password",placeholder:"\ud604\uc7ac \ube44\ubc00\ubc88\ud638 \uc785\ub825",value:e.password,className:"input_box",onChange:function(t){return e.onNowPassword(t.target.value)},autoComplete:"new-password"})})]}),(0,u.jsxs)("li",{className:"profile_password_area profile_password_area_last",children:[(0,u.jsx)(G,{title:"\uc2e0\uaddc \ube44\ubc00\ubc88\ud638"}),(0,u.jsx)("div",{children:(0,u.jsx)(te,{type:"password",placeholder:"\uc601\ubb38, \uc22b\uc790, \ud2b9\uc218\ubb38\uc790 \ud3ec\ud568 8-15\uc790",value:e.newPassword,className:"input_box",onChange:function(t){return e.onNewPassword(t.target.value)},autoComplete:"new-password"})}),(0,u.jsx)(J,{type:"button",onClick:function(){return e.onSubmit()},name:"\ud655\uc778"})]})]})]}):"certification"===e.type?(0,u.jsx)("li",{children:(0,u.jsx)(ne,{certificates:e.certificates,userInfo:e.userInfo,onUserInfoStatus:function(){return e.onUserInfoStatus()}})}):"reception"===e.type?(0,u.jsxs)("li",{children:[(0,u.jsx)("div",{children:"\uc218\uc2e0\uc124\uc815"}),(0,u.jsxs)("div",{className:"reception_area",children:[(0,u.jsx)("div",{className:"profile_userId_value reception_checkbox",onClick:function(){return e.onReception("email")},children:(0,u.jsxs)("label",{className:"feature_option feature_option_checkbox ",children:["email",(0,u.jsx)("div",{className:e.reception.email?"feature_option_checkbox_indicator checked":"feature_option_checkbox_indicator"})]})}),(0,u.jsx)("div",{className:"profile_userId_value reception_checkbox",onClick:function(){return e.onReception("sms")},children:(0,u.jsxs)("label",{className:"feature_option feature_option_checkbox ",children:["SMS",(0,u.jsx)("div",{className:e.reception.sms?"feature_option_checkbox_indicator checked":"feature_option_checkbox_indicator"})]})}),(0,u.jsx)("div",{className:"profile_userId_value reception_value",children:"\ud68c\uc6d0\uc815\ubcf4,\uac70\ub798\uc815\ubcf4 \ubc0f \uc11c\ube44\uc2a4 \uc8fc\uc694 \uc815\ucc45 \uad00\ub828 \ub0b4\uc6a9\uc740 \uc218\uc2e0\ub3d9\uc758 \uc5ec\ubd80\uc640 \uad00\uacc4\uc5c6\uc774 \ubc1c\uc1a1\ub429\ub2c8\ub2e4."})]})]}):"social"===e.type?(0,u.jsxs)("li",{children:[(0,u.jsx)(G,{title:"\uc18c\uc15c\uc5f0\ub3d9",marginTop:"15px"}),(0,u.jsx)(ee,{socialBox:e.socialBox})]}):void 0},oe=((0,m.cW)(),(0,m.Eh)()),ae={SEO:f.$K.TN,KAKAO_LINK:f.fP.p4.I,NAVER_LINK:f.fP.p4.E,KAKAO_NOT_LINK:f.fP.yh.I,NAVER_NOT_LINK:f.fP.yh.E,NEED_ONE_SOCIAL:f.fP.sU,NEED_PWD:f.fP.Bj.$p,PWD_LENGTH:f.fP.Bj.vT,PWD_NOT_CORRECT:f.fP.Bj.kA,PWD_CHANGE_SUCCESS:f.fP.Bj.i6,PWD_REGIST_SUCCESS:f.fP.Bj.tY,EMAIL_CHANGE:f.fP.Do.i,EMAIL_REGIST:f.fP.Do.t},ie=function(e){(0,i.Z)(n,e);var t=(0,r.Z)(n);function n(){var e;return(0,o.Z)(this,n),e=t.apply(this,arguments),(0,g.Z)((0,_.Z)(e),"state",{submitStatus:!1,nick:e.props.memberInfo.identity.nick,nickValue:e.props.memberInfo.identity.nick,introduce:e.props.memberInfo.profile.explain?e.props.memberInfo.profile.explain:"",introduceValue:e.props.memberInfo.profile.explain?e.props.memberInfo.profile.explain:"",domain:e.props.memberInfo.identity.domain&&-1!==e.props.memberInfo.identity.domain.indexOf("@")?"":e.props.memberInfo.identity.domain,domainValue:e.props.memberInfo.identity.domain&&-1!==e.props.memberInfo.identity.domain.indexOf("@")?"":e.props.memberInfo.identity.domain,gender:e.props.memberInfo.profile.gender,nowPassword:"",newPassword:"",description:"",popup1Status:!1,type:"",passwordValid:!(!e.props.memberInfo.property||!e.props.memberInfo.property.hasPassword)&&e.props.memberInfo.property.hasPassword,passwordViewStatus:!!e.props.memberInfo.identity.phoneNumber,phoneNumber:e.props.memberInfo.identity.phoneNumber,phoneEditStatus:!1,phoneCertificateStatus:!1,newPhoneNumber:"",authCode:"",profileImageUrl:e.props.memberInfo.profile.imageUrl?e.props.memberInfo.profile.imageUrl:"",phoneType:"phone",userId:{email:e.props.memberInfo.identity.memberId?e.props.memberInfo.identity.memberId:null,status:!0,certificateStatus:!1,editEmail:"",error:""},userInfo:{phoneCertificateStatus:!1,status:!1},password:{status:!1},passwordErrMsg:"",emailErrMsg:"",reception:{},memberInfo:e.props.memberInfo,submitText:"default",socialData:e.props.memberInfo.socials,socialBox:[],dt:""}),(0,g.Z)((0,_.Z)(e),"onCloseModal",(function(){"email"===e.state.type&&h.k5().then((function(t){e.setState({userId:{email:t.data.identity.memberId,status:!0}})})).catch((function(e){console.error(e)})),"password"===e.state.type&&(I().push("/auth?continue_url=/m/profile"),e.props.onLogout()),e.setState((function(){return{popup1Status:!1,popup3Status:!1,submitText:"default"}}))})),(0,g.Z)((0,_.Z)(e),"onNick",(function(t){e.setState((function(e){return{nick:t.length>12?e.nick:t}}))})),(0,g.Z)((0,_.Z)(e),"onIntroduce",(function(t){e.setState((function(e){return{introduce:t.length>150?e.introduce:t}}))})),(0,g.Z)((0,_.Z)(e),"onProfileSubmit",(function(t){if(e.setState({type:""}),"nick"===t){var n=e.state.nick.replace(/ /gi,"");if(e.state.nick===e.props.memberInfo.identity.nick)e.setState({popup3Status:!0,description:"\ubcc0\uacbd\uc0ac\ud56d\uc774 \uc5c6\uc2b5\ub2c8\ub2e4."});else if(n.length<2)e.setState({popup3Status:!0,description:"\ucd5c\uc18c 2\uc790 \uc774\uc0c1 \uc785\ub825\ud558\uc138\uc694."});else if(Z.h_(n)){var s='<b style="font-weight: bold;">'.concat(n,"</b>\ub85c \uc218\uc815 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?<br/>\ub2c9\ub124\uc784\uc740 30\uc77c\uc5d0 \ud55c\ubc88 \uc218\uc815 \ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.");e.setState({popup1Status:!0,description:s,type:t})}else{e.setState({popup3Status:!0,description:'<div className="txt_left">\ud5c8\uc6a9\ub418\uc9c0 \uc54a\ub294 \ubb38\uc790\uac00 \uc788\uc2b5\ub2c8\ub2e4.<br/>\n        \ub2c9\ub124\uc784\uc744 \ud655\uc778\ud574\uc8fc\uc138\uc694.<br/><br/>\n        1. \ud2b9\uc218\ubb38\uc790, \uc774\ubaa8\ud2f0\ucf58, \uc774\ubaa8\uc9c0 \ubd88\uac00<br/>\n        2. \ud55c\uae00, \uc601\uc5b4 \uc81c\uc678\ud55c \uc678\uad6d\uc5b4 \ubd88\uac00<br/>\n        3. \ub744\uc5b4\uc4f0\uae30 \ubd88\uac00<br/>4. \ubaa8\uc74c\uc774\ub098 \uc790\uc74c\ub9cc \ubd88\uac00 (\uc608: \u1112\u1112\u1112, \u1161\u1161)<br/><br/>\n        *\ub2c9\ub124\uc784\uc740 30\uc77c\uc5d0 \ud55c\ubc88 \uc218\uc815 \uac00\ub2a5\ud569\ub2c8\ub2e4.<br/>\n        *\uc695\uc124 \ub4f1 \ubd80\uc801\uc808\ud55c \ub2c9\ub124\uc784\uc740 \uc218\uc815 \ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4.</div>'})}}else if("introduce"===t){var o=e.state.introduce,a={explain:o};h.fq(a).then((function(t){200===t.status&&"success"===t.message?e.setState({popup3Status:!0,description:"\uc790\uae30\uc18c\uac1c\uac00 \ubcc0\uacbd\ub418\uc5c8\uc2b5\ub2c8\ub2e4.",introduceValue:o}):e.setState({popup3Status:!0,description:t.message})})).catch((function(e){console.error(e)}))}else if("domain"===t){var i=e.state.domain;if(!/^[a-z0-9]{8,15}$/.test(i)||/^[0-9]/g.test(i))e.setState({popup3Status:!0,description:"8~15\uc790 \uc601\ubb38 \uc18c\ubb38\uc790, \uc22b\uc790\ub85c \uc785\ub825\ud574\uc8fc\uc138\uc694.(\uc22b\uc790\ub9cc \ubd88\uac00)"});else{var r='www.hellomarket.com/s/<b style="font-weight: bold;">'.concat(i,'</b><br/><br/><div style="text-align: left; color: #757575; font-size: 13px;">\uc0c1\uc810 \uc8fc\uc18c\uac00 \uc0dd\uc131\ub429\ub2c8\ub2e4. \uc800\uc7a5\ub41c \uc8fc\uc18c\ub294 30\uc77c \uc774\ud6c4 \ubcc0\uacbd\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.</div>');e.setState({popup1Status:!0,description:r,type:t})}}else if("password"===t){var c=e.state,u=c.newPassword,l=c.nowPassword,p=(0,m.Fg)(u,/^.{8,15}$/);if(!l&&e.state.passwordValid)e.setState({popup3Status:!0,description:"".concat(ae.NEED_PWD)});else if(u)if(p){var d={newPassword:u};l&&e.state.passwordValid&&(d.oldPassword=l),h.wt(d).then((function(t){200===t.status&&"success"===t.message?e.setState({popup3Status:!0,description:"".concat(ae.PWD_CHANGE_SUCCESS),type:"password"}):e.setState({popup3Status:!0,description:t.message})})).catch((function(e){console.error(e)}))}else e.setState({popup3Status:!0,description:"".concat(ae.PWD_LENGTH)});else e.setState({popup3Status:!0,description:"".concat(ae.NEED_PWD)})}})),(0,g.Z)((0,_.Z)(e),"onSubmit",(function(){var t=e.state.type;if("nick"===t){var n=e.state.nick,s={nick:n};h.yQ(s).then((function(t){200===t.status&&"success"===t.message?(e.props.onSetToken(t.data.token,t.data.user),e.setState({nickValue:n,popup1Status:!1,popup3Status:!1})):e.setState({popup1Status:!1,popup3Status:!0,description:t.message})})).catch((function(e){console.error(e)}))}else if("domain"===t){var o=e.state.domain,a={domain:o};h.yU(a).then((function(t){200===t.status&&"success"===t.message?(e.props.onSetToken(t.data.token,t.data.user),e.setState({domainValue:o,popup1Status:!1,popup3Status:!1})):e.setState({popup1Status:!1,popup3Status:!0,description:t.message})}))}else{var i={type:"phone",phoneNumber:e.state.newPhoneNumber};e.onAuth(i)}})),(0,g.Z)((0,_.Z)(e),"onDomain",(function(t){e.setState((function(e){return{domain:t.length>15?e.domain:t}}))})),(0,g.Z)((0,_.Z)(e),"onPassword",(function(t,n){"nowPassword"===t?e.setState((function(e){return{nowPassword:n.length>15?e.nowPassword:n}})):e.setState((function(e){return{newPassword:n.length>15?e.newPassword:n}}))})),(0,g.Z)((0,_.Z)(e),"onNewPhoneNumber",(function(t){e.setState({newPhoneNumber:t})})),(0,g.Z)((0,_.Z)(e),"onAuth",(function(t){h.Yp(t).then((function(t){200===t.status?((0,m.SR)("\ud734\ub300\ud3f0\ubc88\ud638\ub85c \uc778\uc99d\ubc88\ud638\ub97c \ubc1c\uc1a1\ud558\uc600\uc2b5\ub2c8\ub2e4.<br><br>3\ubd84\uc774\ub0b4\ub85c \uc778\uc99d\ubc88\ud638(6\uc790\ub9ac)\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694"),e.setState((function(){return{authCodeMsg:null,certification:"2",submitText:"default",phoneCertificateStatus:!0,popup1Status:!1,authCode:""}}))):e.setState((function(){return{authCodeMsg:t.message,certification:"",submitText:"default",popup1Status:!1,authCode:""}}))})).catch((function(e){console.error(e)}))})),(0,g.Z)((0,_.Z)(e),"onAuthCode",(function(t){e.setState((function(e){return{authCode:t.length>6?e.authCode:t}}))})),(0,g.Z)((0,_.Z)(e),"onEditProfileImage",(function(){e.fileInput.click()})),(0,g.Z)((0,_.Z)(e),"onImageChange",(function(t){for(var n=0;n<t.length;n++){if(t[n].size>1e7)return void e.setState({popup3Status:!0,description:"\uc774\ubbf8\uc9c0\uc758 \ucd5c\ub300 \ud06c\uae30\ub294 10MB\uc785\ub2c8\ub2e4."});if("image/png"!==t[n].type&&"image/jpg"!==t[n].type&&"image/jpeg"!==t[n].type)return void e.setState({popup3Status:!0,description:"\uc774\ubbf8\uc9c0 \ud30c\uc77c\ub9cc \uac00\ub2a5\ud569\ub2c8\ub2e4."})}if(t[0]&&t[0].name){var s=new FormData;s.append("file",t[0],t[0].name),(0,D.qq)(s,e.state.dt,"profile").then((function(t){if(200===t.status){var n={images:t.data};h.N6(n).then((function(t){200===t.status&&"success"===t.message?(e.setState({profileImageUrl:t.data.user.imageUrls}),e.props.onSetToken(t.data.token,t.data.user)):e.setState({popup3Status:!0,description:t.message})})).catch((function(e){console.error(e)}))}else e.setState({popup3Status:!0,description:"\uc774\ubbf8\uc9c0 \uc5c5\ub85c\ub4dc\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."})}))}else e.setState({popup3Status:!0,description:"\uc774\ubbf8\uc9c0 \uc5c5\ub85c\ub4dc\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4."})})),(0,g.Z)((0,_.Z)(e),"onBye",(function(){h.dc().then((function(t){if(200===t.status&&"success"===t.message)if(0===t.data.cash&&0===t.data.point)e.onByeSwal("\ud0c8\ud1f4\ud6c4 30\uc77c\ub3d9\uc548\uc740 \uc7ac\uac00\uc785\uc774 \ubd88\uac00\ub2a5\ud569\ub2c8\ub2e4.<br>\ud0c8\ud1f4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?");else{e.onByeSwal("\ud0c8\ud1f4\uc2dc \uc804\uc790\uc9c0\uac11 \uc794\uc561 \ubc0f \uc774\uc6a9\uc911\uc778 \uc720\ub8cc \uc11c\ube44\uc2a4<br>\uac00 \ubaa8\ub450 \uc18c\uba78\ub429\ub2c8\ub2e4.<br><br>\ud0c8\ud1f4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?")}else(0,m.SR)(t.message)}))})),(0,g.Z)((0,_.Z)(e),"onByeSwal",(function(t){swal({title:"",text:t,html:!0,showCancelButton:!0,cancelButtonText:"\ucde8\uc18c",confirmButtonColor:"#0484f6",confirmButtonText:"\ud655\uc778",closeOnConfirm:!0,type:"warning"},(function(t){if(t){h.AM({reason:""}).then((function(t){200===t.status&&"success"===t.message?(setTimeout((function(){(0,m.SR)("\ub354 \ub098\uc740 \uc138\ucee8\uc6e8\uc5b4\ub97c \uc57d\uc18d\ud574\uc694! :)")}),100),I().push("/"),e.props.onLogout(),e.onCloseModal()):setTimeout((function(){(0,m.SR)(t.message)}),100)})).catch((function(e){console.error(e)}))}window.onkeydown=null,window.onfocus=null}))})),(0,g.Z)((0,_.Z)(e),"onUserInfoSubmit",(function(t,n){"status"===n&&e.setState((function(e){return{userInfo:(0,b.Z)((0,w.Z)({},e.userInfo),{status:!e.userInfo.status})}}))})),(0,g.Z)((0,_.Z)(e),"onUserEmailSubmit",(function(t,n){var s=(0,w.Z)({},e.state.userId);if("status"===t)s.status=n,e.setState((function(){return{userId:s}}));else if("certificate"===t){var o={type:"memberid",email:s.editEmail};s.editEmail.length?h.PO(o).then((function(t){200===t.status?(s.certificateStatus=!0,e.setState((function(){return{userId:s,popup3Status:!0,description:t.message,emailErrMsg:"",authCode:""}}))):e.setState({emailErrMsg:t.message})})).catch((function(e){console.error(e)})):e.setState((function(){return{emailErrMsg:"\uc774\uba54\uc77c\uc744 \uc785\ub825\ud574\uc8fc\uc138\uc694.",authCode:""}}))}else if("putId"===t){var a=e.state.authCode;if(a)if(a.length<4)e.setState({popup3Status:!0,description:"\uc778\uc99d\ubc88\ud638\ub97c \ud655\uc778\ud574\uc8fc\uc138\uc694.",authCode:"",userId:s});else{var i={memberId:e.state.userId.editEmail,authCode:a};h.Eg(i).then((function(t){200===t.status?e.setState({popup3Status:!0,type:"email",description:s.email?"".concat(ae.EMAIL_CHANGE):"".concat(ae.EMAIL_REGIST)}):400===t.status&&e.setState({popup3Status:!0,description:t.message,authCode:""})})).catch()}else e.setState({popup3Status:!0,description:"\uc778\uc99d\ubc88\ud638\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.",authCode:"",userId:s})}})),(0,g.Z)((0,_.Z)(e),"onEmail",(function(t){var n="",s=(0,m.Gf)(t);n=t?s?"":"\uc774\uba54\uc77c \uc8fc\uc18c\ub97c \ud655\uc778\ud574\uc8fc\uc138\uc694.":"\uc774\uba54\uc77c \uc8fc\uc18c\ub97c \uc785\ub825\ud574\uc8fc\uc138\uc694.",e.setState((function(e){return{userId:{email:e.userId.email,editEmail:t,error:n}}}))})),(0,g.Z)((0,_.Z)(e),"onPasswordBtnStatus",(function(){e.state.userId.email?e.setState((function(e){return{password:{status:!e.password.status,phoneEditStatus:!e.password.phoneEditStatus,phoneCertificateStatus:!e.password.phoneCertificateStatus}}})):e.setState({popup3Status:!0,description:"\uc774\uba54\uc77c \ub4f1\ub85d \ud6c4 \ube44\ubc00\ubc88\ud638\ub97c \ub4f1\ub85d\ud574\uc8fc\uc138\uc694."})})),(0,g.Z)((0,_.Z)(e),"onReception",(function(t){var n=(0,w.Z)({},e.state.reception),s={};"email"===t?(n.email=!n.email,s.type="email",s.value=n.email):(n.sms=!n.sms,s.type="sms",s.value=n.sms),A(s).then((function(t){t.status&&e.setState((function(){return{reception:n}}))})).catch((function(e){console.error(e)}))})),(0,g.Z)((0,_.Z)(e),"onRegistPassword",(function(){var t=e.state,n=t.newPassword,s=t.nowPassword,o=(0,m.Fg)(n,/^.{8,15}$/),a=(0,m.Fg)(s,/^.{8,15}$/);if(s||!e.state.passwordValid)if(n)if(o)if(a)if(n===s){var i={newPassword:n};h.wt(i).then((function(t){200===t.status&&"success"===t.message?e.setState({popup3Status:!0,description:"".concat(ae.PWD_REGIST_SUCCESS),type:"password"}):e.setState({popup3Status:!0,description:t.message,passwordErrMsg:t.message})})).catch((function(e){console.error(e)}))}else e.setState({passwordErrMsg:"".concat(ae.PWD_NOT_CORRECT)});else e.setState({passwordErrMsg:"".concat(ae.PWD_LENGTH)});else e.setState({passwordErrMsg:"".concat(ae.PWD_LENGTH)});else e.setState({passwordErrMsg:"".concat(ae.NEED_PWD)});else e.setState({passwordErrMsg:"".concat(ae.NEED_PWD)})})),(0,g.Z)((0,_.Z)(e),"onKakao",(function(){var t=document.createElement("script");t.src="https://developers.kakao.com/sdk/js/kakao.min.js",t.type="text/javascript",t.onload=function(){window.Kakao.init("7180c4bfe96d896b93f4ede3c538c776"),window.Kakao.Auth.login({success:function(t){if(t.access_token){var n={type:"kakao",accessToken:t.access_token};h.F(n).then((function(t){200===t.status?h.k5().then((function(t){e.setState({socialData:t.data.socials}),e.onGetSocialData(t.data.socials)})):(0,m.SR)(t.message)})).catch((function(e){console.error(e)}))}},fail:function(e){console.error(e)}})},t.onerror=function(){(0,m.SR)("\ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694.")},document.head.appendChild(t)})),(0,g.Z)((0,_.Z)(e),"onNaver",(function(){var e=(screen.width-640)/2,t=(screen.height-380)/2,n=U().naver.clientId,s="".concat(m.Gh).concat(R.Dl.URL_PATH.NAVER_CALLBACK),o="".concat(R.Dl.URL_PATH.NAVER_URL,"?response_type=code&client_id=").concat(n,"&redirect_uri=").concat(s);setTimeout((function(){window.open("".concat(m.Gh,"/login?redirect=").concat(encodeURIComponent(o)),"","width=".concat(640,",height=").concat(380,",left=").concat(e,",top=").concat(t,",location=no,menubar=no,status=no,scrollbars=no,resizable=no,titlebar=no,toolbar=no"))}),0)})),(0,g.Z)((0,_.Z)(e),"onRemoveSocialLink",(function(t){var n=e.state.memberInfo,s=n.identity,o=n.property,a=!s.memberId,i=!1===o.hasPassword,r=1===e.state.socialData.length;if(a&&i&&r)e.setState({popup3Status:!0,description:"".concat(ae.NEED_ONE_SOCIAL)});else{var c={type:t};h.dP(c).then((function(t){200===t.status?h.k5().then((function(t){e.setState({socialData:t.data.socials}),e.onGetSocialData(t.data.socials)})).catch((function(e){console.error(e)})):(0,m.SR)(t.message)}))}})),(0,g.Z)((0,_.Z)(e),"onGetSocialData",(function(t){var n=t.map((function(e){return e.type})),s=n.includes("".concat(R.Dl.SOCIAL.KAKAO)),o=n.includes("".concat(R.Dl.SOCIAL.NAVER)),a=s?{isLink:!0,name:"".concat(ae.KAKAO_LINK),onRemove:function(){return e.onRemoveSocialLink("".concat(R.Dl.SOCIAL.KAKAO))},imgUrl:"".concat(oe).concat(R.Dl.IMG_URL.KAKAO_LINK)}:{isLink:!1,name:"".concat(ae.KAKAO_NOT_LINK),onLink:function(){return e.onKakao()},imgUrl:"".concat(oe).concat(R.Dl.IMG_URL.KAKAO_LINK)},i=o?{isLink:!0,name:"".concat(ae.NAVER_LINK),onRemove:function(){return e.onRemoveSocialLink("".concat(R.Dl.SOCIAL.NAVER))},imgUrl:"".concat(oe).concat(R.Dl.IMG_URL.NAVER_LINK)}:{isLink:!1,name:"".concat(ae.NAVER_NOT_LINK),onLink:function(){return e.onNaver()},imgUrl:"".concat(oe).concat(R.Dl.IMG_URL.NAVER_LINK)},r=[{title:"".concat(R.Dl.SOCIAL.KAKAO),isLink:a.isLink,name:a.name,imgUrl:a.imgUrl,onLink:a.onLink,onRemove:a.onRemove},{title:"".concat(R.Dl.SOCIAL.NAVER),isLink:i.isLink,name:i.name,imgUrl:i.imgUrl,onLink:i.onLink,onRemove:i.onRemove}];return e.setState({socialBox:r})})),e}return(0,a.Z)(n,[{key:"componentDidUpdate",value:function(e){var t=(0,w.Z)({},this.state.userInfo);e.auth.authStatus===this.props.auth.authStatus||this.props.auth.authStatus||I().push("/"),t.phoneCertificateStatus&&(t.phoneCertificateStatus=!1,this.setState({userInfo:t}))}},{key:"componentDidMount",value:function(){var e=this;this.setState((function(){return{dt:e.props.auth.user.dt}})),this.onGetSocialData(this.state.socialData),L().then((function(t){if(200===t.status&&"success"===t.message){var n=(0,w.Z)({},e.state.reception);t.list[0].value?n.email=!0:n.email=!1,t.list[1].value?n.sms=!0:n.sms=!1,e.setState({reception:n})}})).catch((function(e){console.error(e)}));window.addEventListener("message",(function(t){var n,s;"success"===(null===(n=t.data.query)||void 0===n?void 0:n.type)?h.k5().then((function(t){e.setState({socialData:t.data.socials}),e.onGetSocialData(t.data.socials)})).catch((function(e){console.error(e)})):"fail"===(null===(s=t.data.query)||void 0===s?void 0:s.type)&&e.setState({popup3Status:!0,description:"".concat(t.data.query.errMsg)})}))}},{key:"render",value:function(){var e=this,t=this.state,n=t.memberInfo,s=t.profileImageUrl,o=t.popup1Status,a=t.popup3Status,i=t.submitText,r=t.description,c=t.nickValue,l=t.introduceValue,p=t.nick,d=t.domainValue,f=t.introduce,h=t.domain,x=t.userId,S=t.userInfo,_=t.phoneEditStatus,g=t.authCode,w=t.passwordValid,b=t.password,v=t.nowPassword,j=t.reception,I=t.newPassword,N=t.passwordErrMsg,P=t.emailErrMsg,Z=n.certificates.length?n.certificates:[];return(0,u.jsxs)("section",{className:"content",children:[o&&(0,u.jsx)(E.Z,{openStatus:o,onCloseModal:this.onCloseModal,onSubmit:function(){return e.onSubmit()},submitText:"default"===i?" \ud655\uc778":"\uc778\uc99d\ubc1b\uae30",description:r}),a&&(0,u.jsx)(C.Z,{openStatus:a,onCloseModal:this.onCloseModal,description:r}),(0,u.jsx)("h1",{children:ae.SEO}),(0,u.jsx)("div",{className:"item_list_min",children:(0,u.jsxs)("div",{className:"item_list_area",children:[(0,u.jsx)("div",{className:"breadcrumbs",children:(0,u.jsx)("ul",{children:(0,u.jsx)("li",{children:(0,u.jsx)(y(),{href:"/",children:"HOME"})})})}),(0,u.jsx)("div",{className:"main_area",children:(0,u.jsx)("div",{className:"main_area_center",children:(0,u.jsxs)("div",{className:"main",children:[(0,u.jsx)("div",{className:"left",children:(0,u.jsx)(k.Z,{memberInfo:n,type:"edit",nick:c,introduce:l,domainValue:d,profileImageUrl:s})}),(0,u.jsx)("section",{className:"left_main",children:(0,u.jsxs)("div",{className:"profile_edit_wrapper",children:[(0,u.jsx)("div",{className:"profile_edit_image",children:(0,u.jsxs)("div",{className:"profile_edit_image_box",children:[(0,u.jsx)("img",{src:s?(0,m.EM)(s):m.yv,alt:"".concat(n.identity.nick,"\uc758 \ud504\ub85c\ud544 \uc774\ubbf8\uc9c0")}),(0,u.jsx)("img",{src:"".concat(oe).concat(R.Jx.IMAGE.MEMBER.CAMERA),alt:"\ud504\ub85c\ud544 \uc0ac\uc9c4 \ub4f1\ub85d \uc774\ubbf8\uc9c0",onClick:function(){return e.onEditProfileImage()}}),(0,u.jsx)("input",{type:"file",className:"pf_img",name:"file",id:"upFile",accept:"image/jpeg, image/png",ref:function(t){e.fileInput=t},onChange:function(t){return e.onImageChange(t.target.files)}})]})}),(0,u.jsxs)("div",{className:"profile_edit_main",children:[(0,u.jsxs)("ul",{children:[(0,u.jsx)(se,{type:"nick",nick:p,onNick:function(t){return e.onNick(t)},onSubmit:function(){return e.onProfileSubmit("nick")}}),(0,u.jsx)(se,{type:"introduce",introduce:f,onIntroduce:function(t){return e.onIntroduce(t)},onSubmit:function(){return e.onProfileSubmit("introduce")}}),(0,u.jsx)(se,{type:"address",domain:h,onDomain:function(t){return e.onDomain(t)},onSubmit:function(){return e.onProfileSubmit("domain")}}),(0,u.jsx)(se,{type:"userId",description:r,emailErrMsg:P,onEmail:function(t){e.onEmail(t)},onUserEmailSubmit:function(t){return e.onUserEmailSubmit("status",t)},onNewPhoneNumber:function(t){return e.onNewPhoneNumber(t)},onCertificate:function(){return e.onUserEmailSubmit("certificate")},userId:x,authCode:g,onAuthCode:function(t){return e.onAuthCode(t)},onSubmit:function(t){return e.onUserEmailSubmit("putId",t)}}),(0,u.jsx)(se,{passwordValid:w,newPassword:I,passwordInfo:b,onPasswordBtnStatus:function(){return e.onPasswordBtnStatus()},phoneEditStatus:_,type:"password",password:v,onNowPassword:function(t){return e.onPassword("nowPassword",t)},onNewPassword:function(t){return e.onPassword("newPassword",t)},onSubmit:function(){return e.onProfileSubmit("password")},onRegistPassword:function(){return e.onRegistPassword()},passwordErrMsg:N}),(0,u.jsx)(se,{type:"certification",onUserInfoStatus:function(t){e.onUserInfoSubmit(t,"status")},certificates:Z,userInfo:S}),(0,u.jsx)(se,{type:"social",socialBox:this.state.socialBox}),(0,u.jsx)(se,{type:"reception",onReception:function(t){e.onReception(t)},reception:j})]}),(0,u.jsx)("div",{className:"profile_edit_bye",children:(0,u.jsx)("span",{onClick:function(){return e.onBye()},children:"\ud68c\uc6d0\ud0c8\ud1f4"})})]})]})})]})})})]})})]})}}]),n}(l.Component);ie.propTypes={memberInfo:d().object,onSetToken:d().func,onLogout:d().func,auth:d().object};var re=(0,v.$j)((function(e){return{auth:e.auth}}),(function(e){return{onSetToken:function(t,n){return e(P.w_(t,n))},onLogout:function(){return e(P.bg())}}}))(ie),ce=n(24401),ue=n(76353),le="\ud504\ub85c\ud544 \uc218\uc815 | ".concat(f.$K.TN),pe=f.$K.FB,de=function(e){(0,i.Z)(n,e);var t=(0,r.Z)(n);function n(){return(0,o.Z)(this,n),t.apply(this,arguments)}return(0,a.Z)(n,[{key:"componentDidMount",value:function(){this.props.noticeText&&(0,m.Vt)(this.props.history,this.props.noticeText)}},{key:"render",value:function(){var e=this.props,t=e.memberInfo,n=e.asPath,s=void 0===n?"":n;return(0,u.jsxs)(l.Fragment,{children:[(0,u.jsx)(S.Z,{title:le,description:pe,url:"https://www.hellomarket.com".concat(s)}),(0,u.jsx)(ce.Z,{}),200===t.status&&(0,u.jsx)(re,{memberInfo:t.data}),(0,u.jsx)(ue.Z,{})]})}}],[{key:"getInitialProps",value:function(e){var t=e.ctx;return(0,s.Z)((function(){var e,n;return(0,c.__generator)(this,(function(s){switch(s.label){case 0:n=t.asPath,s.label=1;case 1:return s.trys.push([1,7,,8]),t.isServer?[4,fetch("".concat(m.Ri,"/api/auth/me"),{credentials:"include",method:"GET",headers:t.req.headers})]:[3,4];case 2:return[4,s.sent().json()];case 3:return e=s.sent(),[3,6];case 4:return[4,(0,h.k5)()];case 5:e=s.sent(),s.label=6;case 6:return 200!==e.status?[2,{noticeText:e.message,asPath:n}]:[2,{asPath:n,memberInfo:e}];case 7:return s.sent(),[2,{noticeText:"default"}];case 8:return[2]}}))}))()}}]),n}(l.Component);de.propTypes={asPath:d().string,noticeText:d().string,history:d().array,memberInfo:d().object};var me=(0,x.Z)({Component:de})}},function(e){e.O(0,[1216,3913,3253,9834,8058,2888,5211,179],(function(){return t=36772,e(e.s=t);var t}));var t=e.O();_N_E=t}]);