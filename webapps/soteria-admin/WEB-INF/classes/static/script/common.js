/**
 * 
 */
function showModal(msg, title){
	$('#baseModal .modal-body p').html(msg);
	if(!title){
		$('#baseModal .modal-title').text(title);
	}
	$('#baseModal').modal('show');
}

function showAlert(msg){
	alert(msg);
	
}

function showConfirm(msg){
	return confirm(msg);
}
//user types
var USER_SECURITYADMIN = 1;
var USER_ADMIN = 100;
var USER_OPERATOR = 200;
//week days for schedule setting
var SUN = 1;
var MON = 2;
var TUE = 3;
var WED = 4;
var THU = 5;
var FRI = 6;
var SAT = 7;
var SMS = 10, EMAIL = 100, POPUP = 1;
var weekdayList = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

function getPrefix(almType){
	switch(almType){
	case SMS: return 's';
	case EMAIL: return 'e';
	case POPUP: return 'p';
	default: return '';
	}
}
function getWeekDayStr(wd){
	switch(wd){
	case SUN: return 'Sun';
	case MON: return 'Mon';
	case TUE: return 'Tue';
	case WED: return 'Wed';
	case THU: return 'Thu';
	case FRI: return 'Fri';
	case SAT: return 'Sat';
	default: return '';
	}
}

var CMD_ADD = "ADD";
var CMD_REMOVE = "REMOVE";

//Right sidebar
var mySbblist = [];//전체 내 SBB
var activeSbbList = [];//그림 그릴 SBB
function displayMysbbHeader(bShow){
	var header = $('#mySbbHeader');
	if(bShow){
		header.show();
	}else{
		header.hide();
	}
}
function regMysbbSearch(sbbs){
	if(sbbs == undefined || sbbs.length === 0){
		return;
	}
	$('#serverSrch').on('keyup', function(){
		var val = $(this).val().toLowerCase();
		var regexSbb = new RegExp(val,'gi');
		var tgt = sbbs.filter((el)=>{
			//return el.sbbName.toLowerCase().startsWith(val) || el.sbbName.toLowerCase().match(regexSbb);
			return el.sbbName.match(regexSbb) || el.hostName.match(regexSbb);
		});
		if(tgt && tgt.length > 0){
			activeSbbList = [];
			tgt.reverse().forEach(function (el){
				activeSbbList.push(el);
			});
			//console.log('changed');
			renderFilteredSbbs();
		}
	});
}

function renderFilteredSbbs(){
	console.log('render')
	var container = $('#mySbbContainer');
	container.empty();
	var comp = $('#sampleMyServer')
	activeSbbList.reverse().forEach((el)=>{
		var sbb = $(comp).find('div.grid-sbb').clone();
		$(sbb).data('sbbid',el.sbbId);
		$(sbb).find('#hostname').html(el.hostName);
		$(sbb).find('#sbbname').html(el.sbbName);
		container.append(sbb);
	});
	
	regSbbBtns();
}
//right side sbb click event
var onSbbChanged;
function regSbbBtns(){
	$('div.grid-sbb').on('click', function(){
		//console.log($(this).attr('data-sbbid'));
		updateCurrSbb($(this).data('sbbid'));
		$('div.grid-sbb .sbb_view').removeClass('active');
		$(this).find('.sbb_view').addClass('active');
		//refresh content
		if(onSbbChanged != undefined){
			onSbbChanged(currSbbId);
		}
	});
}
function updateCurrSbb(sbbId){
	var sbbInfo = mySbblist.find(function(el, idx, array){
		return el.sbbId == sbbId;
	});
	selSbb = sbbInfo;
	currSbbId = sbbInfo.sbbId;
	$('#alarmTitle').html(sbbInfo.sbbName);
}

/**
 * Spinner 관리 함수.
 * progress(true) => show
 * progress(false) => hide
 * progress(false, 1000) => delayed hide. after 1000 msec
 */
var progressSt;
var hProgress;
function progress(start, timeout){
	if(start){
		progressSt = new Date();
		$('#spinner').show();
	}else{
		if(!timeout){
			timeout = 100;
		}
		var delta = new Date().getTime() - progressSt.getTime();
		if(new Date().getTime() - progressSt.getTime() < timeout){
			hProgress = setTimeout( ()=>{
				$('#spinner').hide();
				hProgress = null;
			}, Math.max(timeout - delta,1));
		}else{
			$('#spinner').hide();
			if(hProgress){
				closeTimer(hProgress);
				hProgress = null;
			}
		}
	}
}

/*
 * Dashboard
*/
var PERIOD_7DAYS = '7d';
var PERIOD_24HR = '24h';
var PERIOD_30DAYAS = '30d';

