<#import "parts/common.ftlh" as c>

<@c.page>
    <!-- TEAM -->


    <div class="footer-bottom py-3 text-center" style="background-image: linear-gradient(45deg, #72efe9, #478ac9)">
        <div class="py-5"></div>
        <div class="py-5"></div>


        <div class="container text-center">
            <div class="row">
                <div class="col">


                </div>
                <div class="col-6">


                        ${message?ifExists }

                    <form action="/login" method="post" class=" align-content-center justify-content-center" >
                        <label for="n" class="form-label"><h1 class="text-white">USER NAME</h1></label>
                        <div class="mb-3 ">
                            <input class="border border-5 form-control" type="text" name="username" id="n" >
                        </div>


                        <div class="py-3"></div>


                        <label for="p" class="form-label"><h1 class="text-white">PASSWORD</h1></label>
                        <div class="mb-3 ">
                            <input  class="border border-5 form-control" type="password" name="password" id="p">
                        </div>

                        <div class="py-2"></div>

                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <div class="py-2"></div>

                        <div><input  class="btn btn-outline-light justify-content-center" type="submit" value="LOG IN"/></div>
                        <div class="py-3"></div>

                    </form>

                    <a HREF="/registration"  class="btn-outline-light">Don't have an account?</a>
                </div>
                <div class="col">

                </div>
            </div>





        <div class="py-5"></div>

        <div class="py-5"></div>

    </div>







</@c.page>





