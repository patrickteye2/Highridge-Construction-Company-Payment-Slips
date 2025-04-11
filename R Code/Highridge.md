
## 📄 README.md

###  Project: Employee Payslip Generator in R

This project defines a function in **R** to generate synthetic employee data. Each employee is assigned a unique ID, a random salary, a randomly selected gender, and a level classification based on salary and gender criteria. The output is useful for simulations, testing, mock HR datasets, or learning data handling in R.

---

###  Features

-  Generates unique employee IDs (e.g., `employee_0001`)
-  Assigns random salaries between **5000** and **40000**
-  Randomly assigns gender: **Male**, **Female**, or **Other**
- 🏷️ Categorizes employees into levels:
  - **A1**: Salary between 10,000 and 20,000
  - **A5-F**: Female with salary between 7,500 and 30,000
  - **Unspecified**: All others
  - **Unknown**: If any error occurs during classification

---

### How to Use

1. **Run the R Script**  
   Copy the full function `createWorkers()` into your R environment or script.

2. **Call the Function**
   ```r
   employeeList <- createWorkers(500)  # Generate 500 employees
   ```

3. **Convert to Data Frame for easy readability**
   ```r
   df <- do.call(rbind, lapply(employeeList, as.data.frame))
   print(head(df))
   ```

---

### Function Reference

```r
createWorkers(numWorkers)
```

- **Parameters:**
  - `numWorkers`: Integer – number of employee records to generate
- **Returns:**
  - A list of employee records, each containing:
    - `id` – unique identifier
    - `salary` – integer salary value
    - `gender` – string value ("Male", "Female", "Other")
    - `level` – employee classification string

---

### 📊 Example Output (Data Frame)

| id          | salary | gender | level       |
|-------------|--------|--------|-------------|
| employee_0001 | 17456 | Female | A1          |
| employee_0002 | 28600 | Female | A5-F        |
| employee_0003 | 42300 | Male   | Unspecified |

---

### 💡 Notes

- Uses `tryCatch()` to avoid runtime errors and ensure clean execution.
- Set `set.seed()` for reproducible random results if needed.

---
