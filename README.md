Welcome to your new dbt project!

### How to run this project 
### About the project
This project is based in [dbt starter project](https://github.com/dbt-labs/dbt-starter-project) (generated by running `dbt init`)
Try running the following commands:
- dbt run
- dbt test

A project includes the following files: 
- dbt_project.yml: file used to configure the dbt project. If you are using dbt locally, make sure the profile here matches the one setup during installation in ~/.dbt/profiles.yml
- *.yml files under folders models, data, macros: documentation files
- csv files in the data folder: these will be our sources, files described above
- Files inside folder models: The sql files contain the scripts to run our models, this will cover staging, core and a datamarts models. At the end, these models will follow this structure: 

<img width="1063" alt="Screenshot 2023-02-25 at 8 50 21 PM" src="https://user-images.githubusercontent.com/34676681/221366752-a84c65c7-d98b-4d3f-8f70-32588de2fbcd.png">



#### Workflow
<img width="1307" alt="Screenshot 2023-02-25 at 9 42 35 PM" src="https://user-images.githubusercontent.com/34676681/221367477-b2a358e9-c7f2-432e-a706-b35e0106b7a4.png">


#### Execution
After having installed the required tools and cloning this repo, execute the following commnads: 

1. Change into the project's directory from the command line: `$ cd [..]/taxi_rides_ny`
2. Load the CSVs into the database. This materializes the CSVs as tables in your target schema: `$ dbt seed`
3. Run the models: `$ dbt run`
4. Test your data: `$ dbt test`
_Alternative: use `$ dbt build` to execute with one command the 3 steps above together_
5. Generate documentation for the project: `$ dbt docs generate`
6. View the documentation for the project, this step should open the documentation page on a webserver, but it can also be accessed from  http://localhost:8080 : `$ dbt docs serve`

### dbt resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
