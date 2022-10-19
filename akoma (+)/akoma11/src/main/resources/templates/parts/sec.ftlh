
<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal

    name = user.getUsername()
    isAdmin = user.isAdmin()
    isUser = user.isUser()
    email = user.getEmail()
    doc = user.getDoc()
    id = user.getId()
    currentUserId = user.getId()
    pr_inh = user.getPr_inh()
    re_inh = user.getRe_inh()
    >


<#else>
    <#assign
    name = "GUEST"
    isAdmin = false
    isUser = false
    currentUserId = -1
    >
</#if>