//날짜 포멧 변경 
function transformDateFmt(org){
  	//org: yyyy-mm-dd -> to: mm/dd/yyyy
  	var regex = /(\d{4})-(\d{2})-(\d{2})/g;
	var matches = [...org.matchAll(regex)];
	return matches[0][2] + '/' + matches[0][3] + '/' + matches[0][1];
}

//syslog level translation
function translateSeverity(level){
	var name = '';
	switch(level){
	case 0:
		name = 'Emergency';
		break;
	case 1:
		name = 'Alert';
		break;
	case 2:
		name = 'Critical';
		break;
	case 3:
		name = 'Error';
		break;
	case 4:
		name = 'Warning';
		break;
	case 5:
		name = 'Notice';
		break;
	case 6:
		name = 'Information';
		break;
	case 7:
		name = 'Debug';
		break;
	default:
			
	}
	return name;
}

//date formatting for tables
var date_foramt_table = 'MM/DD/YYYY HH:mm:ss';
function dateFormat_table(time){
//	  var dt = new Date(time);
//	  return dt.getFullYear()+'-'+(dt.getMonth()+1)+'-'+dt.getDate()+'<br/>'+dt.getHours()+':'+dt.getMinutes()+':'+dt.getSeconds();
	return moment(time).format(date_foramt_table);
}

function roleName(userType){
	switch(userType){
	case 1: return 'SA';
	case 100: return 'Ad';
	case 200: return 'Op';
	default: return '';
	}
}

//OTP TYPE
var OTPTYPE_MOBILE="mobile";
var OTPTYPE_WEB="web";//google

//toast options
var toast_timeout = 30000;//30sec
var toast_error = {
	closeButton: true,
	progressBar: true,
	positionClass: "toast-bottom-right",
	showDuration: "400",
	hideDuration: "3000",
	timeOut: toast_timeout,
	extendedTimeOut: "1000",
	showEasing: "swing",
	hideEasing: "linear",
	showMethod: "fadeIn",
	hideMethod: "fadeOut"
};
var toast_warning = {
	closeButton: true,
	progressBar: true,
	positionClass: "toast-bottom-right",
	showDuration: "400",
	hideDuration: "1000",
	timeOut: toast_timeout,
	extendedTimeOut: "1000",
	showEasing: "swing",
	hideEasing: "linear",
	showMethod: "fadeIn",
	hideMethod: "fadeOut"	
};
var toast_success = {
	closeButton: true,
	progressBar: true,
	positionClass: "toast-bottom-right",
	showDuration: "400",
	hideDuration: "1000",
	timeOut: toast_timeout,
	extendedTimeOut: "1000",
	showEasing: "swing",
	hideEasing: "linear",
	showMethod: "fadeIn",
	hideMethod: "fadeOut"
};
function showToast(type, msg1,msg2){
	switch(type){
	case 'error':
		toastr.options = toast_error;
		break;
	case 'warning':
		toastr.options = toast_warning;
		break;
	case 'success':
		toastr.options = toast_success;
		break;
	}
//	toastr.success(msg1, msg2);
	toastr.error(msg1, msg2);
}

function getPushList(userId){
	var params = {
			userId: userId
		};
		
	var url = ctx + "/user/findPw";
	var req = $.ajax({
		type : "POST",
		async : false,
		url : url,
		data : params
	});
	req.done( function(out) {
		if(out.code == 0){
			
			showFindPwResult();
			
		}else{
			console.log(out.errMsg);
			showModal("처리 중 오류가 발생 했습니다.");
		}
	}).fail(function(err) {
		console.log(err);
		errPop("처리 중 에러가 발생했습니다. 다시 시도 해 주세요.");
	}).always(function() {
		console.log("done");
	});
}

var notiParam = {
		userId: 0,
		pg: 1,
		pgSize: 5,
		lastPg: 0
	};

