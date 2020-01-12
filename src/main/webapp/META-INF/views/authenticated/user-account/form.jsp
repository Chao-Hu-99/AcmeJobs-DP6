<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>
<%-- <%@tag --%>
<%-- 	language ="java" --%>
<%-- 	body-content = "empty" --%>
<%-- 	import = "acme.framework.helpers.MessageHelper" --%>
<%--  %> --%>
<%--  <%@attribute name ="path" required = true %> --%>
<%--  <%@attribute name ="code" required = true %> --%>
<%--  <%@attribute name = "placeholder" %> --%>
<%--  <%@attribute name ="readonly" type = "java.lang.Boolean" %> --%>
<%--  <jstl:if test="${placeholder==null}"> --%>
<%-- 		<jstl:set --%>
<%-- 			var ="placeholder" --%>
<%-- 			value ="${MessageHelper.getMessage('default.placeholder.phone')}" --%>
<%-- 		/> --%>
<%-- 	</jstl:if> --%>
<%-- 	<jstl:if test="${readonly == null }"> --%>
<%-- 		<jstl:set var ="readonly" value = "false"/> --%>
<%-- 	</jstl:if> --%>
	
<!-- 	<div class ="form-group"> -->
<%-- 		<label for="${path}"> --%>
<%-- 			<acme:message code ="${code}"/> --%>
<!-- 		</label> -->
	
	
<!-- 	</div> -->

<acme:form>

		
	<acme:form-textbox code="authenticated.user-account.form.label.username" path="username" readonly="true"/>
	<acme:form-password code="authenticated.user-account.form.label.password" path="password"/>
	<acme:form-password code="authenticated.user-account.form.label.confirmation" path="confirmation"/>
	
	<acme:form-textbox code="authenticated.user-account.form.label.name" path="identity.name"/>
	<acme:form-textbox code="authenticated.user-account.form.label.surname" path="identity.surname"/>
	<acme:form-textbox code="authenticated.user-account.form.label.email" path="identity.email"/>
	<acme:form-textbox code ="authenticated.user-account.form.label.phone" path = "identity.phone"/>
	 
	<acme:form-submit code="authenticated.user-account.form.button.update" action="/authenticated/user-account/update"/>
  	<acme:form-return code="authenticated.user-account.form.button.return"/>
</acme:form>
