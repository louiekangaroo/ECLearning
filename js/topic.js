var topic = angular.module('topicModule', []); 
    
topic.service('topicService', function() {
    this.goToPage= function(pageName) {
        window.location.href = pageName; 
    }
});

topic.controller('getTopicListCtrl',  ['$scope', '$http', 'topicService', function ($scope, $http, topicService) 
{
    
    loadTopicList();
    
    function loadTopicList() {
    
        var myUrl = '../controllers/gettopiclist.php';
        
        $http({
            url: myUrl, 
            method: "GET"
        }).success(function(data) {
           $scope.getTopicList = data;
    	});
        
    }
    
    $("#btnAddTopic").click(function() {
        topicService.goToPage("addtopic.php");  
    });
    
    $("#idTopic").change(function() {
       var selected = $("#idTopic").val();
        
        if (selected == "1") {
            loadMainTopics();
            $("#hiddenDiv").css("display","block");
        } else {
            $("#hiddenDiv").css("display","none");
        }
    });
    
    function loadMainTopics() {
        
        var myUrl = '../controllers/getmaintopic.php';
        
        $http({
            url: myUrl, 
            method: "GET"
        }).success(function(data) {
           $scope.getMainTopic = data;
    	});
        
    }
    
    $scope.saveTopic = function() {
        
        var topicType = $("select[name='topicchoice']").val();
        var subTopicId = $("select[name='topicval']").val();
        var topicName = $("#topicName").val();
        
        var myUrl = '../controllers/savetopic.php';
        
        if (subTopicId == null) {
            subTopicId = 0;   
        }
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { ttype: topicType, subtopic: subTopicId, tname: topicName }
        }).success(function(data) {
            $scope.$apply;
            topicService.goToPage("topicconfig.php");
    	});
        
    }
    
    $scope.btnEditTopic = function(id) {
        sessionStorage.setItem('topiceditid', id);
        topicService.goToPage("edittopic.php"); 
    }
    
}]);

topic.controller('editTopicCtrl',  ['$scope', '$http', 'topicService', function ($scope, $http, topicService) 
{
    var id = sessionStorage.getItem('topiceditid');
   
    getTopic(id);
    
     $("#idTopic").change(function() {
       var selected = $("#idTopic").val();
        
        if (selected == "1") {
            loadMainTopics();
            $("#hiddenDiv").css("display","block");
        } else {
            $("#hiddenDiv").css("display","none");
        }
    });
    
    function loadMainTopics() {
        
        var myUrl = '../controllers/getmaintopic.php';
        
        $http({
            url: myUrl, 
            method: "GET"
        }).success(function(data) {
           $scope.getMainTopic = data;
    	});
        
    }
    
    function getTopic(id) {
     
        var myUrl = '../controllers/gettopic.php';
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { suid: id }
        }).success(function(data) {
            loadMainTopics();
            var topic = data[0];
            var topicChoice = 0;
            var parent = parseInt(topic.parentid);
            if (topic.isparent == 1) {
                topicChoice = 0;   
                $("#hiddenDiv").css("display","none");
            } else {
                topicChoice = 1;
                $("#hiddenDiv").css("display","block");
            }
                        
            $("select[name='topicchoice']").val(topicChoice);
            $("select[name='topicchoice']").prop('disabled', true);
            
            setTimeout(function() {
                $("select[name='topicval']").val(parent);
                $("select[name='topicval']").prop('disabled', true);
            },100);
            
            $("#topicName").val(topic.studyname);
    	});
    
    }
    
     $scope.updateTopic = function() {
        
        var myid = sessionStorage.getItem('topiceditid');
        var topicName = $("#topicName").val();
        
        if (validateTopicText()) {
        
            var myUrl = '../controllers/edittopic.php';
            $http({
                url: myUrl, 
                method: "GET",
                params: { id: myid, topic: topicName }
            }).success(function(data) {
                topicService.goToPage("topicconfig.php");
                $scope.apply;
            });
        } else { alert('Please complete required fields.') };
        
    }
     
     function validateTopicText() {
    
        var isValid = true;
        
        if ($("#topicName").val() == "") {
            $("#topicName").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
                
        return isValid;
        
    }
}]);