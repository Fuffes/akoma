<#import "parts/common.ftlh" as c>
<#include "parts/sec.ftlh">

<@c.page>

    <div class="container">

        <div class="py-5"></div>

        <h1 class="text-info">LIAVE COMMENT</h1>

        <div class="py-5"></div>
        <div class="container">
            <ul class="list-group">

                <div>
                    <#if dos.filename??>
                        <!--<img src="/img/${dos.filename}"> -->
                        <audio controls="controls" src="/img/${dos.filename}"></audio>
                    </#if>
                </div>
                ${dose.status}
            </ul>

            <form method="post">
                <input type="text" name="comment">
                <input type="submit" value="send">
                <input type="hidden" value="${_csrf.token}" name="_csrf">
            </form>




            <div class="py-5"></div>
            <div class="py-5"></div>


        </div></div>

</@c.page>
