<#import "parts/common.ftlh" as c>
<#include "parts/sec.ftlh">

<@c.page>

    <div class="container">

        <div class="py-5"></div>

        <h1 class="text-info">PATIENT LIST</h1>

        <div class="py-5"></div>
        <div class="container">
            <ul class="list-group">

                <#list users as usr>

                    <#if usr.getDoc() == user.getUsername()>
                        <li class="list-group-item">
                            <a href="/patient/${usr.id}">${usr.username!''}</a>
                        </li>
                    </#if><#else>
                    No message

                </#list>

            </ul>


            <div class="py-5"></div>
            <div class="py-5"></div>


        </div></div>

</@c.page>