function loadSysNotification(){
	
	//var $tgt = $('#notificationsBox');
	var $tgt = $('.jscroll');
	
	var params = notiParam;
	params.userId = uId;
	if(params.pg !== 1 && params.pg > params.lastPg){
		return;
	}
	
	var url = ctx+"push/sysnoti";
	var req = $.ajax({
		type : "POST",
        async: true,
        url : url,
        data: params
    });
	req.done(function(out){
		if(out.code === 0){
			if(params.pg === 1){
				notiParam.lastPg = out.data.lastPg;
			}
			//if(notiParam.pg < out.data.lastPg){
				notiParam.pg = notiParam.pg+1;
			//}
			//$tgt.find('div.notifications-footer').remove();
			if(out.data.list){
				out.data.list.forEach(e=>{
					addNoti($tgt, e);
				});
			}
			if(out.data.currPg < out.data.lastPg){
				addNotiLastElem($tgt);
			}
		}else{
		}				
	}).fail(function(err){
		showAlert('데이터 조회에 실패하였습니다.');
	}).always(function(){
		
	});

}
function addNoti($dom, push){
//	var tag = '<a class="dropdown-item list-group-item" href="javascript:updateNotiReviwed('+noti.msgId+')"> \
//					<div class="d-flex justify-content-between">\
//						<div class="noti-icon"> \
//                           <i class="fas fa-exclamation-triangle"></i> \
//                        </div> \
//                        <div> \
//                           <h6 class="noti-title">'+ noti.msg1 +'</h6> \
//                           <h7>'+noti.regDate+'</h7> \
//                           <div class="tx-gray-600 tx-11">'+ noti.msg2 +'</div> \
//                        </div> \
//					</div> \
//				</a> ';
	
	var tag = `<a class="dropdown-item list-group-item" href="javascript:void(0);"> \
					<div class="d-flex justify-content-between"> \
				       <div class="noti-icon"> \
				          <button class="check-noti-button" onclick="updateNotiReviwed(this)" data-push-id="${push.msgId}" data-push-review="${push.reviewYn}"> \
				          	<i class="fas"></i> \
				          </button> \
				       </div> \
				       <div>	\
				          <h6 class="noti-title">${push.msg1}</h6> \
				          <h7>${push.regDate}</h7> \
				          <div class="tx-gray-600 tx-11">${push.msg2}</div> \
				       </div> \
				    </div> \
				</a> `;
	var clzz = push.reviewYn === 'Y' ? 'fa-exclamation-triangle' : 'fa-check';
	var $tag = $(tag);
	$tag.find('i').addClass(clzz);
	$dom.append($tag);
}

function addNotiLastElem($dom){
	
//	var tag = '<div class="notifications-footer"> \
//					<a class="nextSysNoti">Show More</a> \
//			   </div>';
	var tag = `<a class="nextSysNoti dropdown-item" href="" \
				style="width:100%;text-align:center;">Show More</a>`;
	$tag = $(tag);
	$tag.find('a.nextSysNoti').attr('href',ctx+'/push/sysnotilist?pg='+notiParam.pg);
	$dom.append($tag);
	$dom.find('a.nextSysNoti').off('click').on('click', function(e){
		e.stopPropagation();
		//loadSysNotification();
		console.log('noti click');
	});
}

var jscroll_options = {
	autoTrigger: false,
	loadingHtml: '<div style="width:100%;text-align:center;"><span> Loading... </span></div>',
	padding: 20,
	nextSelector: 'a.nextSysNoti:last',
	callback: loadedSysNoti,
	//loadingFunction: loadSysNotification,
	contentSelector: 'a.dropdown-item',
	debug:true
};

function initNotiScroll(){
	//$('#notificationsBox').jscroll(jscroll_options);
	$('.jscroll').jscroll(jscroll_options);
}

function loadedSysNoti(){
	console.log('loaded...');
}

function getNewSysNotiCount(){
	var params = {};
	var url = ctx+"push/newSysnotiCount";
	var req = $.ajax({
		type : "POST",
        async: true,
        url : url,
        data: params
    });
	req.done(function(out){
		if(out.code === 0){
			$('#notiNewCount').html(out.data);
		}else{
			console.log('getNewSysNotiCount error.');
			console.log(out.errMsg);
		}				
	}).fail(function(err){
		showAlert('데이터 조회에 실패하였습니다.');
	}).always(function(){
		
	});
}

function updateNotiReviwed(obj){
	var msgId = $(obj).attr('data-push-id');
	var reviewYn = $(obj).attr('data-push-review');
	if(reviewYn === 'Y'){
		return;
	}
	
	//prompt
	if(!confirm('알람을 확인처리 하시겠습니까?  _알람리스트체크')){
		return;
	}
	
	var params = {msgId:msgId};
	var url = ctx+"push/reviewed";
	var req = $.ajax({
		type : "POST",
        async: true,
        url : url,
        data: params
    });
	req.done(function(out){
		if(out.code === 0){
			getNewSysNotiCount();//update unread msg count
			notiIconSetChecked($(obj));
		}else{
			console.log('reviewed error.');
			console.log(out.errMsg);
		}				
	}).fail(function(err){
		showAlert('데이터 조회에 실패하였습니다.');
	}).always(function(){
		
	});
}

function notiIconSetChecked($btn){
	$btn.find('#icon02').hide();
	$btn.find('#icon01').show();//check
	
	$btn.attr('data-push-review', 'Y');
}
