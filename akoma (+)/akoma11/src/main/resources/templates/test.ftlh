<#import "parts/common.ftlh" as c>

<@c.page>
    <!-- Jumbotron -->
    <div class=" text-center bg-image rounded-3" style="
    background-image: url(/static/as-1080x675.jpg);
    height: 600px;
  ">
        <div class="mask" style=" background-image: linear-gradient(0deg, rgba(0,0,0,0.6), rgba(0,0,0,0.6)); height: 600px;">
            <div class="d-flex justify-content-center align-items-center h-100">
                <div class="text-white home">
                    <h1 class="mb-4 home" style="font-size: 100px;">Asthma Control Test</h1>
                    <h6 class="mb-5 home">Asthma is a common and treatable diseaseIt cannot be cured, but it can be managed and doesn´t have to slow you down</h6>
                </div>
            </div>
        </div>
    </div>
    <!-- Jumbotron -->
<div class="container">
    <section class="main">

        <form name="quiz" action="javascript:check();" class="quizform">
            <div class="quizsection">

                <h2>In the past 4 weeks, how much of the time did your asthma keep you from getting as much done at work, school or at home?</h2>

                <div class="answer"><input name="q1" value="value1" id="value1" type="radio" checked="checked" />All of the time</div>
                <div class="answer"><input name="q1" value="value2" id="value2" type="radio" />Most of the time</div>
                <div class="answer"><input name="q1" value="value3" id="value3" type="radio" />Some of the time</div>
                <div class="answer"><input name="q1" value="value4" id="value4" type="radio" />A little of the time</div>
                <div class="answer"><input name="q1" value="value5" id="value5" type="radio" />None of the time</div>

            </div>
            <div class="quizsection">

                <h2>During the past 4 weeks, how often have you had shortness of breath?</h2>

                <div class="answer"><input name="q2" value="value1" id="value1" type="radio" checked="checked" />More than once a day</div>
                <div class="answer"><input name="q2" value="value2" id="value2" type="radio" />Once a day</div>
                <div class="answer"><input name="q2" value="value3" id="value3" type="radio" />3 to 6 times a week</div>
                <div class="answer"><input name="q2" value="value4" id="value4" type="radio" />Once or twice a week</div>
                <div class="answer"><input name="q2" value="value5" id="value5" type="radio" />Not at all</div>

            </div>
            <div class="quizsection">

                <h2>During the past 4 weeks, how often did your asthma symptoms (wheezing, coughing, shortness of breath, chest tightness or pain)
                    wake you up at night or earlier than usual in the morning?</h2>

                <div class="answer"><input name="q3" value="value1" id="value1" type="radio" checked="checked" /> 4 or more nights a week</div>
                <div class="answer"><input name="q3" value="value2" id="value2" type="radio" />2 to 3 nights a week</div>
                <div class="answer"><input name="q3" value="value3" id="value3" type="radio" />Once a week</div>
                <div class="answer"><input name="q3" value="value4" id="value4" type="radio" />Once or Twice</div>
                <div class="answer"><input name="q3" value="value5" id="value5" type="radio" />Not at all</div>

            </div>
            <div class="quizsection">

                <h2>During the past 4 weeks, how often have you used your blue puffer or reliever medication
                    (such as Ventolin, Asmol, Airomir, Apo-Salbutamol or Bricanyl)?</h2>

                <div class="answer"><input name="q4" value="value1" id="value1" type="radio" checked="checked" />3 or more times per day</div>
                <div class="answer"><input name="q4" value="value2" id="value2" type="radio" />1 or 2 times per day</div>
                <div class="answer"><input name="q4" value="value3" id="value3" type="radio" />2 or 3 times per week</div>
                <div class="answer"><input name="q4" value="value4" id="value4" type="radio" />Once a week or less</div>
                <div class="answer"><input name="q4" value="value5" id="value5" type="radio" />Not at all</div>

            </div>
            <div class="quizsection">

                <h2>How would you rate your asthma control during the past 4 weeks?</h2>

                <div class="answer"><input name="q5" value="value1" id="value1" type="radio" checked="checked" />Not Controlled at all</div>
                <div class="answer"><input name="q5" value="value2" id="value2" type="radio" />Poorly Controlled</div>
                <div class="answer"><input name="q5" value="value3" id="value3" type="radio" />Somewhat Controlled</div>
                <div class="answer"><input name="q5" value="value4" id="value4" type="radio" />Well Controlled</div>
                <div class="answer"><input name="q5" value="value5" id="value5" type="radio" />Completely Controlled</div>

            </div>

            <input value="Submit" type="submit" /> <input value="Reset" type="reset" />

        </form>


    </section></div>
    <h1 id="result">Итог - <div id="result"></div> </h1>
    <script type="text/javascript">// <![CDATA[

        function check()
        {
            var result;
            var question;
            var value1;
            var value2;
            var value3;
            var value4;
            var value5;

            question = 1;
            value1 = 0;
            value2 = 0;
            value3 = 0;
            value4 = 0;
            value5 = 0;


            result = 0;

            var choice;

            for (question = 1; question <= 5; question++) {

                var q = document.forms['quiz'].elements['q'+question];

                for (var i = 0; i < q.length; i++) {
                    if (q[i].checked) {
                        choice = q[i].value;
                    }
                }

                if (choice === "value1") {
                    value1++;
                }

                if (choice === "value2") {
                    value2++;
                }
                if (choice === "value3") {
                    value3++;
                }
                if (choice === "value4") {
                    value4++;
                }
                if (choice === "value5") {
                    value5++;
                }

            } result = (value1*1+value2*2+value3*3+value4*4+value5*5);}
        document.getElementById("result").innerHTML = result;
        // ]]></script>
</@c.page>