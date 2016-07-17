var config = angular.module('configModule', []); 
    
config.service('configService', function() {
    this.goToPage= function(pageName, option) {
        if (option == null) { option = "_self" };
        //window.location.href = pageName; 
        window.open(pageName,option);
    }
});

config.controller('getConfigCtrl',  ['$scope', '$http', 'configService', function ($scope, $http, configService) 
{
    
    loadTestConfig();
  
    function loadTestConfig() {
    	$http({method: 'GET', url: '../controllers/gettestconfig.php'})
 		.success(function(data) {
            
            for (var iii = 0; iii <= data.length - 1; iii++) {
                data[iii].israndom = parseInt(data[iii].israndom);   
            }
            
            $scope.testconfig = data;
    	});
    }
    

    $('#btnCreateNew').click(function() {
        configService.goToPage("add.php"); 
    });
    
    $scope.btnEdit = function(id) {
        sessionStorage.setItem('editId', id);
        configService.goToPage("edit.php"); 
    }
    
    $scope.btnConfigure = function(id,sid,easy,medium,diff) {
        sessionStorage.setItem('configId', id);
        sessionStorage.setItem('subjId', sid);
        sessionStorage.setItem('easy', easy);
        sessionStorage.setItem('medium', medium);
        sessionStorage.setItem('diff', diff);
        configService.goToPage("questionlist.php");
    }
    
    $scope.btnPrint = function(id) {
        configService.goToPage("printlist.php?testid=" + id, "_blank");
    }
    
    
}]);

