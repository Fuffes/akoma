<#import "parts/common.ftlh" as c>

<@c.page>

        <div class="footer-bottom py-3 text-white " style="background-image: linear-gradient(45deg, #72efe9, #478ac9)">
        <div class="py-5"></div>
        <div class="py-5"></div>


        <div class="container ">
            <div class="row">
                <div class="col"><div class="py-5"></div>       <div class="py-3"></div>


                </div>
                <div class="col-6">
                    <div class="text-lg-center"><h1 class="text-white">REGISTRATION</h1></div>
                    <div class="py-5"></div>
                    ${message?ifExists}

                    <form form action="/registration" method="post" class=" " name="f" >
                    <label for="name"><h3 class="text-white">NAME</h3></label>
                        <div class="mb-3 ">
                            <input class="border border-5 form-control" type="text" name="username" required="required" id="name">
                        </div>
                        <div class="py-2"></div>
                        <label for="email"><h3 class="text-white">E-MAIL</h3></label>
                        <div class="mb-3 ">
                            <input class="border border-5 form-control" type="email" id="email" name="email" required="">
                        </div>
                        <div class="py-2"></div>
                        <div class="mb-3 ">
                            <label for="password"><h3 class="text-white">PASSWORD</h3></label>
                            <input  class="border border-5 form-control" type="password" name="password" id="password" required="required">
                        </div>


                            <div class="elnt_container">
                                <label for="is_doc">YOU'RE Doctor</label>
                                <input id="is_doc" name="is_doc" type="checkbox" />
                            </div>
                            <div id="conditional_part">
                                <div class="py-2"></div>
                                <div class="mb-3 ">
                                    <select class="form-select form-select-lg" aria-label="Default select example" id="doc" name="doc" >
                                        <option value=NULL >---------</option>
                                        <#list users as user> <#if user.isAdmin()>
                                            <option value="${user.username}">${user.username}</option>

                                        </#if> </#list>
                                    </select></div>
                                <div class="py-2"></div>
                                <div class="mb-3 ">
                                    <select class=" form-select form-select-lg" aria-label="Default select example" id="pr-inh" name="pr_inh" required="required">
                                        <option value="Item 1">P_Inhaler 1</option>
                                        <option value="Item 2">P_Inhaler 2</option>
                                        <option value="Item 3">P_Inhaler 3</option>
                                    </select></div><div class="py-2"></div>
                                <div class="mb-3 ">
                                    <select class="form-select form-select-lg" aria-label="Default select example" id="re_inh" name="re_inh" required="required">
                                        <option value="Item 1">R_Inhaler 1</option>
                                        <option value="Item 2">R_Inhaler 2</option>
                                        <option value="Item 3">R_Inhaler 3</option>
                                    </select></div>
                            </div>



                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <div class="py-2"></div>

                        <div class="text-center"><input  class="btn btn-outline-light justify-content-center" type="submit" value="SIGN IN"/></div>
                        <div class="py-5"></div>

                    </form>

                </div>
                <div class="col">

                </div>
            </div>



            <div class="py-5"></div>


        </div>



</@c.page>
