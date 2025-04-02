# Personal Finance Web App (J2EE)

A responsive web application for managing personal finances, built using Java EE (J2EE), JSP, and Servlets. This project was developed to simplify the management of income, expenses, budgets, recurring transactions, and investments.

---

## Features

- ✅ Record income and expenses  
- ✅ Categorize transactions (e.g., groceries, entertainment)  
- ✅ Tag transactions for easy filtering  
- ✅ Set and manage monthly budgets  
- ✅ Automate recurring income/expenses  
- ✅ Track personal investments  
- ✅ Interactive pie chart visualizations  
- ✅ Embedded CSS with soft pink & white theme (`#FAE6E7`)  
- ✅ Fully functional navigation between JSP pages  
- ✅ Built with standard J2EE stack (JSP, Servlet, Java)

---

## Technologies Used

- Java (J2EE)
- JSP (JavaServer Pages)
- Servlet API
- Eclipse IDE
- Embedded CSS
- HTML5
- No external database — uses in-memory data for simplicity

---

## Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/your-username/PersonalFinanceApp.git
cd PersonalFinanceApp

2. Open in Eclipse
File > Import > Existing Projects into Workspace

Select the extracted folder

Make sure JDK is set up in Eclipse

3. Run on Server
Right-click project > Run As > Run on Server

Choose Apache Tomcat

Open http://localhost:8080/PersonalFinanceApp in your browser

📂 Project Structure

src/
├── main/
│   ├── java/
│   │   └── com/financeapp/
│   │       ├── Transaction.java
│   │       ├── Investment.java
│   │       ├── BudgetManager.java
│   │       ├── Servlets...
│   └── webapp/
│       ├── login.jsp
│       ├── register.jsp
│       ├── addTransaction.jsp
│       ├── viewTransactions.jsp
│       ├── setBudget.jsp
│       ├── addRecurring.jsp
│       ├── viewInvestments.jsp
│       └── dashboard.jsp

