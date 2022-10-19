<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="container">
        <div class="py-5"></div>

        <h1 class="text-info">PATIENT ${us.username} </h1>
        <div class="py-5"></div>

        <table class="table">
            <thead>
            <tr>
                <th scope="col">INHALER</th>
                <th scope="col">DATE</th>
                <th scope="col">STATUS</th>
                <th scope="col">RECORD</th>
                <th scope="col">COMMENT</th>


            </tr>
            </thead>
            <tbody>
            <#list doses as dos>
                <#if dos.getAuthorId()==us.id>
                    <tr>
                    <td>${dos.inh_type!''}</td>
                    <td>${dos.date!''}</td>
                    <td>${dos.status!''}</td>
                    <td><div>
                            <#if dos.filename??>
                                <!--<img src="/img/${dos.filename}"> -->
                                <audio controls="controls" src="/img/${dos.filename}"></audio>
                            </#if>
                        </div>
                    </td>
                    <td><#if dos.status == "Placed">
                            <form method="post"><a class="btn btn-primary" href="/patient/${us.id}/${dos.id}">
                                    Edit
                                </a>
                                <button class=" btn btn-outline-info"  type="submit">leave comment</button>
                                <input type="hidden" value="${_csrf.token}" name="_csrf">
                            </form>
                        <#else>${dos.comment}
                    </#if></td>
                    </tr>
                </#if>
            </#list>
            </tbody>
        </table>
        --------------------------------------------
        <div class="modal fade" id="modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">leave comment</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <form action="/patient" method="post">
                            <div class="mb-3">
                                <label for="message-text" class="col-form-label">Message:</label>
                                <textarea class="form-control" id="message-text" name="comment"></textarea>
                                <button type="submit" class="btn btn-secondary">send</button>
                                <input type="hidden" value="${_csrf.token}" name="_csrf">

                            </div>
                        </form>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div>

        ----------------------------------------------



    </div>
</@c.page>
