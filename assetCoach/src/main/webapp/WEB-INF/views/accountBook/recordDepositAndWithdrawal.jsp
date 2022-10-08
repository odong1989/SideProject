<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
	<body>
		recordDepositAndWithdrawal page.
		
		<div style="margin:5%;" >
			List of accounts.
			<table border="1">
				<tr>
					<td>
						日付
					</td>
					<td>
						金の出入り(収入/支出)
					</td>
					<td>
						種類
					</td>
					<td>
						分類
					</td>
					<td>
						通貨
					</td>
					<td>
						金額
					</td>
					<td>
						口座情報
					</td>
					<td>
						コメント(説明)
					</td>
				</tr>
	
				<tr>
					<!-- 日付 -->
					<td>
						2022年8月1日
					</td>
					<!-- 金の出入り(収入/支出) -->
					<td>
						支出
					</td>
					<!-- 種類 -->
					<td>
						固定支出
					</td>
					
					<!-- 分類 -->
					<td>
						家賃
					</td>
					
					<!-- 通貨 -->
					<td>
						JPY(¥)
					</td>
	
					<!-- 金額 -->
					<td>
						45,000
					</td>
	
					<!-- 口座情報 -->
					<td>
						現金
					</td>
	
					<!-- コメント(説明) -->				
					<td>
						毎月家賃を払う。
					</td>
				</tr>
	
				<tr>
					<!-- 日付 -->
					<td>
						2022年8月2日
					</td>
					<!-- 金の出入り(収入/支出) -->
					<td>
						収入
					</td>
					<!-- 種類 -->
					<td>
						金融収入
					</td>
					
					<!-- 分類 -->
					<td>
						配当金
					</td>
					
					<!-- 通貨 -->
					<td>
						USD($)
					</td>
	
					<!-- 金額 -->
					<td>
						0.59
					</td>
	
					<!-- 口座情報 -->
					<td>
						나무증권 205-05-540966
					</td>
	
					<!-- コメント(説明) -->				
					<td>
						米国の企業「アップル(AAPL)」の配当金。
					</td>
				</tr>
			</table>
		</div>		

		<div style="margin:5%;" >
			insert of accounts.
			<form name="manageAccountBook" method="post" action="/accountBook/manageTheRecordOfTransactions">
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
						<!-- 日付 -->
						<td>
							<input type="date" name="dateOfTraiding">
						</td>
						
						<!-- 金の出入り(収入/支出) -->
						<td>
							<select name="typeTheImcomeOrPay">
								<option value="1">収入</option>  <!-- value="1" recieve -->
								<option value="2">支出</option>  <!--value="2" pay -->
							</select>
						</td>
				
						<!-- 種類 -->
						<td>
							<select name="typeDetailsOfImcomeOrPay"><!-- DB 追加必要 -->
								<!-- 種類1‐収入関連 -->
								<option value="1">勤労収入</option> <!-- value="1" earnedIncome -->
								<option value="2">金融収入</option> <!-- value="2" financialIncome -->
								
								<!-- 種類2‐支出関連 -->
								<option value="1">固定支出</option> <!-- value="1" fixedExpense -->
								<option value="2">変動支出</option> <!-- value="2" variableExpense -->
							</select>
						</td>
	
						<!-- 分類 -->
						<td>
							<select name="3"><!-- DB 追加必要 -->
								<!-- 種類1‐収入関連 -->
								<option vlaue="incomeFromSalary">会社給料収入</option>
								<option vlaue="incomeFromInterests">預金利子収入</option>
								<option vlaue="incomeFromDividends">配当収入</option>
								
								<!-- 種類2‐支出関連 -->
								<option vlaue="payToMonthlyRent">家賃</option>
								<option vlaue="payToSubscription">購讀料</option>
								<option vlaue="payToInsurance">保険料</option>
								<option vlaue="payToBookBudget">図書費</option>
								<option vlaue="payToFoodExpenses">食費</option>
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
							<select name="accountIdx">
								<option value="1">[Korea] 나무증권 205-05-540966</option>
								<option value="2">[Japan] 三菱UFJ銀行 060540</option>
							</select>
						</td>
	
						<!-- コメント(説明) -->				
						<td>
							<input type="text" name="contents">
						</td>	
					</tr>
				</table>
				<button type="submit" value="recordDepositAndWithdrawal"> insert</button>
			</form>
		</div>
	</body>
</html>