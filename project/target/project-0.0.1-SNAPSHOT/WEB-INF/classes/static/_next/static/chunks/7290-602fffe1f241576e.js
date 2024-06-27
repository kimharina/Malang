"use strict";(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[7290],{83894:function(n,t,e){e.d(t,{Z:function(){return a}});var i=e(19013),o=e(13882);function a(n){(0,o.Z)(1,arguments);var t=(0,i.Z)(n);return t.setHours(23,59,59,999),t}},23855:function(n,t,e){e.d(t,{Z:function(){return r}});var i=e(36948),o=e(13882),a=e(58066);function r(n,t){var e;(0,o.Z)(1,arguments);var i=(0,a.Z)(null!==(e=null===t||void 0===t?void 0:t.additionalDigits)&&void 0!==e?e:2);if(2!==i&&1!==i&&0!==i)throw new RangeError("additionalDigits must be 0, 1 or 2");if("string"!==typeof n&&"[object String]"!==Object.prototype.toString.call(n))return new Date(NaN);var r,s=p(n);if(s.date){var u=d(s.date,i);r=f(u.restDateString,u.year)}if(!r||isNaN(r.getTime()))return new Date(NaN);var l,c=r.getTime(),m=0;if(s.time&&(m=v(s.time),isNaN(m)))return new Date(NaN);if(!s.timezone){var h=new Date(c+m),y=new Date(0);return y.setFullYear(h.getUTCFullYear(),h.getUTCMonth(),h.getUTCDate()),y.setHours(h.getUTCHours(),h.getUTCMinutes(),h.getUTCSeconds(),h.getUTCMilliseconds()),y}return l=g(s.timezone),isNaN(l)?new Date(NaN):new Date(c+m+l)}var s={dateTimeDelimiter:/[T ]/,timeZoneDelimiter:/[Z ]/i,timezone:/([Z+-].*)$/},u=/^-?(?:(\d{3})|(\d{2})(?:-?(\d{2}))?|W(\d{2})(?:-?(\d{1}))?|)$/,l=/^(\d{2}(?:[.,]\d*)?)(?::?(\d{2}(?:[.,]\d*)?))?(?::?(\d{2}(?:[.,]\d*)?))?$/,c=/^([+-])(\d{2})(?::?(\d{2}))?$/;function p(n){var t,e={},i=n.split(s.dateTimeDelimiter);if(i.length>2)return e;if(/:/.test(i[0])?t=i[0]:(e.date=i[0],t=i[1],s.timeZoneDelimiter.test(e.date)&&(e.date=n.split(s.timeZoneDelimiter)[0],t=n.substr(e.date.length,n.length))),t){var o=s.timezone.exec(t);o?(e.time=t.replace(o[1],""),e.timezone=o[1]):e.time=t}return e}function d(n,t){var e=new RegExp("^(?:(\\d{4}|[+-]\\d{"+(4+t)+"})|(\\d{2}|[+-]\\d{"+(2+t)+"})$)"),i=n.match(e);if(!i)return{year:NaN,restDateString:""};var o=i[1]?parseInt(i[1]):null,a=i[2]?parseInt(i[2]):null;return{year:null===a?o:100*a,restDateString:n.slice((i[1]||i[2]).length)}}function f(n,t){if(null===t)return new Date(NaN);var e=n.match(u);if(!e)return new Date(NaN);var i=!!e[4],o=m(e[1]),a=m(e[2])-1,r=m(e[3]),s=m(e[4]),l=m(e[5])-1;if(i)return function(n,t,e){return t>=1&&t<=53&&e>=0&&e<=6}(0,s,l)?function(n,t,e){var i=new Date(0);i.setUTCFullYear(n,0,4);var o=i.getUTCDay()||7,a=7*(t-1)+e+1-o;return i.setUTCDate(i.getUTCDate()+a),i}(t,s,l):new Date(NaN);var c=new Date(0);return function(n,t,e){return t>=0&&t<=11&&e>=1&&e<=(y[t]||(S(n)?29:28))}(t,a,r)&&function(n,t){return t>=1&&t<=(S(n)?366:365)}(t,o)?(c.setUTCFullYear(t,a,Math.max(o,r)),c):new Date(NaN)}function m(n){return n?parseInt(n):1}function v(n){var t=n.match(l);if(!t)return NaN;var e=h(t[1]),o=h(t[2]),a=h(t[3]);return function(n,t,e){if(24===n)return 0===t&&0===e;return e>=0&&e<60&&t>=0&&t<60&&n>=0&&n<25}(e,o,a)?e*i.vh+o*i.yJ+1e3*a:NaN}function h(n){return n&&parseFloat(n.replace(",","."))||0}function g(n){if("Z"===n)return 0;var t=n.match(c);if(!t)return 0;var e="+"===t[1]?-1:1,o=parseInt(t[2]),a=t[3]&&parseInt(t[3])||0;return function(n,t){return t>=0&&t<=59}(0,a)?e*(o*i.vh+a*i.yJ):NaN}var y=[31,null,31,30,31,30,31,31,30,31,30,31];function S(n){return n%400===0||n%4===0&&n%100!==0}},26126:function(n,t,e){e.d(t,{Uv:function(){return ln},d$:function(){return rn}});var i=e(67294),o=function(n,t){return Number(n.toFixed(t))},a=function(n,t,e){e&&"function"===typeof e&&e(n,t)},r={easeOut:function(n){return-Math.cos(n*Math.PI)/2+.5},linear:function(n){return n},easeInQuad:function(n){return n*n},easeOutQuad:function(n){return n*(2-n)},easeInOutQuad:function(n){return n<.5?2*n*n:(4-2*n)*n-1},easeInCubic:function(n){return n*n*n},easeOutCubic:function(n){return--n*n*n+1},easeInOutCubic:function(n){return n<.5?4*n*n*n:(n-1)*(2*n-2)*(2*n-2)+1},easeInQuart:function(n){return n*n*n*n},easeOutQuart:function(n){return 1- --n*n*n*n},easeInOutQuart:function(n){return n<.5?8*n*n*n*n:1-8*--n*n*n*n},easeInQuint:function(n){return n*n*n*n*n},easeOutQuint:function(n){return 1+--n*n*n*n*n},easeInOutQuint:function(n){return n<.5?16*n*n*n*n*n:1+16*--n*n*n*n*n}},s=function(n){"number"===typeof n&&cancelAnimationFrame(n)},u=function(n){n.mounted&&(s(n.animation),n.animate=!1,n.animation=null,n.velocity=null)};function l(n,t,e,i){if(n.mounted){var o=(new Date).getTime();u(n),n.animation=function(){if(!n.mounted)return s(n.animation);var a=(new Date).getTime()-o,u=(0,r[t])(a/e);a>=e?(i(1),n.animation=null):n.animation&&(i(u),requestAnimationFrame(n.animation))},requestAnimationFrame(n.animation)}}function c(n,t,e,i){var o=function(n){var t=n.scale,e=n.positionX,i=n.positionY;return!(Number.isNaN(t)||Number.isNaN(e)||Number.isNaN(i))}(t);if(n.mounted&&o){var a=n.setTransformState,r=n.transformState,s=r.scale,u=r.positionX,c=r.positionY,p=t.scale-s,d=t.positionX-u,f=t.positionY-c;0===e?a(t.scale,t.positionX,t.positionY):l(n,i,e,(function(n){a(s+p*n,u+d*n,c+f*n)}))}}var p=function(n,t){var e=n.wrapperComponent,i=n.contentComponent,o=n.setup.centerZoomedOut;if(!e||!i)throw new Error("Components are not mounted");var a=function(n,t,e){var i=n.offsetWidth,o=n.offsetHeight,a=t.offsetWidth*e,r=t.offsetHeight*e;return{wrapperWidth:i,wrapperHeight:o,newContentWidth:a,newDiffWidth:i-a,newContentHeight:r,newDiffHeight:o-r}}(e,i,t),r=a.wrapperWidth,s=a.wrapperHeight,u=function(n,t,e,i,o,a,r){var s=n>t?e*(r?1:.5):0,u=i>o?a*(r?1:.5):0;return{minPositionX:n-t-s,maxPositionX:s,minPositionY:i-o-u,maxPositionY:u}}(r,a.newContentWidth,a.newDiffWidth,s,a.newContentHeight,a.newDiffHeight,Boolean(o));return u},d=function(n,t,e,i){return o(i?n<t?t:n>e?e:n:n,2)},f=function(n,t){var e=p(n,t);return n.bounds=e,e};function m(n,t,e,i,o,a,r){var s=e.minPositionX,u=e.minPositionY,l=e.maxPositionX,c=e.maxPositionY,p=0,f=0;return r&&(p=o,f=a),{x:d(n,s-p,l+p,i),y:d(t,u-f,c+f,i)}}function v(n,t,e,i,o,a){var r=n.transformState,s=r.scale,u=r.positionX,l=r.positionY,c=i-s;return"number"!==typeof t||"number"!==typeof e?(console.error("Mouse X and Y position were not provided!"),{x:u,y:l}):m(u-t*c,l-e*c,o,a,0,0,null)}function h(n,t,e,i,o){var a=t-(o?i:0);return!Number.isNaN(e)&&n>=e?e:!Number.isNaN(t)&&n<=a?a:n}var g=function(n,t){var e=n.setup.panning.excluded,i=n.isInitialized,o=n.wrapperComponent,a=t.target,r=null===o||void 0===o?void 0:o.contains(a);return!!(i&&a&&r)&&!j(a,e)},y=function(n){var t=n.isInitialized,e=n.isPanning,i=n.setup.panning.disabled;return!(!t||!e||i)};var S=function(n,t){var e=n.setup,i=n.transformState.scale,o=e.minScale,a=e.disablePadding;return t>0&&i>=o&&!a?t:0};function w(n,t,e,i,o,a,r,s,u,l){if(o){var c;if(t>r&&e>r)return(c=r+(n-r)*l)>u?u:c<r?r:c;if(t<a&&e<a)return(c=a+(n-a)*l)<s?s:c>a?a:c}return i?t:d(n,a,r,o)}function C(n,t){var e=function(n){var t=n.mounted,e=n.setup,i=e.disabled,o=e.velocityAnimation,a=n.transformState.scale;return!(o.disabled&&!(a>1)&&i&&!t)}(n);if(e){var i=n.lastMousePosition,o=n.velocityTime,a=n.setup,r=n.wrapperComponent,s=a.velocityAnimation.equalToMove,u=Date.now();if(i&&o&&r){var l=function(n,t){return t?Math.min(1,n.offsetWidth/window.innerWidth):1}(r,s),c=t.x-i.x,p=t.y-i.y,d=c/l,f=p/l,m=u-o,v=c*c+p*p,h=Math.sqrt(v)/m;n.velocity={velocityX:d,velocityY:f,total:h}}n.lastMousePosition=t,n.velocityTime=u}}function b(n,t){var e=n.transformState.scale;u(n),f(n,e),void 0!==window.TouchEvent&&t instanceof TouchEvent?function(n,t){var e=t.touches,i=n.transformState,o=i.positionX,a=i.positionY;if(n.isPanning=!0,1===e.length){var r=e[0].clientX,s=e[0].clientY;n.startCoords={x:r-o,y:s-a}}}(n,t):function(n,t){var e=n.transformState,i=e.positionX,o=e.positionY;n.isPanning=!0;var a=t.clientX,r=t.clientY;n.startCoords={x:a-i,y:r-o}}(n,t)}function T(n){var t=n.transformState.scale,e=n.setup,i=e.minScale,o=e.alignmentAnimation,a=o.disabled,r=o.sizeX,s=o.sizeY,u=o.animationTime,l=o.animationType;if(!(a||t<i||!r&&!s)){var p=function(n){var t=n.transformState,e=t.positionX,i=t.positionY,o=t.scale,a=n.setup,r=a.disabled,s=a.limitToBounds,u=a.centerZoomedOut,l=n.wrapperComponent;if(!r&&l&&n.bounds){var c=n.bounds,p=c.maxPositionX,d=c.minPositionX,f=c.maxPositionY,m=c.minPositionY,h=e>p||e<d,g=i>f||i<m,y=v(n,e>p?l.offsetWidth:n.setup.minPositionX||0,i>f?l.offsetHeight:n.setup.minPositionY||0,o,n.bounds,s||u),S=y.x,w=y.y;return{scale:o,positionX:h?S:e,positionY:g?w:i}}}(n);p&&c(n,p,u,l)}}function P(n,t,e){var i=n.startCoords,o=n.setup.alignmentAnimation,a=o.sizeX,r=o.sizeY;if(i){var s=function(n,t,e){var i=n.startCoords,o=n.transformState,a=n.setup.panning,r=a.lockAxisX,s=a.lockAxisY,u=o.positionX,l=o.positionY;if(!i)return{x:u,y:l};var c=t-i.x,p=e-i.y;return{x:r?u:c,y:s?l:p}}(n,t,e),u=s.x,l=s.y,c=S(n,a),p=S(n,r);C(n,{x:u,y:l}),function(n,t,e,i,o){var a=n.setup.limitToBounds,r=n.wrapperComponent,s=n.bounds,u=n.transformState,l=u.scale,c=u.positionX,p=u.positionY;if(null!==r&&null!==s&&(t!==c||e!==p)){var d=m(t,e,s,a,i,o,r),f=d.x,v=d.y;n.setTransformState(l,f,v)}}(n,u,l,c,p)}}function N(n){if(n.isPanning){var t=n.setup.panning.velocityDisabled,e=n.velocity,i=n.wrapperComponent,o=n.contentComponent;n.isPanning=!1,n.animate=!1,n.animation=null;var a=null===i||void 0===i?void 0:i.getBoundingClientRect(),s=null===o||void 0===o?void 0:o.getBoundingClientRect(),u=(null===a||void 0===a?void 0:a.width)||0,c=(null===a||void 0===a?void 0:a.height)||0,p=(null===s||void 0===s?void 0:s.width)||0,d=(null===s||void 0===s?void 0:s.height)||0,f=u<p||c<d;!t&&e&&(null===e||void 0===e?void 0:e.total)>.1&&f?function(n){var t=n.velocity,e=n.bounds,i=n.setup,o=n.wrapperComponent,a=function(n){var t=n.mounted,e=n.velocity,i=n.bounds,o=n.setup,a=o.disabled,r=o.velocityAnimation,s=n.transformState.scale;return!(r.disabled&&!(s>1)&&a&&!t)&&!(!e||!i)}(n);if(a&&t&&e&&o){var s=t.velocityX,u=t.velocityY,c=t.total,p=e.maxPositionX,d=e.minPositionX,f=e.maxPositionY,m=e.minPositionY,v=i.limitToBounds,h=i.alignmentAnimation,g=i.zoomAnimation,y=i.panning,C=y.lockAxisY,b=y.lockAxisX,T=g.animationType,P=h.sizeX,N=h.sizeY,x=h.velocityAlignmentTime,Y=function(n,t){var e=n.setup.velocityAnimation,i=e.equalToMove,o=e.animationTime,a=e.sensitivity;return i?o*t*a:o}(n,c),E=Math.max(Y,x),D=S(n,P),X=S(n,N),z=D*o.offsetWidth/100,k=X*o.offsetHeight/100,O=p+z,W=d-z,A=f+k,I=m-k,M=n.transformState,Z=(new Date).getTime();l(n,T,E,(function(t){var e=n.transformState,i=e.scale,o=e.positionX,a=e.positionY,l=((new Date).getTime()-Z)/x,c=1-(0,r[h.animationType])(Math.min(1,l)),g=1-t,y=o+s*g,S=a+u*g,T=w(y,M.positionX,o,b,v,d,p,W,O,c),P=w(S,M.positionY,a,C,v,m,f,I,A,c);o===y&&a===S||n.setTransformState(i,T,P)}))}}(n):T(n)}}function x(n,t,e,i){var a=n.setup,r=a.minScale,s=a.maxScale,u=a.limitToBounds,l=h(o(t,2),r,s,0,!1),c=v(n,e,i,l,f(n,l),u);return{scale:l,positionX:c.x,positionY:c.y}}function Y(n,t,e){var i=n.transformState.scale,o=n.wrapperComponent,a=n.setup,r=a.minScale,s=a.limitToBounds,u=a.zoomAnimation,l=u.disabled,p=u.animationTime,d=u.animationType,f=l||i>=r;if((i>=1||s)&&T(n),!f&&o&&n.mounted){var m=x(n,r,t||o.offsetWidth/2,e||o.offsetHeight/2);m&&c(n,m,p,d)}}var E=function(){return E=Object.assign||function(n){for(var t,e=1,i=arguments.length;e<i;e++)for(var o in t=arguments[e])Object.prototype.hasOwnProperty.call(t,o)&&(n[o]=t[o]);return n},E.apply(this,arguments)};function D(n,t,e){if(e||2===arguments.length)for(var i,o=0,a=t.length;o<a;o++)!i&&o in t||(i||(i=Array.prototype.slice.call(t,0,o)),i[o]=t[o]);return n.concat(i||Array.prototype.slice.call(t))}var X=1,z=0,k=0,O={disabled:!1,minPositionX:null,maxPositionX:null,minPositionY:null,maxPositionY:null,minScale:1,maxScale:8,limitToBounds:!0,centerZoomedOut:!1,centerOnInit:!1,disablePadding:!1,wheel:{step:.2,disabled:!1,wheelDisabled:!1,touchPadDisabled:!1,activationKeys:[],excluded:[]},panning:{disabled:!1,velocityDisabled:!1,lockAxisX:!1,lockAxisY:!1,activationKeys:[],excluded:[]},pinch:{step:5,disabled:!1,excluded:[]},doubleClick:{disabled:!1,step:.7,mode:"zoomIn",animationType:"easeOut",animationTime:200,excluded:[]},zoomAnimation:{disabled:!1,size:.4,animationTime:200,animationType:"easeOut"},alignmentAnimation:{disabled:!1,sizeX:100,sizeY:100,animationTime:200,velocityAlignmentTime:400,animationType:"easeOut"},velocityAnimation:{disabled:!1,sensitivity:1,animationTime:400,animationType:"easeOut",equalToMove:!0}},W=function(n){var t,e,i,o;return{previousScale:null!==(t=n.initialScale)&&void 0!==t?t:X,scale:null!==(e=n.initialScale)&&void 0!==e?e:X,positionX:null!==(i=n.initialPositionX)&&void 0!==i?i:z,positionY:null!==(o=n.initialPositionY)&&void 0!==o?o:k}},A=function(n){var t=E({},O);return Object.keys(n).forEach((function(e){var i="undefined"!==typeof n[e];if("undefined"!==typeof O[e]&&i){var o=Object.prototype.toString.call(O[e]),a="[object Object]"===o,r="[object Array]"===o;t[e]=a?E(E({},O[e]),n[e]):r?D(D([],O[e],!0),n[e],!0):n[e]}})),t},I=function(n,t,e){var i=n.transformState.scale,a=n.wrapperComponent,r=n.setup,s=r.maxScale,u=r.minScale,l=r.zoomAnimation.size;if(!a)throw new Error("Wrapper is not mounted");var c=i*Math.exp(t*e);return h(o(c,3),u,s,l,!1)};function M(n,t,e,i,o){var a=n.wrapperComponent,r=n.transformState,s=r.scale,u=r.positionX,l=r.positionY;if(!a)return console.error("No WrapperComponent found");var p=(a.offsetWidth/2-u)/s,d=(a.offsetHeight/2-l)/s,f=x(n,I(n,t,e),p,d);if(!f)return console.error("Error during zoom event. New transformation state was not calculated.");c(n,f,i,o)}function Z(n,t,e,i){var o=n.setup,a=n.wrapperComponent,r=o.limitToBounds,s=W(n.props),u=n.transformState,l=u.scale,d=u.positionX,f=u.positionY;if(a){var v=p(n,s.scale),h=m(s.positionX,s.positionY,v,r,0,0,a),g={scale:s.scale,positionX:h.x,positionY:h.y};l===s.scale&&d===s.positionX&&f===s.positionY||(null===i||void 0===i||i(),c(n,g,t,e))}}var B=function(n){return function(t,e,i){void 0===t&&(t=.5),void 0===e&&(e=300),void 0===i&&(i="easeOut"),M(n,1,t,e,i)}},K=function(n){return function(t,e,i){void 0===t&&(t=.5),void 0===e&&(e=300),void 0===i&&(i="easeOut"),M(n,-1,t,e,i)}},H=function(n){return function(t,e,i,o,a){void 0===o&&(o=300),void 0===a&&(a="easeOut");var r=n.transformState,s=r.positionX,u=r.positionY,l=r.scale,p=n.wrapperComponent,d=n.contentComponent;if(!n.setup.disabled&&p&&d){var f={positionX:Number.isNaN(t)?s:t,positionY:Number.isNaN(e)?u:e,scale:Number.isNaN(i)?l:i};c(n,f,o,a)}}},L=function(n){return function(t,e){void 0===t&&(t=200),void 0===e&&(e="easeOut"),Z(n,t,e)}},_=function(n){return function(t,e,i){void 0===e&&(e=200),void 0===i&&(i="easeOut");var o=n.transformState,a=n.wrapperComponent,r=n.contentComponent;if(a&&r){var s=q(t||o.scale,a,r);c(n,s,e,i)}}},R=function(n){return function(t,e,i,o){void 0===i&&(i=600),void 0===o&&(o="easeOut"),u(n);var a=n.wrapperComponent,r="string"===typeof t?document.getElementById(t):t;if(a&&r&&a.contains(r)){var s=function(n,t,e){var i=n.wrapperComponent,o=n.contentComponent,a=n.transformState,r=n.setup,s=r.limitToBounds,u=r.minScale,l=r.maxScale;if(!i||!o)return a;var c=i.getBoundingClientRect(),d=t.getBoundingClientRect(),f=function(n,t,e,i){var o=n.getBoundingClientRect(),a=t.getBoundingClientRect(),r=e.getBoundingClientRect(),s=a.x*i.scale,u=a.y*i.scale;return{x:(o.x-r.x+s)/i.scale,y:(o.y-r.y+u)/i.scale}}(t,i,o,a),v=f.x,g=f.y,y=d.width/a.scale,S=d.height/a.scale,w=i.offsetWidth/y,C=i.offsetHeight/S,b=h(e||Math.min(w,C),u,l,0,!1),T=(c.width-y*b)/2,P=(c.height-S*b)/2,N=m((c.left-v)*b+T,(c.top-g)*b+P,p(n,b),s,0,0,i);return{positionX:N.x,positionY:N.y,scale:b}}(n,r,e);c(n,s,i,o)}}},U=function(n){return{instance:n,state:n.transformState,zoomIn:B(n),zoomOut:K(n),setTransform:H(n),resetTransform:L(n),centerView:_(n),zoomToElement:R(n)}};function F(){try{return{get passive(){return!0,!1}}}catch(n){return!1}}var j=function(n,t){var e=n.tagName.toUpperCase();return!!t.find((function(n){return n.toUpperCase()===e}))||!!t.find((function(t){return n.classList.contains(t)}))},Q=function(n){n&&clearTimeout(n)},q=function(n,t,e){var i=e.offsetWidth*n,o=e.offsetHeight*n;return{scale:n,positionX:(t.offsetWidth-i)/2,positionY:(t.offsetHeight-o)/2}};function $(n,t,e){var i=t.getBoundingClientRect(),o=0,a=0;if("clientX"in n)o=(n.clientX-i.left)/e,a=(n.clientY-i.top)/e;else{var r=n.touches[0];o=(r.clientX-i.left)/e,a=(r.clientY-i.top)/e}return(Number.isNaN(o)||Number.isNaN(a))&&console.error("No mouse or touch offset found"),{x:o,y:a}}var J=function(n){return Math.sqrt(Math.pow(n.touches[0].pageX-n.touches[1].pageX,2)+Math.pow(n.touches[0].pageY-n.touches[1].pageY,2))},V=function(n,t){var e=n.props,i=e.onWheel,r=e.onZoom,s=n.contentComponent,u=n.setup,l=n.transformState.scale,c=u.limitToBounds,p=u.centerZoomedOut,d=u.zoomAnimation,m=u.wheel,g=u.disablePadding,y=d.size,S=d.disabled,w=m.step;if(!s)throw new Error("Component not mounted");t.preventDefault(),t.stopPropagation();var C=function(n,t){var e,i,o=function(n){return n?n.deltaY<0?1:-1:0}(n);return i=o,"number"===typeof(e=t)?e:i}(t,null),b=function(n,t,e,i,a){var r=n.transformState.scale,s=n.wrapperComponent,u=n.setup,l=u.maxScale,c=u.minScale,p=u.zoomAnimation,d=u.disablePadding,f=p.size,m=p.disabled;if(!s)throw new Error("Wrapper is not mounted");var v=r+t*(r-r*e)*e;if(a)return v;var g=!i&&!m;return h(o(v,3),c,l,f,g&&!d)}(n,C,w,!t.ctrlKey);if(l!==b){var T=f(n,b),P=$(t,s,l),N=c&&(S||0===y||p||g),x=v(n,P.x,P.y,b,T,N),Y=x.x,E=x.y;n.previousWheelEvent=t,n.setTransformState(b,Y,E),a(U(n),t,i),a(U(n),t,r)}},G=function(n,t){var e=n.props,i=e.onWheelStop,o=e.onZoomStop;Q(n.wheelAnimationTimer),n.wheelAnimationTimer=setTimeout((function(){n.mounted&&(Y(n,t.x,t.y),n.wheelAnimationTimer=null)}),100);var r=function(n,t){var e=n.previousWheelEvent,i=n.transformState.scale,o=n.setup,a=o.maxScale,r=o.minScale;return!!e&&(i<a||i>r||Math.sign(e.deltaY)!==Math.sign(t.deltaY)||e.deltaY>0&&e.deltaY<t.deltaY||e.deltaY<0&&e.deltaY>t.deltaY||Math.sign(e.deltaY)!==Math.sign(t.deltaY))}(n,t);r&&(Q(n.wheelStopEventTimer),n.wheelStopEventTimer=setTimeout((function(){n.mounted&&(n.wheelStopEventTimer=null,a(U(n),t,i),a(U(n),t,o))}),160))},nn=function(n,t){var e=n.contentComponent,i=n.pinchStartDistance,a=n.transformState.scale,r=n.setup,s=r.limitToBounds,u=r.centerZoomedOut,l=r.zoomAnimation,c=l.disabled,p=l.size;if(null!==i&&e){var d=function(n,t,e){var i=e.getBoundingClientRect(),a=n.touches,r=o(a[0].clientX-i.left,5),s=o(a[0].clientY-i.top,5);return{x:(r+o(a[1].clientX-i.left,5))/2/t,y:(s+o(a[1].clientY-i.top,5))/2/t}}(t,a,e);if(Number.isFinite(d.x)&&Number.isFinite(d.y)){var m=J(t),g=function(n,t){var e=n.pinchStartScale,i=n.pinchStartDistance,a=n.setup,r=a.maxScale,s=a.minScale,u=a.zoomAnimation,l=a.disablePadding,c=u.size,p=u.disabled;if(!e||null===i||!t)throw new Error("Pinch touches distance was not provided");return t<0?n.transformState.scale:h(o(t/i*e,2),s,r,c,!p&&!l)}(n,m);if(g!==a){var y=f(n,g),S=s&&(c||0===p||u),w=v(n,d.x,d.y,g,y,S),C=w.x,b=w.y;n.pinchMidpoint=d,n.lastDistance=m,n.setTransformState(g,C,b)}}}},tn=function(n,t){var e=n.props.onZoomStop,i=n.setup.doubleClick.animationTime;Q(n.doubleClickStopEventTimer),n.doubleClickStopEventTimer=setTimeout((function(){n.doubleClickStopEventTimer=null,a(U(n),t,e)}),i)};function en(n,t){var e=n.setup,i=n.doubleClickStopEventTimer,o=n.transformState,r=n.contentComponent,s=o.scale,u=n.props,l=u.onZoomStart,p=u.onZoom,d=e.doubleClick,f=d.disabled,m=d.mode,v=d.step,h=d.animationTime,g=d.animationType;if(!f&&!i){if("reset"===m)return function(n,t){var e=n.props,i=e.onZoomStart,o=e.onZoom,r=n.setup.doubleClick,s=r.animationTime,u=r.animationType;a(U(n),t,i),Z(n,s,u,(function(){return a(U(n),t,o)})),tn(n,t)}(n,t);if(!r)return console.error("No ContentComponent found");var y=I(n,"zoomOut"===m?-1:1,v);if(s!==y){a(U(n),t,l);var S=$(t,r,s),w=x(n,y,S.x,S.y);if(!w)return console.error("Error during zoom event. New transformation state was not calculated.");a(U(n),t,p),c(n,w,h,g),tn(n,t)}}}var on=function(n){var t=this;this.mounted=!0,this.onChangeCallbacks=new Set,this.wrapperComponent=null,this.contentComponent=null,this.isInitialized=!1,this.bounds=null,this.previousWheelEvent=null,this.wheelStopEventTimer=null,this.wheelAnimationTimer=null,this.isPanning=!1,this.startCoords=null,this.lastTouch=null,this.distance=null,this.lastDistance=null,this.pinchStartDistance=null,this.pinchStartScale=null,this.pinchMidpoint=null,this.doubleClickStopEventTimer=null,this.velocity=null,this.velocityTime=null,this.lastMousePosition=null,this.animate=!1,this.animation=null,this.maxBounds=null,this.pressedKeys={},this.mount=function(){t.initializeWindowEvents()},this.unmount=function(){t.cleanupWindowEvents()},this.update=function(n){f(t,t.transformState.scale),t.setup=A(n)},this.initializeWindowEvents=function(){var n,e=F(),i=null===(n=t.wrapperComponent)||void 0===n?void 0:n.ownerDocument,o=null===i||void 0===i?void 0:i.defaultView;null===o||void 0===o||o.addEventListener("mousedown",t.onPanningStart,e),null===o||void 0===o||o.addEventListener("mousemove",t.onPanning,e),null===o||void 0===o||o.addEventListener("mouseup",t.onPanningStop,e),null===i||void 0===i||i.addEventListener("mouseleave",t.clearPanning,e),null===o||void 0===o||o.addEventListener("keyup",t.setKeyUnPressed,e),null===o||void 0===o||o.addEventListener("keydown",t.setKeyPressed,e)},this.cleanupWindowEvents=function(){var n,e,i=F(),o=null===(n=t.wrapperComponent)||void 0===n?void 0:n.ownerDocument,a=null===o||void 0===o?void 0:o.defaultView;null===a||void 0===a||a.removeEventListener("mousedown",t.onPanningStart,i),null===a||void 0===a||a.removeEventListener("mousemove",t.onPanning,i),null===a||void 0===a||a.removeEventListener("mouseup",t.onPanningStop,i),null===o||void 0===o||o.removeEventListener("mouseleave",t.clearPanning,i),null===a||void 0===a||a.removeEventListener("keyup",t.setKeyUnPressed,i),null===a||void 0===a||a.removeEventListener("keydown",t.setKeyPressed,i),document.removeEventListener("mouseleave",t.clearPanning,i),u(t),null===(e=t.observer)||void 0===e||e.disconnect()},this.handleInitializeWrapperEvents=function(n){var e=F();n.addEventListener("wheel",t.onWheelZoom,e),n.addEventListener("dblclick",t.onDoubleClick,e),n.addEventListener("touchstart",t.onTouchPanningStart,e),n.addEventListener("touchmove",t.onTouchPanning,e),n.addEventListener("touchend",t.onTouchPanningStop,e)},this.handleInitialize=function(n){var e=t.setup.centerOnInit;t.applyTransformation(),e&&(t.setCenter(),t.observer=new ResizeObserver((function(){var n;t.setCenter(),null===(n=t.observer)||void 0===n||n.disconnect()})),t.observer.observe(n))},this.onWheelZoom=function(n){if(!t.setup.disabled){var e=function(n,t){var e=n.setup.wheel,i=e.disabled,o=e.wheelDisabled,a=e.touchPadDisabled,r=e.excluded,s=n.isInitialized,u=n.isPanning,l=t.target;return!(!s||u||i||!l)&&!(o&&!t.ctrlKey)&&(!a||!t.ctrlKey)&&!j(l,r)}(t,n);e&&t.isPressingKeys(t.setup.wheel.activationKeys)&&(function(n,t){var e=n.props,i=e.onWheelStart,o=e.onZoomStart;n.wheelStopEventTimer||(u(n),a(U(n),t,i),a(U(n),t,o))}(t,n),V(t,n),G(t,n))}},this.onPanningStart=function(n){var e=t.setup.disabled,i=t.props.onPanningStart;e||g(t,n)&&t.isPressingKeys(t.setup.panning.activationKeys)&&(n.preventDefault(),n.stopPropagation(),u(t),b(t,n),a(U(t),n,i))},this.onPanning=function(n){var e=t.setup.disabled,i=t.props.onPanning;e||y(t)&&t.isPressingKeys(t.setup.panning.activationKeys)&&(n.preventDefault(),n.stopPropagation(),P(t,n.clientX,n.clientY),a(U(t),n,i))},this.onPanningStop=function(n){var e=t.props.onPanningStop;t.isPanning&&(N(t),a(U(t),n,e))},this.onPinchStart=function(n){var e=t.setup.disabled,i=t.props,o=i.onPinchingStart,r=i.onZoomStart;if(!e){var s=function(n,t){var e=n.setup.pinch,i=e.disabled,o=e.excluded,a=n.isInitialized,r=t.target;return!(!a||i||!r)&&!j(r,o)}(t,n);s&&(function(n,t){var e=J(t);n.pinchStartDistance=e,n.lastDistance=e,n.pinchStartScale=n.transformState.scale,n.isPanning=!1,u(n)}(t,n),u(t),a(U(t),n,o),a(U(t),n,r))}},this.onPinch=function(n){var e=t.setup.disabled,i=t.props,o=i.onPinching,r=i.onZoom;if(!e){var s=function(n){var t=n.setup.pinch.disabled,e=n.isInitialized,i=n.pinchStartDistance;return!(!e||t||!i)}(t);s&&(n.preventDefault(),n.stopPropagation(),nn(t,n),a(U(t),n,o),a(U(t),n,r))}},this.onPinchStop=function(n){var e=t.props,i=e.onPinchingStop,o=e.onZoomStop;t.pinchStartScale&&(function(n){var t=n.pinchMidpoint;n.velocity=null,n.lastDistance=null,n.pinchMidpoint=null,n.pinchStartScale=null,n.pinchStartDistance=null,Y(n,null===t||void 0===t?void 0:t.x,null===t||void 0===t?void 0:t.y)}(t),a(U(t),n,i),a(U(t),n,o))},this.onTouchPanningStart=function(n){var e=t.setup.disabled,i=t.props.onPanningStart;if(!e&&g(t,n))if(t.lastTouch&&+new Date-t.lastTouch<200&&1===n.touches.length)t.onDoubleClick(n);else{t.lastTouch=+new Date,u(t);var o=n.touches,r=1===o.length,s=2===o.length;r&&(u(t),b(t,n),a(U(t),n,i)),s&&t.onPinchStart(n)}},this.onTouchPanning=function(n){var e=t.setup.disabled,i=t.props.onPanning;if(t.isPanning&&1===n.touches.length){if(e)return;if(!y(t))return;n.preventDefault(),n.stopPropagation();var o=n.touches[0];P(t,o.clientX,o.clientY),a(U(t),n,i)}else n.touches.length>1&&t.onPinch(n)},this.onTouchPanningStop=function(n){t.onPanningStop(n),t.onPinchStop(n)},this.onDoubleClick=function(n){if(!t.setup.disabled){var e=function(n,t){var e=n.isInitialized,i=n.setup,o=n.wrapperComponent,a=i.doubleClick,r=a.disabled,s=a.excluded,u=t.target,l=null===o||void 0===o?void 0:o.contains(u);return!(!(e&&u&&l)||r)&&!j(u,s)}(t,n);e&&en(t,n)}},this.clearPanning=function(n){t.isPanning&&t.onPanningStop(n)},this.setKeyPressed=function(n){t.pressedKeys[n.key]=!0},this.setKeyUnPressed=function(n){t.pressedKeys[n.key]=!1},this.isPressingKeys=function(n){return!n.length||Boolean(n.find((function(n){return t.pressedKeys[n]})))},this.setTransformState=function(n,e,i){var o=t.props.onTransformed;if(Number.isNaN(n)||Number.isNaN(e)||Number.isNaN(i))console.error("Detected NaN set state values");else{n!==t.transformState.scale&&(t.transformState.previousScale=t.transformState.scale,t.transformState.scale=n),t.transformState.positionX=e,t.transformState.positionY=i;var r=U(t);t.onChangeCallbacks.forEach((function(n){return n(r)})),a(r,{scale:n,positionX:e,positionY:i},o),t.applyTransformation()}},this.setCenter=function(){if(t.wrapperComponent&&t.contentComponent){var n=q(t.transformState.scale,t.wrapperComponent,t.contentComponent);t.setTransformState(n.scale,n.positionX,n.positionY)}},this.handleTransformStyles=function(n,e,i){return t.props.customTransform?t.props.customTransform(n,e,i):function(n,t,e){return"translate(".concat(n,"px, ").concat(t,"px) scale(").concat(e,")")}(n,e,i)},this.applyTransformation=function(){if(t.mounted&&t.contentComponent){var n=t.transformState,e=n.scale,i=n.positionX,o=n.positionY,a=t.handleTransformStyles(i,o,e);t.contentComponent.style.transform=a}},this.getContext=function(){return U(t)},this.onChange=function(n){return t.onChangeCallbacks.has(n)||t.onChangeCallbacks.add(n),function(){t.onChangeCallbacks.delete(n)}},this.init=function(n,e){t.cleanupWindowEvents(),t.wrapperComponent=n,t.contentComponent=e,f(t,t.transformState.scale),t.handleInitializeWrapperEvents(n),t.handleInitialize(e),t.initializeWindowEvents(),t.isInitialized=!0,a(U(t),void 0,t.props.onInit)},this.props=n,this.setup=A(this.props),this.transformState=W(this.props)},an=i.createContext(null),rn=i.forwardRef((function(n,t){var e=(0,i.useState)(0)[1],o=n.children,a=(0,i.useRef)(new on(n)).current,r=function(n,t){return"function"===typeof n?n(t):n}(n.children,U(a)),s=(0,i.useCallback)((function(){"function"===typeof o&&e((function(n){return n+1}))}),[o]);return(0,i.useImperativeHandle)(t,(function(){return U(a)}),[a]),(0,i.useEffect)((function(){a.update(n)}),[a,n]),(0,i.useEffect)((function(){return a.onChange(s)}),[a,n,s]),i.createElement(an.Provider,{value:a},r)}));var sn="transform-component-module_wrapper__7HFJe",un="transform-component-module_content__uCDPE";!function(n,t){void 0===t&&(t={});var e=t.insertAt;if(n&&"undefined"!==typeof document){var i=document.head||document.getElementsByTagName("head")[0],o=document.createElement("style");o.type="text/css","top"===e&&i.firstChild?i.insertBefore(o,i.firstChild):i.appendChild(o),o.styleSheet?o.styleSheet.cssText=n:o.appendChild(document.createTextNode(n))}}(".transform-component-module_wrapper__7HFJe {\n  position: relative;\n  width: -moz-fit-content;\n  width: fit-content;\n  height: -moz-fit-content;\n  height: fit-content;\n  overflow: hidden;\n  -webkit-touch-callout: none; /* iOS Safari */\n  -webkit-user-select: none; /* Safari */\n  -khtml-user-select: none; /* Konqueror HTML */\n  -moz-user-select: none; /* Firefox */\n  -ms-user-select: none; /* Internet Explorer/Edge */\n  user-select: none;\n  margin: 0;\n  padding: 0;\n}\n.transform-component-module_content__uCDPE {\n  display: flex;\n  flex-wrap: wrap;\n  width: -moz-fit-content;\n  width: fit-content;\n  height: -moz-fit-content;\n  height: fit-content;\n  margin: 0;\n  padding: 0;\n  transform-origin: 0% 0%;\n}\n.transform-component-module_content__uCDPE img {\n  pointer-events: none;\n}\n");var ln=function(n){var t=n.children,e=n.wrapperClass,o=void 0===e?"":e,a=n.contentClass,r=void 0===a?"":a,s=n.wrapperStyle,u=n.contentStyle,l=n.wrapperProps,c=void 0===l?{}:l,p=n.contentProps,d=void 0===p?{}:p,f=(0,i.useContext)(an).init,m=(0,i.useRef)(null),v=(0,i.useRef)(null);return(0,i.useEffect)((function(){var n=m.current,t=v.current;null!==n&&null!==t&&f&&f(n,t)}),[]),i.createElement("div",E({},c,{ref:m,className:"react-transform-wrapper ".concat(sn," ").concat(o),style:s}),i.createElement("div",E({},d,{ref:v,className:"react-transform-component ".concat(un," ").concat(r),style:u}),t))};i.forwardRef((function(n,t){var e,o=(0,i.useRef)(null),a=(0,i.useContext)(an);return(0,i.useEffect)((function(){return a.onChange((function(n){if(o.current){o.current.style.transform=a.handleTransformStyles(0,0,1/n.state.scale)}}))}),[a]),i.createElement("div",E({},n,{ref:(e=[o,t],function(n){e.forEach((function(t){"function"===typeof t?t(n):null!=t&&(t.current=n)}))})}))}))}}]);