# Cyclistic_User-behavior-analysis
Google data analytics (Coursera) 課程 Case study，資料來自公開的虛擬資料集
## 使用技能
Spreadsheets, BigQuery (GCP), Looker studio
## 背景假設
Cyclistic是一家虛擬的自行車共享公司，其中使用者分成兩種：

  **一般使用者 (Casual riders)**：購買單日券或是多日劵的使用者
  **年費會員 (Annual members)**: 使用年費制度的會員

根據財務分析師，**年費會員**帶來較高的收益。

行銷部門也認為擴大年費會員人數是非常好的策略，且因 Cyclistic 在一般使用者之間已是一間知名公司，除了擴張品牌觸及率之外，反而傾向於**規劃讓一般使用者轉變為年費會員的行銷活動**。

在這之前，需要分析部門針對一般使用者和年費會員的使用差異進行分析，因此也是 Case study 的核心。

## 檔案說明

### 1. How do casual riders and annual members use Cyclistic bikes differently.pdf: 
呈現給行銷部門、上層主管或非分析部門的簡報內容，只保留了背景說明與分析結果。
### 2. (more details)-How do casual riders and annual members use Cyclistic bikes differently.pdf:
呈現給分析部門的文件，包含下載的資料格式、清理資料的邏輯、分析資料和視覺化的過程 (**Ask, Prepare, Process, Analyze, Visualization**)，也包含了所有結論和建議。

## 結論
1. 共享單車的使用旺季約在 6-8月，而淡季約在 12-2月。
2. 兩種類型的使用者的總騎乘次數都非常多 (一年之內高達770萬次)，而年費會員是一般會員的1.8倍之多。這顯示Cyclistic的使用度確實很高。
3. 一般使用者的騎乘時間雖然較長 (每次平均27.9分鐘) ，是年費會員的2.15倍，但其實年費會員貢獻的收益比較多 (根據財務分析師的說法)。
4. 與一般使用者相比，年度會員在每週使用方面，創造了更穩定的收益。
5. 根據使用的時機與時長，以及騎行的目的地來看，Cyclistic對一般使用者來說應該是觀光用途，而對年費使用者來說應該是一般通勤使用。

## 建議
1. 認同行銷部門的說法，擴大年費會員人數可以帶來更穩定的收益。
2. 如果要將一般使用者轉變為年費會員，可能可以在假日或觀光地點展開行銷活動觸及這些一般使用者，並鼓勵他們使用腳踏車做日常通勤。
3. 可以對兩種使用者進行問卷調查或訪談，內容包含:
   
   a. 年費會員和一般使用者的使用習慣 (用以證實前述結論)

   b. 年費會員是否曾經為一般使用者，以及在什麼狀況下決定變成年費會員?

   c. 一般會員常接觸的媒體和使用習慣，用以發送行銷廣告
