<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
	<body>
		recordDepositAndWithdrawal page.

		<div style="margin:5%;" >
			Sample
			<table border="1">
				<tr>
					<td>日付					</td>
					<td>金の出入り(収入/支出)</td>
					<td>種類					</td>
					<td>分類					</td>
					<td>通貨					</td>
					<td>金額					</td>
					<td>口座情報				</td>
					<td>コメント(説明)		</td>
				</tr>
				<tr>
					<td>2022年8月1日</td>
					<td>支出</td>
					<td>固定支出</td>
					<td>家賃</td>
					<td>JPY(¥)</td>
					<td>45,000</td>
					<td>現金</td>
					<td>毎月家賃を払う。</td>
				</tr>
	
				<tr>
					<td>2022年8月2日</td>
					<td>収入</td>
					<td>金融収入</td>
					<td>配当金</td>
					<td>USD($)</td>
					<td>0.59</td>
					<td>나무증권 205-05-540966</td>
					<td>米国の企業「アップル(AAPL)」の配当金。</td>
				</tr>
			</table>
		</div>		
		<!-- Sample END -->
		
		<div style="margin:5%;" >
			List of your tanasactions from accountbooks.

			<table border="1">
				<tr>
					<th>日付</th>
					<th>金の出入り(収入/支出)</th>
					<th>種類</th>
					<th>分類</th>
					<th>通貨</th>
					<th>金額</th>
					<th>口座情報</th>
					<th>コメント(説明)</th>
				</tr>		
				<c:forEach var="record" items="${listOfRecordOfTransaction}">
					<tr>
						<td>${record.dateOfTraiding}</td>	<!-- 日付 -->
						<td>${record.typeOfTransactions}</td>	<!-- 金の出入り(収入/支出) -->
						<td>${record.detailTypeOfTransactions}</td>	<!-- 種類 -->
						<td>${record.nameOfTransaction}</td>	<!-- 分類 -->
						<td>${record.currencyType}</td>	<!-- 通貨 -->
						<td>${record.purchase}</td>	<!-- 金額 -->
						<td>${record.accountNumber}</td>	<!-- 口座情報 -->
						<td>${record.contents}</td><!-- コメント(説明)	-->
					</tr>
		

				</c:forEach>		
			</table>
		</div>		

		<div style="margin:5%;" >
			insert your transactions in accountbooks.
			<form action="/assetcoach/accountBook/addRecordDepositAndWithdrawal" method="post">
				<table border="1" >
					<tr>
						<td>日付</td>
						<td>金の出入り</td>
						<td>種類</td>
						<td>分類</td>
						<td>通貨</td>
						<td>金額</td>
						<td>口座情報</td>
						<td>コメント(説明)</td>
					</tr>
					<tr>
						<!-- START of submit datas  -->
						<input type="hidden" name="userIdx" value="${userIdx}">
						<!-- 日付 -->
						<td>
							<input type="date" name="dateOfTraiding">
						</td>
						
						<!-- 金の出入り(収入/支出) typeTheImcomeOrPay -->
						<td>
							<select name="typeOfTransactions">
								<option value="1">収入</option>  <!-- value="1" : income -->
								<option value="2">支出</option>  <!--value="2"  : pay -->
							</select>
						</td>
				
						<!-- 種類 -->
						<td>
							<select name="detailTypeOfTransactions"><!-- DB 追加必要 -->
								<!-- 種類1‐収入関連 -->
								<option value="101">勤労収入</option> 		<!-- earnedIncome -->
								<option value="102">金融収入</option>		<!-- financialIncome -->
								
								<!-- 種類2‐支出関連 -->
								<option value="501">固定支出</option> 		<!-- fixedExpense -->
								<option value="502">変動支出</option> 		<!-- variableExpense -->
							</select>
						</td>
	
						<!-- 分類 -->
						<td>
							<select name="nameOfTransaction"><!-- DB 追加必要 -->
								<!-- 種類1‐収入関連 -->
								<option vlaue="101-001">会社給料収入</option>	<!-- vlaue="incomeFromSalary" -->
								<option vlaue="102-001">預金利子収入</option>		<!-- vlaue="incomeFromInterests" -->
								<option vlaue="102-002">配当収入</option>			<!-- vlaue="incomeFromDividends" -->
								
								<!-- 種類2‐支出関連 -->
								<option vlaue="501-001">家賃</option>			<!-- vlaue="payToMonthlyRent" -->
								<option vlaue="501-002">購讀料</option>		<!-- vlaue="payToSubscription" -->
								<option vlaue="501-003">保険料</option>			<!-- vlaue="payToInsurance" -->
								<option vlaue="502-001">図書費</option>			<!-- vlaue="payToBookBudget" -->
								<option vlaue="502-002">食費</option>			<!-- vlaue="payToFoodExpenses" -->
							</select>
						</td>
						
						<!-- 通貨 -->
						<td>
							<select name="currencyType">
								<option value="KRW">KRW(₩)</option>
								<option value="USD">USD($)</option>
								<option value="JPY">JPY(¥)</option>
							</select>
						</td>
	
						<!-- 金額 -->
						<td>
							<input type="text" name="purchase" value=""> <!-- amountOfMoney -->
						</td>
	
						<!-- 口座情報 -->
						<td>
							<!-- <select id="userBankAccountList" name="userBankAccountIdx">  -->
							<select id="userBankAccountList" name="accountIdx"> 
								<c:forEach var="userBank" items="${userBankAccountList}">
									<option value="${userBank.accountIdx}" >
										<!-- <input type="hidden" name="accountNumber" value="${accountNumber}"> -->
										${userBank.bankName}
										_${userBank.bankBranchName}
										_${userBank.accountNumber}										
									</option>
								</c:forEach>
							</select>
						</td>
	
						<!-- コメント(説明) -->				
						<td>
							<input type="text" name="contents">
						</td>	
					</tr>
				</table>
				<button type="submit"> 
					insert to accountBook.
				</button>
				
				<section class='cal'>
  <div class='header'>
    <button class="nav-btn go-prev" onclick='prevMonth()'>&lt;</button>
    <div class="year-month"></div>
    <button class="nav-btn go-next" onclick='nextMonth()'>&gt;</button>
    <button class="nav-btn go-today" onclick='goToday()'>Today</button>
   </div>
   <div class='main'>
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
</section>
				
			</form>
		</div>
	</body>
</html>