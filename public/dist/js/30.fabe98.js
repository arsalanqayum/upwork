(window.webpackJsonp=window.webpackJsonp||[]).push([[30],{69:function(t,e,n){"use strict";n.r(e);var a=n(2),i=n.n(a),o={data:function(){return{event:""}},created:function(){var t=this;i.a.get("/api/events/public-event/"+this.$route.params.eventSlug+"/"+this.$route.params.orgSlug).then((function(e){t.event=e.data.data}))}},s=n(0),r=Object(s.a)(o,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",{staticStyle:{"line-height":"60px",height:"60px","background-color":"#dadada","font-family":"Roboto","border-bottom":"2px solid black"}},[n("h4",{staticStyle:{"line-height":"60px","margin-left":"20px"}},[t._v("\n      "+t._s(t.event.organization.name)+"\n    ")])]),t._v(" "),n("div",{staticClass:"container"},[n("div",{staticClass:"jumbotron",staticStyle:{"margin-top":"20px"}},[n("h2",[t._v(t._s(t.event.event_title))]),t._v(" "),n("p",[t._v(t._s(t.event.event_description))])])])])}),[],!1,null,null,null);e.default=r.exports}}]);