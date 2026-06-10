## Project Overview: Pro App Database Architecture & Analytics
**Role:** Database Designer & Data Analyst
**Core Technologies:** SQL, Relational Database Design, Entity-Relationship (ER) Modeling

This project involved designing, implementing, and analyzing a robust relational database for "Pro App," a complex sharing economy platform. The platform facilitates dynamic interactions between customers posting tasks, tradespeople bidding on labor/contracts, and suppliers selling materials.

---

## Phase 1: Database Architecture & Implementation
The foundational phase focused on structuring the data ecosystem to ensure efficiency, data integrity, and seamless user onboarding. 

* **ER Modeling:** Designed a comprehensive Entity-Relationship model using Chen's notation to map complex, multi-layered interactions. 
* **Schema Design:** Engineered 13 distinct SQL tables to categorize users (Customers, Trade People, Suppliers) and track platform activities (Tasks, Bidding, Memberships, Training Courses).
* **Data Integrity:** Implemented strict Primary Keys (PK) and Foreign Keys (FK) to prevent orphaned records and automate transaction tracking across the platform.
* **Data Simulation:** Populated the database with extensive dummy data to simulate real-world transactions, bidding wars, and user activities.

---

## Phase 2: Business Insights & Query Optimization
Using advanced SQL queries, the raw database was analyzed to extract actionable business intelligence regarding user behavior and platform profitability. 

* **Transaction Analytics:** Discovered that 45.24% of platform transactions were direct customer-to-supplier material purchases, outweighing labor-hiring transactions.
* **Purchasing Behavior:** Identified that while customers placed a higher volume of material orders (38 orders), tradespeople purchased materials in much larger bulk quantities per order.
* **Cross-Selling Gaps:** Query results revealed a 0% crossover rate between customers hiring labor and customers purchasing materials, highlighting a massive opportunity for bundled services.
* **Revenue Dependency:** Calculated that membership fees accounted for 84.6% of the platform's total revenue, with task-based commissions making up the remaining 15.4%.
* **Service Satisfaction:** Determined that material-purchasing tasks received the highest average customer rating (3.38/5), while labor-only tasks received the lowest (2.90/5).
* **Market Leaders:** Extracted the top 3 suppliers winning the most bids and the top 3 highest-earning tradespeople on the platform.

---

## Strategic Business Recommendations
Based on the SQL data analysis, three primary business strategies were formulated:
1.  **Incentivize Dual-Service Usage:** Introduce discounts or bundled packages to encourage customers to purchase materials alongside hiring labor.
2.  **Enhance Labor Satisfaction:** Implement stricter vetting processes and training programs for tradespeople to improve the low customer satisfaction scores tied to labor tasks.
3.  **Diversify Revenue Streams:** Increase task-related commissions or introduce premium add-on services to reduce the platform's heavy financial reliance on membership fees.

---

## Recommended Visual Assets for Your Portfolio Page
To make your portfolio page visually engaging, I highly recommend including screenshots or recreated graphics of the following elements found in your document:

**1. The Database Architecture (Image)**
* **Label:** Image 1: Pro App ER diagram.
* **Position in Source:** Located under Section 1.1.2 (Interactions) and right before Section 1.2.1.
* **Why use it:** It instantly proves your ability to conceptualize complex data structures and visually maps the entire project.

**2. Key Query Output Tables**
*Rather than showing all the raw dummy data tables from Phase 1, focus on the analytical outputs from Phase 2 to highlight your business acumen.*
* **Revenue Proportion Table:** Located in Section 2.2.4. Shows the stark contrast between Task Fee Revenue and Membership Revenue.
* **Proportion Between Different Task Types Table:** Located in Section 2.2.5. Demonstrates how user demand is split across the platform.
* **Top 5 Most Popular Materials Table:** Located in Section 2.2.6. Shows your ability to extract top-selling metrics (PVC Pipes, Copper Wiring, etc.).
* **Top 3 Tradespeople by Revenue Table:** Located in Section 2.2.10. Great for showing how you can identify high-value users on a platform.
