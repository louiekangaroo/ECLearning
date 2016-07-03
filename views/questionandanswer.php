<!-- start of header code 'ECheader.php'-->
<?PHP 
   session_start();
   include_once("../controllers/udf.php");
   include_once("menuinterface.php");
?>
<!DOCTYPE html>
<html ng-app="qaModule">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
      <meta name="description" content="">
      <meta name="keywords" content="">
      <meta name="author" content="Team PELA">
      <link rel='shortcut icon' type='image/x-icon' href='../favicon.ico' />
      <title>EC Learning</title>
      <link href="../css/bootstrap.min.css" rel="stylesheet">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
      <link href="../css/global.css" rel="stylesheet">
       <script src="../js/jquery-2.2.4.min.js"></script>
      <script src="../js/angular.min.js"></script>
      <script src="../js/bootstrap.min.js"></script>
      <script src="../js/ec.js"></script>
      <script src="../js/qa.js"></script>
   </head>
   <body class="indexBody" ng-controller="questionAndAnswerCtrl">
    <!--This is the HEADER-->
    <?PHP include_once('echeader.php'); ?>
    <div class="container">
        <div class="row content">
            <div class="col-sm-9 text-left">
                <span class="textTitle"></span>
                <hr>
                <div class="qaDiv">
                    <div class="questionLevel">Level : <b>{{question.level}}</b></div>
                    <div class="qaQuestions">
                    <h4 ><span class="question"></span>. {{question.question}}</h4>
                    <br>
                        <div>
                            <input id="question-1-answers-A" type="radio" name="question-answers" value="a">
                            <label for="question-1-answers-A"><span><span></span></span>{{question.a}}</label>
                        </div>
                        <div>
                            <input id="question-1-answers-B" type="radio" name="question-answers" value="b">
                            <label for="question-1-answers-B"><span><span></span></span>{{question.b}}</label>
                        </div>
                        <div>
                            <input id="question-1-answers-C" type="radio" name="question-answers" value="c">
                            <label for="question-1-answers-C"><span><span></span></span>{{question.c}}</label>
                        </div>
                        <div>
                            <input id="question-1-answers-D" type="radio" name="question-answers" value="d">
                            <label for="question-1-answers-D"><span><span></span></span>{{question.d}}</label>
                        </div>
                        <span id="lblRational" style="color:red; font-size:18px; line-height:35px; font-family: Calibri;">Rational : </span>
                    </div>
                    <div class="qaButtons">
                        <input type="submit" id="btnSubmit" class ="btnQa" value="Submit Answer" ng-click="submitAnswer()">
                        <input type="submit" id="btnNext" class ="btnQa" value="Next Question" ng-click="nextQuestion()">
                    </div>
                    <div class="divTime">
                        <span class="questionTime">Time remaining : <b><span id="time">------</span></b></span>
                        <span class="timeRemaining">Total time remaining : <b><span id="totalTime">-------</span></b></span>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 text-left qaInsideResult">
                <div class="qaResultDiv">
                <div class="qaResult-Header">Q&A Results</b></div>
                <div class="qaResult">
                    <ul ng-repeat="result in qaresults">
                        <b><li><span>{{result.index}}. </span>
                            {{result.answer}} - <span ng-style="set_color(result.status)">{{result.status}}</span>
                        </li></b>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <?PHP include_once('ecfooter.php'); ?>
   </body>
</html>