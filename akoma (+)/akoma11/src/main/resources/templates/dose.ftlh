<#import "parts/common.ftlh" as c>
<#include "parts/sec.ftlh">

<@c.page>
<div class="py-5"></div>
<div class="py-5"></div>
    <div class="container ">
        <div class="row">
            <div class="col-6">
            <div class="col">
            </div>
        </div>

    </div>


    <div class="container">
    <div class="row">
        <div class="col">
            <img src='/static/6967509.jpg' class="img-fluid" alt="...">
        </div>
        <div class="col">
            <div class="text-lg-center"><h1 class="text-info">RECORD DOSE</h1></div>
            <div class="py-4"></div>

            <form method="post" enctype="multipart/form-data">

                <div class="mb-3 ">
                    <label class="text-info"> Select inhaler type</label>
                        <div> <select id="select" name="inh_type" required="required" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                <option value="pr">PR_Inhaler 1</option>
                                <option value="re">RE_Inhaler 2</option>
                            </select>
                        </div>
                </div>
                <div class="py-2"></div>

                <div class="mb-3 ">
                    <label class="text-info"> Select trigger</label>
                    <div> <select id="select" name="trigger" required="required" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                            <option value="1">Trigger 1</option>
                            <option value="2">Trigger 2</option>
                            <option value="3">Trigger 3</option>
                            <option value="A">another</option>
                        </select>
                    </div>
                </div>

                <div class="py-2"></div>
                <div class="mb-3 ">
                    <label for="formFileLg" class="form-label text-info">Upload</label>
                    <input class="form-control form-control-lg" id="formFileLg" type="file" name="file">
                </div>
                <div class="py-2"></div>
                <div class="mb-3 ">
                    <label class="text-info">Select the date of the dose taken</label><br>
                    <input type="date" name="date" placeholder="" value=""
                           min="2022-01-01" max="2022-12-31"/>
                </div>


                <input type="hidden" name="dosDoc" value="${user.getDoc()}">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="py-2"></div>

                <div class="text-center"><input  class="btn btn-outline-info justify-content-center" type="submit" value="RECORD DOSE"/></div>
                <div class="py-5"></div>

            </form>

        </div>
    </div>



        </div>


        </div>
    </div></div>




    <div class="py-5"></div>
    <div class="py-5"></div>
        </@c.page>


