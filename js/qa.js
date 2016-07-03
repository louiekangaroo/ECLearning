var qa = angular.module('qaModule', []); 
    
qa.service('qaService', function() {

    this.goToPage= function(pageName) {
        window.location.href = pageName; 
    }
});

qa.controller('selectSessionCtrl',  ['$scope', '$http', 'qaService', function ($scope, $http, qaService) 
{
      
    $(".btnSelectSessionSubmit").click(function() {
        sessionStorage.setItem('sessionType', $("input[name=session]:checked").val());
        var sessionType = $("input[name=session]:checked").val();
        if (sessionType == undefined || sessionType == null) {
            alert('Please select a session to proceed');
        } else {
            qaService.goToPage("reviewtopics.php"); 
        }
    });
    
}]);

qa.controller('reviewTopicsCtrl', ['$scope', '$http', 'qaService', function ($scope, $http, qaService) {
    
    loadTopics();
    
    function loadTopics() {
    	$http({method: 'GET', url: '../controllers/qa.php?command=reviewTopics'})
 		.success(function(data) {
            if (sessionStorage.getItem('sessionType') == 0) {
                $scope.topics = $.grep(data, function(v) {
                    return v.id <= 2;
                });    
            } else {
                $scope.topics = data;   
            }
        	
    	});
    }
    
    $(".btnReviewTopicsSubmit").click(function() {
        sessionStorage.setItem('sessionTopic', $("input[name=rdtopic]:checked").val());
        var sessionTopic = $("input[name=rdtopic]:checked").val();
        if (sessionTopic == undefined || sessionTopic == null) {
            alert('Please select a topic to proceed');
        } else {
            qaService.goToPage("studyunits.php"); 
        }
    });

}]);

qa.controller('studyUnitsCtrl', ['$scope', '$http', 'qaService', function ($scope, $http, qaService) {
    
    $('[name="chkStudy[]"]:checked').each(function () {
        $(this).attr('checked', false); 
    });
    
    $('.collapse').collapse();
    
    loadStudyUnits();
    
    
    function loadStudyUnits() {
    	$http({method: 'GET', url: '../controllers/qa.php?command=studyUnits'})
 		.success(function(data) {
            $scope.studyUnits = $.grep(data, function(v) {
               return v.isparent == 1; 
            });
            for (var aaa = 0; aaa <= $scope.studyUnits.length -1; aaa++) {
                loadStudyUnitsChildren($scope.studyUnits[aaa].id);
            }
            
    	});
    }
    
    function loadStudyUnitsChildren(tID) {
        var html = '';
        $http({method: 'GET', url: '../controllers/qa.php?command=studyUnitsChild&topicId=' + tID})
 		     .success(function(data) {
                    html += '<div id="studyUnitsChild" class="clsSUC ' + tID + '">';
                for (var topic = 0; topic <= data.length -1; topic++) {
                    html += '<input id="sSubUnits" type="checkbox" name="chkStudy[]" value="' + data[topic].id + '">' +
                            '<label for="sSubUnits"><span><span></span></span>' + data[topic].studyname + '</label><br>';
                }
                    html += '</div>';
               $(".studyUnits" + tID).append(html);
            });
    }
    
   $scope.expandCollapseChild = function(id) {
        $("." + id).toggle();
   }
   
   $(".btnSelectStudyUnits").click(function() {
        var subjId = '';
        $('[name="chkStudy[]"]:checked').each(function () {
            var arr = $(this).val().split(':');
            subjId += arr + ",";
        });
       
        setTimeout(function(){
            subjId =  subjId.substring(0, subjId.length - 1);
            sessionStorage.setItem('subjectId', subjId);
            if (subjId == undefined || subjId == null || subjId == "") {
                alert('Please select atleast one (1) topic to proceed');   
            } else {
                qaService.goToPage("questionandanswer.php");
            }
        },0);
   });
    
}]);

