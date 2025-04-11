#import random module
import random
# define a function that takes a number representing the number of employees
def create_workers(num_workers):
    workers = []
    # loop through the number of employees and create a dictionary for each
    for x in range(num_workers):
        worker_id = f"employee_{x+1:04d}"
        worker_salary = random.randint(5000,40000)
        worker_gender = random.choice(['Male','Female','Other'])
        # try to create condition for choosing employee level
        try:
            if 10000 < worker_salary < 20000:
                employee_level = "A1"
            elif 7500 < worker_salary < 30000 and worker_gender == 'Female':
                employee_level = "A5-F"  
            else:
                employee_level = "Unspecified"
        # handle exceptions 
        except Exception:
            employee_level = "Unknown"
        # create a dictionary for each employee
        worker = {"id": worker_id, "salary": worker_salary, "gender": worker_gender, 'level': employee_level}
        # add worker to employee list
        workers.append(worker)
    return workers

# define a variable to hold the number of employees
num_workers = 500

# call the function to create the employees
create_workers(num_workers)