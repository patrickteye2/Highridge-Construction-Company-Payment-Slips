# Highridge Construction Company Payment Slips

This Python script generates a list of employees with randomly assigned salaries, genders, and levels based on specific conditions. It is designed to simulate the creation of employee records for the Highridge Construction Company.

## Features

- Generates employee records with the following attributes:
  - **ID**: A unique identifier for each employee (e.g., `employee_0001`).
  - **Salary**: A random salary between 5000 and 40000.
  - **Gender**: Randomly chosen from `Male`, `Female`, or `Other`.
  - **Level**: Assigned based on salary and gender conditions:
    - `A1` for salaries between 10000 and 20000.
    - `A5-F` for salaries between 7500 and 30000 if the employee is female.
    - `Unspecified` for all other cases.
  - **Error Handling**: Defaults to `Unknown` level in case of exceptions.

## How to Use

1. Clone or download the script to your local machine.
2. Open the script in your Python environment 
3. Modify the `num_workers` variable to set the number of employees to generate.
4. Run the script to generate the employee records.

## Example Output

The script generates a list of dictionaries, each representing an employee. Example:

```python
[
    {'id': 'employee_0001', 'salary': 15000, 'gender': 'Male', 'level': 'A1'},
    {'id': 'employee_0002', 'salary': 18000, 'gender': 'Female', 'level': 'A5-F'},
    {'id': 'employee_0003', 'salary': 25000, 'gender': 'Other', 'level': 'Unspecified'}
]