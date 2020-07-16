(function($){

    "use strict";


    /*==================================================================
    [ Focus input ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    });
    
  
  
    /*==================================================================
    [ Validate ]*/
    // var input = $('.validate-input .input100');
    var input = $('.validate-input .input100');

    $('.validate-form').on('submit',function(){
        var check = true;
        var lo = true;
        var agr=true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                lo=false;
            }
        }

        if($("#check1").prop('checked') == false || $("#check2").prop("checked") == false){
                alert("필수 약관에 동의 하셔야 합니다.");
                agr=false;
        }
        if(lo == true && agr == true){
            check=true;
        }else{
            check=false;
        }

        

        return check;
    });
   

    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });
    
    
    function validate (input) {
        console.log("회원input");
        
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else if($(input).attr('name') == 'userId'){
            if($(input).val().trim().match(/^[a-z0-9]{4,20}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'userPwd'){
            if($(input).val().trim().match(/^[a-z0-9]{4,20}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'userName'){
            if($(input).val().trim().match(/^[가-힣]{2,4}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'nickName'){
            if($(input).val().trim().match(/^[a-zA-Z0-9가-힣ㄱ-ㅎ]{4,20}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'phone'){
            if($(input).val().trim().match(/^[0-9]{11}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'birth'){
            if($(input).val().trim().match(/^[0-9]{6}$/) == null){
                return false;
            }
        }
        else if($(input).attr('name') == 'checkPwd'){
            if($(input).val().trim().match(/^[a-z0-9]{4,20}$/) == null){
                return false;
            }else if($(input).val() != $("#userPwd").val()){
                return false;
            }
        }
        else if($(input).attr('name') == 'mainField'){
            if($(input).val() != '치과' && $(input).val() != '피부과' && $(input).val() != '성형외과' && $(input).val() != '안과' && $(input).val() != '산부인과' && $(input).val() != '비뇨기과'
            && $(input).val() != '정신건강의학과' && $(input).val() != '정형외과' && $(input).val() != '마취통증의학과' && $(input).val() != '신경외과' && $(input).val() != '재활의학과'
            && $(input).val() != '영상의학과' && $(input).val() != '외과' && $(input).val() != '신경과' && $(input).val() != '소아과' && $(input).val() != '내과' && $(input).val() != '이비인후과'
            && $(input).val() != '가정의학과' && $(input).val() != '한의원'){
                return false;
            }
        }
        else if($(input).attr('name') == 'hospital'){
            if($(input).val() != '반도정형외과병원' && $(input).val() != '국립중앙의료원' && $(input).val() != '의료법인 제일의료재단 제일병원' && $(input).val() != '서울송도병원' && $(input).val() != '금강아산병원(재단법인 아산사회복지재단)' && $(input).val() != '소화병원(의료법인 소화병원)'
            && $(input).val() != '연세슬기병원' && $(input).val() != '연세바로척병원' && $(input).val() != '9988병원' && $(input).val() != '서울동인병원' && $(input).val() != '학교법인대진교육재단 제인병원'
            && $(input).val() != '연세무척나은병원' && $(input).val() != '서울프라임병원' && $(input).val() != '제니스병원' && $(input).val() != '서울명병원' && $(input).val() != '맑은수병원'
            && $(input).val() != '서울특별시 북부병원' && $(input).val() != '마디세상병원'  && $(input).val() != '서울척병원' && $(input).val() != '사회복지법인 성가소비녀회 성가복지병원' && $(input).val() != '강북으뜸병원' && $(input).val() != '서울현대병원'
            && $(input).val() != '성신병원' && $(input).val() != '도봉병원' && $(input).val() != '정병원' && $(input).val() != '참튼튼병원' && $(input).val() != '서울특별시서북병원'
            && $(input).val() != '연세노블병원' && $(input).val() != '서울특별시은평병원' && $(input).val() != '강서필병원' && $(input).val() != '의료법인 우리아이들 의료재단 우리아이들병원' && $(input).val() != '의료법인다나의료재단구로다나병원' && $(input).val() != '성지병원'
            && $(input).val() != '새움병원' && $(input).val() != '재단법인한국산업보건환경연구소부설 해상병원'  && $(input).val() != '지앤지병원' && $(input).val() != '강남을지대학교병원' && $(input).val() != '송파미소병원' && $(input).val() != '(복지)예사랑병원'
            && $(input).val() != '에스병원(S병원)' && $(input).val() != '메드윌병원' && $(input).val() != '의료법인 길정의료재단 길정병원' && $(input).val() != '열경의료재단동부허병원' && $(input).val() != '대동병원'
            && $(input).val() != '의료법인 백천의료재단 바로본병원' && $(input).val() != '진병원' && $(input).val() != '새동산병원' && $(input).val() != '대명의료재단서대구병원' && $(input).val() != '통합의료진흥원 전인병원' && $(input).val() != '신세계 여성병원'
            && $(input).val() != '서울지구병원' && $(input).val() != '기쁨병원'  && $(input).val() != '예울병원' && $(input).val() != '씨에스나무병원' && $(input).val() != '순천센텀병원' && $(input).val() != '의료법인 현경의료재단 광양서울병원'
            && $(input).val() != '의료법인장호의료재단녹동현대병원' && $(input).val() != '화순성심병원' && $(input).val() != '장흥우리병원' && $(input).val() != '전라남도강진의료원' && $(input).val() != '해남우석병원'
            && $(input).val() != '의료법인삼선의료재단영암병원' && $(input).val() != '계명대학교 의과대학 경주 동산병원' && $(input).val() != '바른유병원' && $(input).val() != '강남병원' && $(input).val() != '서울아동병원' && $(input).val() != '의료법인 갑을의료재단 갑을구미병원'
            && $(input).val() != '경희치과병원' && $(input).val() != '로덴성문치과병원'  && $(input).val() != '샤인치과교정과 치과병원' && $(input).val() != '다인치과병원' && $(input).val() != '강북예치과병원' && $(input).val() != '문치과병원'
            && $(input).val() != '잎사귀치과병원' && $(input).val() != '학교법인연세대학교치과대학치과병원' && $(input).val() != '네모치과병원' && $(input).val() != '한그루치과병원' && $(input).val() != '신촌다인치과병원'
            && $(input).val() != '목동예치과병원' && $(input).val() != '이엔이치과병원' && $(input).val() != '강동모커리한방병원' && $(input).val() != '서울실버한방병원' && $(input).val() != '더존한방병원' && $(input).val() != '동의대부속 한방병원'
            && $(input).val() != '재단법인 자생의료재단 해운대자생한방병원' && $(input).val() != '허브휴양  한방병원'  && $(input).val() != '대구자생한방병원' && $(input).val() != '대구한의대학교부속대구한방병원' && $(input).val() != '새로난한방병원' && $(input).val() != '가천대학교부속 길한방병원'
            && $(input).val() != '성인천한방병원' && $(input).val() != '(의)광혜원한방병원' && $(input).val() != '강남여성병원' && $(input).val() != '더웰병원' && $(input).val() != '수원중앙병원'
            && $(input).val() != '국군고양병원' && $(input).val() != '바른마디병원' && $(input).val() != '고운여성병원' && $(input).val() != '국군구리병원' && $(input).val() != '오산세종병원' && $(input).val() != '국립교통재활병원'
            && $(input).val() != '국군강릉병원' && $(input).val() != '푸른사랑병원'  && $(input).val() != '의료법인 대광의료재단 괴산성모병원'){
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }
   

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
   
    /*==================================================================
    [ Show pass ]*/
    var showPass = 0;
    $('.btn-show-pass').on('click', function(){
        if(showPass == 0) {
            $(this).next('input').attr('type','text');
            $(this).find('i').removeClass('zmdi-eye');
            $(this).find('i').addClass('zmdi-eye-off');
            showPass = 1;
        }
        else {
            $(this).next('input').attr('type','password');
            $(this).find('i').addClass('zmdi-eye');
            $(this).find('i').removeClass('zmdi-eye-off');
            showPass = 0;
        }
        
    });

    // $('input[type=radio][name=check]').on('click',function(){
    //     var chkValue = $('input[type=radio][name=check]:checked').val();

    //     if(chkValue == member){
    //         $('#memberJoin').css('display','block');
    //         $('#doctorJoin').css('display','none');
    //     }else if(chkValue == doctor){
    //         $('#memberJoin').css('display','none');
    //         $('#doctorJoin').css('display','block');
    //     }
    // })

    $(function(){
        $("#checkAll").click(function(){
            var bool = $("#checkAll").prop("checked");
            $(".infoBox").prop("checked",bool);
        })
    })

    // $(function(){
    //     $("#postcodify_search_button").postcodifyPopUp();
    // });
    
    // $('#mainField').on('input', function(){
    //     sisi = $(this);
    //     $.each($('#mainFieldList')[0].options, function(idx, opt){
    //         if(sisi.val() == opt.value){
    //             console.log("일치함");
    //         }else{
    //             console.log("일치않함");
    //         }
    //     })
    // })

    
})(jQuery);