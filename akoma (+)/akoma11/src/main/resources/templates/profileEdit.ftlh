<#import "parts/common.ftlh" as c>
<#include "parts/sec.ftlh">

<@c.page>
    ${message?ifExists}
    <div class="container mx-5 mt-5">
        <div class="px-5 py-5">
            <form action="" method="post">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Password:</label>
                    <div class="col-sm-6">
                        <input type="password" name="password" class="form-control" placeholder="Password" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Email:</label>
                    <div class="col-sm-6">
                        <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}" />
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Doctor:</label>
                    <div class="col-sm-6">
                        <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="select" name="doc" required="required">
                            <option>-------</option>
                            <#list docs as doc>
                                <#if doc.isAdmin()>
                                <option value="${doc.username}">${doc.username}</option>
                                </#if>
                            </#list>
                        </select>

                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">PRIMARY inhaler:</label>
                    <div class="col-sm-6">
                        <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="select" name="pr_inh" required="required">
                            <option value="Item 1">P_Inhaler 1</option>
                            <option value="Item 2">P_Inhaler 2</option>
                            <option value="Item 3">P_Inhaler 3</option>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">RESCUE inhaler:</label>
                    <div class="col-sm-6">
                        <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="select" name="re_inh" required="required">
                            <option value="Item 1">R_Inhaler 1</option>
                            <option value="Item 2">R_Inhaler 2</option>
                            <option value="Item 3">R_Inhaler 3</option>
                        </select>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="text-center">
                    <button class="btn btn-info" type="submit">Save</button>
                    <div class="mb-5"></div></div>
            </form>
        </div>
    </div>
</@c.page>

