<#import "parts/common.ftlh" as c>
<#include "parts/sec.ftlh">

<@c.page>


    <div class="container ">
        <div class="py-5"></div>
        <h1 class=" text-info">PERSONAL INFORMATION</h1>
        <div class="py-3"></div>
<div class="ml-4">
        <div class="form-group row">
            <h4 class="col-sm-2 col-form-label">NAME:</h4>
            <div class="col-sm-6">
                <div class="navbar-text ml-3 ">${name}</div><br>
            </div>
        </div>
        <div class="form-group row">
            <h4 class="col-sm-2 col-form-label">EMAIL:</h4>
            <div class="col-sm-6">
                <div class="navbar-text ml-3">${email}</div><br>
            </div>
        </div>
    <#if isUser>
        <div class="form-group row">
            <h4 class="col-sm-2 col-form-label">DOCTOR:</h4>
            <div class="col-sm-6">
                <div class="navbar-text ml-3">${doc}</div><br>
            </div>
        </div>
        <div class="form-group row">
            <h4 class="col-sm-2 col-form-label">PRIMARY INHALER:</h4>
            <div class="col-sm-6">
                <div class="navbar-text ml-3">${pr_inh}</div><br>
            </div>
        </div>
        <div class="form-group row">
            <h4 class="col-sm-2 col-form-label">RESCUE INHALER:</h4>
            <div class="col-sm-6">
                <div class="navbar-text ml-3">${re_inh}</div><br>
            </div>
        </div>
    </#if>
        <div class="py-3"></div>
        <div class="text-center ">
            <div class="  border-info"><a class="border-info text-info" HREF="/profile/${id}/edit"><h5 class="text-info">EDIT</h5></a>
            </div>
        </div>
    </div>
    </div>
    <div class="py-5"></div>
    <#if !isAdmin>
    <div class="container">

        <h1 class=" text-info">YOUR DOSES</h1>
        <div class="py-3"></div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Inhaler type</th>
                <th scope="col">Trigger</th>
                <th scope="col">Author</th>
                <th scope="col">Data</th>
                <th scope="col">Status</th>

            </tr>
            </thead>

            <tbody>
            <#list doses as dos>
                <#if dos.getAuthorId() == user.id>
                <tr>

                    <th scope="row">1</th>
                    <td>${dos.authorId!''}</td>
                    <td>${dos.inh_type!''}</td>
                    <td>${dos.trigger!''}</td>
                    <td>${dos.date!''}</td>
                    <td>${dos.status!''}</td>

                    <td><div>
                            <#if dos.filename??>
                                <!--<img src="/img/${dos.filename}"> -->
                                <audio controls="controls" src="/img/${dos.filename}"></audio>
                            </#if>
                        </div>
                    </td>
                </tr>
                </#if>
            <#else>
                No message
            </#list>
            </tbody>
        </table>
        <div class="py-5"></div>
    </div>
    </#if>

</@c.page>