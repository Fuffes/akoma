



<#import "parts/common.ftlh" as c>
<#include "parts/sec.ftlh">
<@c.page>
    <!-- Jumbotron -->
    <div class=" text-center bg-image rounded-3" style="
    background-image: url('https://img.freepik.com/premium-photo/inhaler-on-a-blue-table-medicine-health-respiratory-diseases_97840-1524.jpg?w=1060');
    height: 600px;
  ">
        <div class="mask" style="background-color: rgba(0, 0, 0, 0.6); height: 600px;">
            <div class="d-flex justify-content-center align-items-center h-100">
                <div class="text-white home">
                    <h1 class="mb-4 home" style="font-size: 100px;">AKOMA. med</h1>
                    <h6 class="mb-5 home">Log in to the system to use the functions</h6>
                <#if !user??><a class="btn btn-outline-light btn-lg" href="/login" role="button">LOG IN</a></#if>
                <#if isUser><a class="btn btn-outline-light btn-lg" href="/dose" role="button">GO</a></#if>
                <#if isAdmin><a class="btn btn-outline-light btn-lg" href="/patient" role="button">GO</a></#if>
                </div>
            </div>
        </div>
    </div>
    <!-- Jumbotron -->



    <!-- FEATURES -->
    <section class="row w-100 py-0 bg-light" id="features">
        <div class="col-lg-6 col-img"><img src="/static/inhaler-concept-illustration_114360-6930.webp" class="img-fluid" alt="..."> </div>
        <div class="col-lg-6 py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 offset-md-1">

                        <h1>Best solution for your business</h1>
                        <p>Lorem ipsum dolor sit amet consectetur nisi necessitatibus repellat distinctio eveniet eaque
                            fuga
                            in cumque optio consectetur harum vitae debitis sapiente praesentium aperiam aut</p>

                        <div class="feature d-flex mt-5">
                            <div class="iconbox me-3">
                                <img src="/static/award.gif" width="64" height="64" alt="я джифка">
                            </div>
                            <div>
                                <h5>Feature</h5>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil perspiciatis illo </p>
                            </div>
                        </div>
                        <div class="feature d-flex">
                            <div class="iconbox me-3">
                                <img src="/static/award.gif" width="64" height="64" alt="я джифка">
                            </div>
                            <div>
                                <h5>Feature</h5>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil perspiciatis illo </p>
                            </div>
                        </div>
                        <div class="feature d-flex">
                            <div class="iconbox me-3">
                                <i class='bx bxs-download'></i>
                            </div>
                            <div>
                                <h5>Feature</h5>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil perspiciatis illo </p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section><!-- FEATURES -->



    <!-- TEAM -->
    <section id="team">
        <div class="container">
            <div class="row mb-5 py-5">
                <div class="col-md-8 mx-auto text-center">
                    <h1>Meet Our Crew Members</h1>
                    <p>Lorem ipsum dolor sit amet consectetur nisi necessitatibus repellat distinctio eveniet eaque fuga
                        in cumque optio consectetur harum vitae debitis sapiente praesentium aperiam aut</p>
                </div>
            </div>
            <div class="align-content-center">
                <div class="row text-center g-3">
                    <div class="container text-center">
                        <div class="row">
                            <div class="col">
                                 <div class="card" style="width: 18rem;">
                                    <img src='/static/team1.jpg' class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card" style="width: 18rem;">
                                    <img src='/static/team1.jpg' class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card" style="width: 18rem;">
                                    <img src='/static/team1.jpg' class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    </div>
                </div>
            </div>
        </div>
    </section><!-- TEAM -->



    <!-- CONTACT -->
    <section id="contact">
        <div class="container">
            <div class="row mb-5 ">
                <div class="col-md-8 mx-auto text-center">
                    <h1>Get In Touch</h1>
                    <p>Lorem ipsum dolor sit amet consectetur nisi necessitatibus repellat distinctio eveniet eaque fuga
                        in cumque optio consectetur harum vitae debitis sapiente praesentium aperiam aut</p>
                </div>
            </div>


            <form action="" class="row g-3 justify-content-center">
                <div class="col-md-5 p-2">
                    <input type="text" class="form-control" placeholder="Full Name">
                </div>
                <div class="col-md-5 py-2">
                    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Email address: name@example.com">
                </div>
                <div class="col-md-10 py-2">
                    <textarea name="body"  cols="30" rows="5" class="form-control"
                              placeholder="Enter Message"></textarea>
                </div>
                <div class="col-md-10 d-grid py-2 align-content-center">
                    <button class="btn btn-info">Contact</button>
                </div>
            </form>

        </div>
        <div class="row mb-5 py-5"></div>
    </section><!-- CONTACT -->


</@c.page>