<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
		
		<!-- calendar css -->	
		<link href="${pageContext.request.contextPath}/resources/css/calendar.css?ver=1" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/common.css?ver=3" rel="stylesheet" type="text/css">

		<script>
			function confirm_delete(recordOfTransactionsIdx){
				if(confirm("delete this row of accountbook?") == true){
					$.ajax({
						type     : "POST",
						url      : "/assetcoach/accountBook/deleteRecordDepositAndWithdrawal",
						data     : {recordOfTransactionsIdx},
						dataType : "JSON",
						success  : function(result){
							if(result == '1'){
								alert("success delete the row");
								location.reload();								
							}
						},
						error    : function(request, status,error){
							console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
						}
					})
				}
				else{
					alert("delete canceled");	
				}
			}
		
		//modal JS
			document.addEventListener('DOMContentLoaded', () => {
				// Functions to open and close a modal
			  	function openModal($el) {
			    $el.classList.add('is-active');
			}

			function closeModal($el) {
				$el.classList.remove('is-active');
			}

			function closeAllModals() {
			    (document.querySelectorAll('.modal') || []).forEach(($modal) => {
			      closeModal($modal);
			    });
			}

			// Add a click event on buttons to open a specific modal
			(document.querySelectorAll('.js-modal-trigger') || []).forEach(($trigger) => {
				const modal = $trigger.dataset.target;
			    const $target = document.getElementById(modal);			    
			    $trigger.addEventListener('click', () => {
			      openModal($target);
			    });
			});

			// Add a click event on various child elements to close the parent modal
			(document.querySelectorAll('.modal-background, .modal-close, .modal-card-head .delete, .modal-card-foot .button') || []).forEach(($close) => {
			    const $target = $close.closest('.modal');

			    $close.addEventListener('click', () => {
			      closeModal($target);
			    });
			});

			// Add a keyboard event to close all modals
			document.addEventListener('keydown', (event) => {
			    const e = event || window.event;

			    if (e.keyCode === 27) { // Escape key
			      closeAllModals();
			    }
			});
		});
		</script>

	</head>
	<body>
		<input type=hidden id="jsTest" name="jsTest" value="${userEmail}">
		<input type=hidden id="jsTest2" name="jsTest2" value="${listOfRecordOfTransaction}">

		<div>
			recordDepositAndWithdrawal page.
		</div>
		<div class="screenFull">
			<div class="screenLeft">
				<div class="calendar">
	    			<div class="header">
	      				<div class="year-month"></div>
			      		<div class="nav">
			        		<button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
			        		<button class="nav-btn go-today" onclick="goToday()">Today</button>
			        		<button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
						</div>
			    	</div>
			    	<div class="main">
						<div class="days">
			      			<div class="day">SUN</div>
			      			<div class="day">MON</div>
			      			<div class="day">TUE</div>
			      			<div class="day">WED</div>
			       			<div class="day">THU</div>
			       			<div class="day">FRI</div>
			       			<div class="day">SAT</div>
				    	</div>
			   			<div class="dates"></div>
			    	</div>
		  		</div>	  		
				<script src="${pageContext.request.contextPath}/resources/js/calendar.js?ver=2" type="text/javascript">
				</script>			
			</div>
	  
		  	<div class="screenRight">
				<div style="margin:20px;">
					<div style="font-size:35px;">
						year month accountbookList.					
					</div>
					<div style="overflow-y: scroll; height:400px;">
						<table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
						<tr>
							<th style="width:75px;"> 選択</th>
							<th style="width:80px;"> 日付</th>
							<th style="width:75px;">  収入/支出</th>
							<th style="width:120px;"> 種類</th>
							<th style="width:150px;"> 分類</th>
							<th style="width:100px;"> 通貨</th>
							<th style="width:100px;"> 金額</th>
							<!-- <th>口座情報</th> -->
							<th style="width:200px;"> コメント</th>
							<th style="width:50px;"> 修正</th>
							<th style="width:50px;"> 削除</th>
						</tr>		
						<c:forEach var="record" items="${listOfRecordOfTransaction}">
							<tr>
								<!-- 選択 -->
								<td style="text-align: center; font-size: 14px;"> 
									<input type="checkbox">
								</td> 
							
								<!-- 日付 -->
								<td style="text-align: center; font-size: 14px;"> 
									${fn:substring(record.dateOfTraiding,5,10)} 
								</td> 
								
								<!-- 収入/支出 -->
								<td style="text-align: center; font-size: 14px;"> 
									<c:choose>
								         <c:when test = "${record.typeOfTransactions eq 'tOT1' }">
											収入
								         </c:when>
								         <c:when test = "${record.typeOfTransactions eq 'tOT2' }">
								            支出
								         </c:when>
								         <c:otherwise>
								            error : ${record.typeOfTransactions}
								         </c:otherwise>
								    </c:choose>								
								</td> 
								
								<!-- 種類 -->
								<td style="text-align: center; font-size: 14px;">
									<c:choose>
								         <c:when test = "${record.detailTypeOfTransactions eq 'dTOT101' }">
											勤労収入
								         </c:when>
								         <c:when test = "${record.detailTypeOfTransactions eq 'dTOT102' }">
								            金融収入
								         </c:when>
								         
								         <c:when test = "${record.detailTypeOfTransactions eq 'dTOT501' }">
								            固定支出
								         </c:when>
								         <c:when test = "${record.detailTypeOfTransactions eq 'dTOT502' }">
								            変動支出
								         </c:when>

								         <c:otherwise>
								            error : ${record.detailTypeOfTransactions}
								         </c:otherwise>
								    </c:choose>	
								</td>

								<!-- 分類 -->
								<td style="text-align: center; font-size: 14px;"> 
									<c:choose>
								         <c:when test = "${record.nameOfTransaction eq '101_0001'}">
											会社給料収入
								         </c:when>
								         <c:when test = "${record.nameOfTransaction eq '102_0001'}">
								            預金利子収入
								         </c:when>
								         <c:when test = "${record.nameOfTransaction eq '102_0002'}">
								            配当収入
								         </c:when>
								         
								         <c:when test = "${record.nameOfTransaction eq '501_0001'}">
								            家賃
								         </c:when>
								         <c:when test = "${record.nameOfTransaction eq '501_0002'}">
								            購讀料
								         </c:when>
								         <c:when test = "${record.nameOfTransaction eq '501_0003'}">
								            保険料
								         </c:when>
								         <c:when test = "${record.nameOfTransaction eq '502_0001'}">
								            図書費
								         </c:when>
								         <c:when test = "${record.nameOfTransaction eq '502_0002'}">
								            食費
								         </c:when>

								         <c:otherwise>
								            error : ${record.nameOfTransaction}
								         </c:otherwise>
								    </c:choose>									
								</td> 
								<td style="text-align: center; font-size: 14px;"> ${record.currencyType}						 </td> <!-- 通貨 -->
								<td style="text-align: right; font-size: 14px;">  ${record.purchase}							 </td> <!-- 金額 -->
								<td>${record.contents}</td>														  					   <!-- コメント(説明) -->
								<td><!-- 行修正 -->
									<button class="js-modal-trigger" 
											data-target="modal_accountbook_modify"
 											style="font-size: 12px;"
 											value=${record}>
										修正											
									</button>
								</td>					  			  
								<td><!-- 行削除 -->
									<!-- 
									<button class="js-modal-trigger" 
											data-target="modal_accountbook_delete"
 											style="font-size: 12px;"
 											value=${record.recordOfTransactionsIdx}>
										削除
									</button>
									-->
									<button onclick="confirm_delete(this.value)"
											style="font-size: 12px;"
 											value="${record.recordOfTransactionsIdx}">
										削除
									</button>

								</td>
								<%-- <td>${record.accountNumber}</td> --%> 																<!-- 口座情報 -->
							</tr>
						</c:forEach>		
					</table>
				</div>
				insert your transactions in accountbooks.
				<form action="/assetcoach/accountBook/addRecordDepositAndWithdrawal" method="post">
					<table class="table">
						<tr>
							<td style="width:125px;"> 日付</td>
							<td style="width:55px;">  収入/支出</td>
							<td style="width:115px;"> 種類</td>
							<td style="width:120px;"> 分類</td>
							<td style="width:100px;"> 通貨</td>
							<td style="width:100px;"> 金額</td>
							<td style="width:200px;"> コメント</td>
						</tr>
						<tr>
							<!-- START of submit datas  -->
							<input type="hidden" name="userIdx" value="${userIdx}">
							<!-- 日付 -->
							<td>
								<input type="date" name="dateOfTraiding" style="width:123px;">
							</td>
							
							
							<!-- 収入/支出 typeTheImcomeOrPay -->
							<td>
								<select name="typeOfTransactions">
									<option value="tOT1">収入</option>  <!-- value="1" : income -->
									<option value="tOT2">支出</option>  <!-- value="2"  : pay -->
								</select>
							</td>
					
							<!-- 種類 -->
							<td>
								<select name="detailTypeOfTransactions" style="width:112px;"><!-- DB 追加必要 -->
									<!-- dTOT : detailTypeOfTransactions -->
									<!-- 種類1‐収入関連 -->
									<option value="dTOT101">勤労収入</option> 		<!-- earnedIncome -->
									<option value="dTOT102">金融収入</option>		<!-- financialIncome -->
									
									<!-- 種類2‐支出関連 -->
									<option value="dTOT501">固定支出</option> 		<!-- fixedExpense -->
									<option value="dTOT502">変動支出</option> 		<!-- variableExpense -->
								</select>
							</td>
		
							<!-- 分類 -->
							<td>
								<select name="nameOfTransaction" style="width:115px;"><!-- DB 追加必要 -->
									<!-- 種類1‐収入関連 -->
									<option value="101_0001">会社給料収入</option>	<!-- vlaue="incomeFromSalary" -->
									<option value="102_0001">預金利子収入</option>	<!-- vlaue="incomeFromInterests" -->
									<option value="102_0002">配当収入</option>		<!-- vlaue="incomeFromDividends" -->
									
									<!-- 種類2‐支出関連 -->
									<option value="501_0001">家賃</option>			<!-- vlaue="payToMonthlyRent" -->
									<option value="501_0002">購讀料</option>			<!-- vlaue="payToSubscription" -->
									<option value="501_0003">保険料</option>			<!-- vlaue="payToInsurance" -->
									<option value="502_0001">図書費</option>			<!-- vlaue="payToBookBudget" -->
									<option value="502_0002">食費</option>			<!-- vlaue="payToFoodExpenses" -->
								</select>
							</td>
							
							<!-- 通貨 -->
							<td>
								<select name="currencyType" style="width:93px;">
									<option value="KRW">KRW</option>
									<option value="USD">USD</option>
									<option value="JPY">JPY</option>
								</select>
							</td>
		
							<!-- 金額 -->
							<td>
								<input type="text" name="purchase" value="" style="width:100px;"> <!-- amountOfMoney -->
							</td>
		
							<%-- 口座情報 --%>
							<%-- 
							<td>
								<!-- <select id="userBankAccountList" name="userBankAccountIdx">  -->
								<select id="userBankAccountList" name="accountIdx"> 
									<c:forEach var="userBank" items="${userBankAccountList}">
										<option value="${userBank.accountIdx}" >
											${userBank.bankName}
											_${userBank.bankBranchName}
											_${userBank.accountNumber}										
										</option>
									</c:forEach>
								</select>
							</td>
							--%>
		
							<!-- コメント(説明) -->				
							<td>
								<input type="text" name="contents">
							</td>	
						</tr>
					</table>
					<button type="submit"> 
						insert to accountBook.
					</button>
				</form>
			</div>
		</div>
	</div>
	</body>

	<div id="modal_accountbook_modify" class="modal">
		<div class="modal-background">
		</div>
 		<div class="modal-card" style="width:1000px;">
   			<header class="modal-card-head">
     			<p class="modal-card-title">行修正</p>
     			<button class="delete" aria-label="close"></button>
	   		</header>
   			
   			<section class="modal-card-body">
   				please insert data for modifys. 
   					<form action="/assetcoach/accountBook/addRecordDepositAndWithdrawal" method="post">
					<table class="table">
						<tr>
							<td style="width:125px;"> 日付</td>
							<td style="width:55px;">  収入/支出</td>
							<td style="width:115px;"> 種類</td>
							<td style="width:120px;"> 分類</td>
							<td style="width:100px;"> 通貨</td>
							<td style="width:100px;"> 金額</td>
							<td style="width:200px;"> コメント</td>
						</tr>
						<tr>
							<!-- START of submit datas  -->
							<input type="hidden" name="userIdx" value="${userIdx}">
							<!-- 日付 -->
							<td>
								<input type="date" name="dateOfTraiding" style="width:123px;">
							</td>
							
							
							<!-- 収入/支出 typeTheImcomeOrPay -->
							<td>
								<select name="typeOfTransactions">
									<option value="tOT1">収入</option>  <!-- value="1" : income -->
									<option value="tOT2">支出</option>  <!-- value="2"  : pay -->
								</select>
							</td>
					
							<!-- 種類 -->
							<td>
								<select name="detailTypeOfTransactions" style="width:112px;"><!-- DB 追加必要 -->
									<!-- dTOT : detailTypeOfTransactions -->
									<!-- 種類1‐収入関連 -->
									<option value="dTOT101">勤労収入</option> 		<!-- earnedIncome -->
									<option value="dTOT102">金融収入</option>		<!-- financialIncome -->
									
									<!-- 種類2‐支出関連 -->
									<option value="dTOT501">固定支出</option> 		<!-- fixedExpense -->
									<option value="dTOT502">変動支出</option> 		<!-- variableExpense -->
								</select>
							</td>
		
							<!-- 分類 -->
							<td>
								<select name="nameOfTransaction" style="width:115px;"><!-- DB 追加必要 -->
									<!-- 種類1‐収入関連 -->
									<option value="101_0001">会社給料収入</option>	<!-- vlaue="incomeFromSalary" -->
									<option value="102_0001">預金利子収入</option>	<!-- vlaue="incomeFromInterests" -->
									<option value="102_0002">配当収入</option>		<!-- vlaue="incomeFromDividends" -->
									
									<!-- 種類2‐支出関連 -->
									<option value="501_0001">家賃</option>			<!-- vlaue="payToMonthlyRent" -->
									<option value="501_0002">購讀料</option>			<!-- vlaue="payToSubscription" -->
									<option value="501_0003">保険料</option>			<!-- vlaue="payToInsurance" -->
									<option value="502_0001">図書費</option>			<!-- vlaue="payToBookBudget" -->
									<option value="502_0002">食費</option>			<!-- vlaue="payToFoodExpenses" -->
								</select>
							</td>
							
							<!-- 通貨 -->
							<td>
								<select name="currencyType" style="width:93px;">
									<option value="KRW">KRW</option>
									<option value="USD">USD</option>
									<option value="JPY">JPY</option>
								</select>
							</td>
		
							<!-- 金額 -->
							<td>
								<input type="text" name="purchase" value="" style="width:100px;"> <!-- amountOfMoney -->
							</td>
							<!-- コメント(説明) -->				
							<td>
								<input type="text" name="contents">
							</td>	
						</tr>
					</table>
				</form>
   				
        	</section>

    		<footer class="modal-card-foot">
   		 		<button class="button is-success">Modify</button>
    			<button class="button">Cancel</button>
    		</footer>
    	</div>
	</div>
	
	<div id="modal_accountbook_delete" class="modal">
		<div class="modal-background">
		</div>
 		<div class="modal-card">
   			<header class="modal-card-head">
     			<p class="modal-card-title">行削除</p>
     			<button class="delete" aria-label="close"></button>
	   		</header>
   			
   			<section class="modal-card-body">
				delete Z ${record.accountIdx} Z datas. are you okay?
        	</section>

    		<footer class="modal-card-foot">
   		 		<button class="button is-success">Delete</button>
    			<button class="button">Cancel</button>
    		</footer>
    	</div>
	</div>	
	
</html>