config.controller('addConfigCtrl',  ['$scope', '$http', 'configService', function ($scope, $http, configService) 
{
     
    loadSubjname();
     function loadSubjname() {
        
        var myUrl = '../controllers/getsubjname.php';
        
        $http({
            url: myUrl, 
            method: "GET"
        }).success(function(data) {
           $scope.getSubjName = data;
    	});
        
    }
    
    $scope.saveConfig = function() {
    
        var ttype = $("select[name='testtype']").val();
        var subTopicId = $("select[name='topicval']").val();
        var itemseasy = $("#easy").val();
        var itemsmoderate = $("#moderate").val();
        var itemsdifficult = $("#difficult").val();
        var isRandom = $scope.isChecked;
        
        if (validateConfigText()) {
        
            if (isRandom == undefined) { isRandom = false };
            var myUrl = '../controllers/addconfig.php';
            $http({
                url: myUrl, 
                method: "GET",
                params: { testtype: ttype,easy: itemseasy, moderate: itemsmoderate, difficult: itemsdifficult,subjid: subTopicId }
            }).success(function(data) {
               if (data == -1) {
                    alert("Studyname already exist");   
               } else {
                    configService.goToPage("testconfig.php");
                   $scope.apply;
               }
            });
        } else { alert('Please complete required fields.') };
    }
    
     function validateConfigText() {
    
        var isValid = true;
        
        if ($("#easy").val() == "") {
            $("#easy").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        
        if ($("#moderate").val() == "") {
            $("#moderate").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
         
        if ($("#difficult").val() == "") {
            $("#difficult").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        
        return isValid;
        
    }
}]);

config.controller('editConfigCtrl',  ['$scope', '$http', 'configService', function ($scope, $http, configService) {

    var myid = sessionStorage.getItem('editId');
    var testtypeid = 0;
    
    loadConfigEdit(myid);
    loadSubjname();
     function loadSubjname() {
        
        var myUrl = '../controllers/getsubjname.php';
        
        $http({
            url: myUrl, 
            method: "GET"
        }).success(function(data) {
           $scope.getSubjName = data;
    	});
        
    }
    
    
     function loadConfigEdit(myid) {
        var myUrl = '../controllers/gettestconfigone.php';
            
        $http({
        url: myUrl, 
        method: "GET",
        params: { id: myid }
        }).success(function(data) {
             var config = data[0];
            switch (config.topicname) {
                case "Pre-Test":
                    testtypeid = 1;
                    break;
                case "Post-Test":
                    testtypeid = 2;
                    break;
                case "Short-Quiz":
                    testtypeid = 3;
                    break;
                case "Long Quiz":
                    testtypeid = 4;
                    break;
                case "Major Exam":
                    testtypeid = 5;
                    break;
            }
            
          
           $("select[name='testtype']").val(testtypeid);
            $("select[name='testtype']").prop('disabled', true);
             $("select[name='topicval']").val(config.subjid);
            $("select[name='topicval']").prop('disabled', true);
           $("#easy").val(config.itemseasy);
            $("#moderate").val(config.itemsmoderate);
            $("#difficult").val(config.itemsdifficult);
            $("#txtIsRandomize").prop('checked', parseInt(config.israndom));
        });
    }
    
    $scope.updateConfig = function() {
        
        var ttype = $("select[name='testtype']").val();

        var itemseasy = $("#easy").val();
        var itemsmoderate = $("#moderate").val();
        var itemsdifficult = $("#difficult").val();
        var isRandom = $("#txtIsRandomize").prop('checked');
        
        if (validateConfigText()) {
        
            if (isRandom == true) { isRandom = 1 } else { isRandom = 0 };
            var myUrl = '../controllers/editconfig.php';
            $http({
                url: myUrl, 
                method: "GET",
                params: { id: myid, easy: itemseasy, moderate: itemsmoderate, difficult: itemsdifficult, randomMe: isRandom }
            }).success(function(data) {
                configService.goToPage("testconfig.php");
                $scope.apply;
            });
        } else { alert('Please complete required fields.') };
        
    }
    
     function validateConfigText() {
    
        var isValid = true;
        
        if ($("#easy").val() == "") {
            $("#easy").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        
        if ($("#moderate").val() == "") {
            $("#moderate").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
         
        if ($("#difficult").val() == "") {
            $("#difficult").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        
        return isValid;
        
    }
    
}]);

config.controller('questionListCtrl',  ['$scope', '$http', 'configService', function ($scope, $http, configService) {
        
       var myid = sessionStorage.getItem('configId');
       var sid = sessionStorage.getItem('subjId'); 
        var easy = sessionStorage.getItem('easy');
        var moderate =  sessionStorage.getItem('medium');
        var difficult =  sessionStorage.getItem('diff');
    
       loadQuestionList(myid);
    
        function loadQuestionList(tId) {
            
            var myUrl = '../controllers/getquestionlist.php';
            
            $http({
            url: myUrl, 
            method: "GET",
            params: { testid: parseInt(myid), subjid: parseInt(sid) }
            }).success(function(data) {
                $scope.questionLists = data
            $("select[name='testtype']").val(myid);
            $("select[name='testtype']").prop("disabled", true);
            });
            
        }
    
       $(".btnSave").click(function() {
           var level;
           var countEasy =0;
           var countModerate =0;
           var countDiff =0;
           
           $('[name="chkb[]"]:checked').each(function () {
                level = $(this).val().split('-')[0];
                
                switch (level) {
                    case "EASY":
                        countEasy += 1;
                        break;
                    case "MEDIUM":
                        countModerate += 1;
                        break;
                    case "DIFFICULT":
                        countDiff += 1;
                        break;
                    default:
                        break;
                }           
           });
           
           if (countEasy >= easy && countModerate >= moderate && countDiff >= difficult) {
                 saveTest();
           } else {
                alert("Please select correct number of questions per level.");   
           }
          
        });
    
    
        $(".testtype").change(function() {
            var ttype = $("select[name='testtype']").val();
            loadQuestionList(ttype);
                
        });
    
    function saveTest() {
        var myid = sessionStorage.getItem('configId');
        var sid = sessionStorage.getItem('subjId'); 
        var questionID = '';
        $('[name="chkb[]"]:checked').each(function () {
            var arr = $(this).val().split('-')[1];
            questionID += arr + ",";
        }); 
        
        questionID =  questionID.substring(0, questionID.length - 1);
    
        
        var myUrl = '../controllers/savetestconfig.php';
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { qID: questionID,testtype: myid,subjid: parseInt(sid)}
        }).success(function(data) {
            $scope.$apply;
            configService.goToPage("testconfig.php");
    	});
    }
    
    
    
    
}]);