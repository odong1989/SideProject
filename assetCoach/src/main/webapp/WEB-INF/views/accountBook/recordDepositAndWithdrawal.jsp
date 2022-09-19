<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
	<body>
		recordDepositAndWithdrawal page.
		
		<table  border="1" style="margin:5%;" >
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
					通話
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
				
				<!-- 通話 -->
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
				
				<!-- 通話 -->
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
		

		<form name="loginForm" method="post" action="/main/accountBook/recordDepositAndWithdrawal">
			<table border="1" style="margin:5%;" >
				<tr>
					<td>
						日付
					</td>
					<td>
						金の出入り
					</td>
					<td>
						種類
					</td>
					<td>
						分類
					</td>
					<td>
						通話
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
					<!-- 日付 -->
					<td>
						<input type="date" name="a">
					</td>
					
					<!-- 金の出入り(収入/支出) -->
					<td>
						<select name="1">
							<option>収入</option>
							<option>支出</option>
						</select>
					</td>
			
					<!-- 種類 -->
					<td>
						<select name="2">
							<!-- 種類1‐収入関連 -->
							<option>金融収入</option>
							<option>勤労収入</option>
							
							<!-- 種類2‐支出関連 -->
							<option>固定支出</option>
							<option>変動支出</option>
						</select>
					</td>

					<!-- 分類 -->
					<td>
						<select name="3">
							<!-- 種類1‐収入関連 -->
							<option>金融収入</option>
							<option>勤労収入</option>
							
							<!-- 種類2‐支出関連 -->
							<option>固定支出</option>
							<option>変動支出</option>
						
						</select>
					</td>
					
					<!-- 通話 -->
					<td>
						<select name="4">
							<option>KRW(₩)</option>
							<option>USD($)</option>
							<option>JPY(¥)</option>
						</select>
					</td>

					<!-- 金額 -->
					<td>
						<input type="text" name="" id="">
					</td>

					<!-- 口座情報 -->
					<td>
						<select name="5">
							<option>[Korea] 나무증권 205-05-540966</option>
							<option>[Japan] 三菱UFJ銀行 060540</option>
						</select>
					</td>

					<!-- コメント(説明) -->				
					<td>
						<input type="text" name="" id="">
					</td>

				</tr>
			</table>
			<!-- <input type="submit" value="recordDepositAndWithdrawal"> -->
			<!-- <button type="button" id="loginButton">Login</button> -->	
		</form>
	</body>
</html>