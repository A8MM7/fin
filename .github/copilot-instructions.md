# GitHub Copilot Instructions for Fin Project

This project is a financial data analytics platform built with dbt (data build tool).

## Project Context

- This is a dbt project for data transformation and modeling
- The main code is located in `fin_dbt_project/`
- We follow dbt best practices for data modeling and transformation

## Guidelines

### Code Style
- Follow dbt best practices for SQL and YAML
- Use clear, descriptive names for models and columns
- Add appropriate documentation for models

### Database and Data Modeling
- Use SQL for data transformations
- Follow dimensional modeling principles where applicable
- Document all models with descriptions and column definitions

### Testing
- Write data quality tests for critical models
- Use dbt's built-in test types (unique, not_null, etc.)
- Add custom tests for business logic validation

### Documentation
- Keep README files up to date
- Document complex transformations and business logic
- Use comments in SQL for clarity when needed
