<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'teacher.label', default: 'Teacher')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <!--page-header open-->
    <div class="page-header">
        <h1 class="page-title"></h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">
                <a class="text-light-color" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                <g:link class="text-light-color" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                <g:link class="text-light-color" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
            </li>
        </ol>
    </div>
    <!--page-header closed-->
    <div class="row">
        <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4><g:message code="default.show.label" args="[entityName]" /></h4>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div id="show-teacher" >
                                    <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                    </g:if>
                                    <f:display bean="teacher" />
                                    <g:form class="form-horizontal" resource="${this.teacher}" method="DELETE">
                                        <fieldset class="buttons">
                                            <g:link class="btn btn-primary m-b-5 m-t-5" action="edit" resource="${this.teacher}"><i class="fe fe-edit followbtn ml-1"></i><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                            <g:link class="btn btn-primary m-b-5 m-t-5" action="profile" resource="${this.teacher}"><i class="fe fe-user followbtn ml-1"></i><g:message code="default.button.profile.label" default="Profile" /></g:link>
                                            <g:link class="btn btn-primary m-b-5 m-t-5" action="printJobDescription"  resource="${this.teacher}"><i class="fe fe-printer followbtn ml-1"></i> <g:message code="default.button.print.label" default="Ажлын байрны тодорхойлолт" /></g:link>
                                            <g:link class="btn btn-primary m-b-5 m-t-5" action="printDefinition" target="blank" resource="${this.teacher}"><i class="fe fe-printer followbtn ml-1"></i> <g:message code="default.button.print.label" default="Ажилладаг нь үнэн" /></g:link>
                                            <input class="btn btn-primary m-b-5 m-t-5" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        </fieldset>
                                    </g:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>

    </body>
</html>