qa.controller('questionAndAnswerCtrl', ['$scope', '$http', 'qaService', function ($scope, $http, qaService) {
    var sessionType = sessionStorage.getItem('sessionType');
    var sessionTopic = sessionStorage.getItem('sessionTopic');
    var subjectId = sessionStorage.getItem('subjectId');
    var qaIndex = 0;
    var questionId = 0;
    var totalQuestions = 0;
    $scope.qaresults = [];
    
    if (sessionType == 0) {
        $(".textTitle").html("Study Session");
    } else {
        $(".textTitle").html("Test Session");
        $("#btnSubmit").hide();
        $("#lblRational").hide();
        $(".qaResult").hide();
    }
    
    setUpQuestions();
   
    
    function setUpQuestions() {
        var myUrl = '../controllers/setupquestion.php';
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { sesstopic : sessionTopic, subjid : subjectId, sesstype: sessionType }
        }).success(function(data) {
            totalQuestions = parseInt(data.trim());
             setTimeout(function() {
                loadQuestions(qaIndex);
             },1000);
             getTotalTime();
    	});
    }
    
    function loadQuestions(qaIndex) {
        var myUrl = '../controllers/getquestion.php';
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { sesstopic : sessionTopic, subjid : subjectId, index: qaIndex }
        }).success(function(data) {
            if (totalQuestions != qaIndex) {
                $(".question").html(qaIndex + 1); 
                $scope.question = data[0];
                questionId = $scope.question.id;
                minutes = $scope.question.minutes;
                var totalMin = 60 * minutes,
                display = $('#time');
                startTimer(totalMin, display);
            } else {
                insertToTestHistory();            
            }
    	});
        
    }
    
    $scope.submitAnswer = function() {
        var answer = $("input[name=question-answers]:checked").val();
        if (answer == "" || answer == undefined || answer == null) {
           alert('You must select an answer.');
        } else {
            answer = answer + "_rational";
            var rational = eval("$scope.question."  + answer);
            $("#lblRational").html(rational).show();   
        }
        
        
    }
    
    $scope.nextQuestion = function() {
        displayAnswerStatus();
        qaIndex += 1;
        var answer = $("input[name=question-answers]:checked").val();
        saveAnswer(questionId,answer);
        loadQuestions(qaIndex); 
        clearInterval(interval);
        $("#lblRational").hide();
        $("input[name=question-answers]").prop('checked', false);
    }
    
    function displayAnswerStatus() {
        
        var ans = $("input[name=question-answers]:checked").val();
        var correctAnswer = $scope.question.correct_ans;
        var stat = "";
        if (ans == correctAnswer) {
            stat = "Correct";
        } else {
            stat = "Wrong";
        }
        
        $scope.qaresults.push({
            index: qaIndex + 1,
            answer: ans,
            status: stat
        });
    }

   function saveAnswer(questionId,qanswer) {
        var myUrl = '../controllers/saveanswer.php';
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { questioanswer: qanswer,index: questionId }
        }).success(function(data) {
            data[0].index = qaIndex + 1;
            $scope.question = data[0];
            minutes = data[0].minutes;
    	});
        
    }
    
    function insertToTestHistory() {
        var myUrl = '../controllers/qa.php?command=inserTestHistory';
        
        $http({
            url: myUrl, 
            method: "GET"
        }).success(function(data) {
            var sessionType = "";
            if (sessionType == 0) {
                sessionType = "Study Session";
            } else {
                sessionType = "Test Session";
            }
            alert(sessionType + " is now finished");
            qaService.goToPage("finish.php");
    	});
        
    }
    
    var interval;
    function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        interval = setInterval(function () {
            minutes = parseInt(timer / 60, 10)
            seconds = parseInt(timer % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

            display.text(minutes + ":" + seconds);

            if (--timer <= 0) {
                $("#btnNext").trigger("click");
            }
        }, 1000);
    }
    
    var interval2;
    function startTimer2(duration, display) {
        var timer = duration, minutes, seconds;
        interval2 = setInterval(function () {
            minutes = parseInt(timer / 60, 10)
            seconds = parseInt(timer % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

            display.text(minutes + ":" + seconds);
            
            if (--timer < 0) {

            }
        }, 1000);
    }
    
    $scope.set_color = function (status) {
      if (status == "Correct") {
        return { color: "Green" }
      } else {
        return { color: "Red" }   
      }
    }

    function getTotalTime() {
        var myUrl = '../controllers/gettotalmin.php';
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { sesstopic : sessionTopic, subjid : subjectId }
        }).success(function(data) {
            $scope.retMin = data[0].MIN;
            setTimeout(function() {
             var totalMin = 60 * $scope.retMin;
             display = $('#totalTime');
             startTimer2(totalMin, display);
            }, 1000);
    	});
    }
}]);
   

    


