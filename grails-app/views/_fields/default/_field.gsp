<%@ page defaultCodec="html"%>
<div class="form-group ${invalid ? 'error' : ''}">
	<label class="control-label" for="${property}">${label}</label>
	<%= widget %>
	<g:if test="${invalid}"><p class="help-block">${errors.join('<br />')}</p></g:if>
</div>