# Define a function that takes in the number of employees
createWorkers <- function(numWorkers) {
  workers <- list() # Empty list to hold employee data
  
  # loop through the number of employees to populate list
  for (x in 1:numWorkers){
    # create dynamic ID's
    workerID <- sprintf("employee_%04d", x) 
    
    # create random salaries
    workerSalary <- sample(5000:40000, 1)
    
    # randomly create gender
    workerGender <- sample(c('Male', 'Female', 'Other'), 1)
    
    # try to choose employee level
    
    employeeLevel <- tryCatch({
      if(workerSalary > 10000 && workerSalary < 20000){
        "A1"
      } else if (workerSalary > 7500 && workerSalary < 30000 && workerGender == 'Female'){
        "A5-F"
      } else {
        "Unspecified"
      }
    }, error = function(e) {
      "Unknown"   #handle exception
    }
    )
    
    # Creating list for each employee
    worker <- list(id = workerID, salary = workerSalary, gender = workerGender, level = employeeLevel)
    
    # adding workers to the workers list 
    workers[[x]] <- worker
    
  }
  
  return(workers)
  
}

# Define variable for number of employees
numEmployees <- 500

# call function on number of employees
employeeList <- createWorkers(numEmployees)

# create table for better presentation of data
df <- do.call(rbind, lapply(employeeList, as.data.frame))
print(df)