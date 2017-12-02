<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="sidebar-footer hidden-small">
	<a data-toggle="tooltip" data-placement="top" title="Settings"> <span
		class="glyphicon glyphicon-cog" aria-hidden="true"></span>
	</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
		<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
	</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
		class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
	</a>

	<s:url var="signOutUrl" namespace="/" action="/sign-out.html"></s:url>
	<s:a data-toggle="tooltip" data-placement="top" title="Logout"
		href="%{#signOutUrl}">
		<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
	</s:a>
</div>