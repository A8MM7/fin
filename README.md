# Fin - Financial Data Analytics Platform

This is a financial data analytics platform built with dbt (data build tool).

## Project Structure

- `fin_dbt_project/` - Main dbt project containing data models and transformations
- `ingestion scripts/` - Scripts for data ingestion
- `.github/` - GitHub Copilot configuration and custom agents

## GitHub Copilot Integration

This repository is configured with GitHub Copilot custom instructions and agents to enhance your development experience.

### Using GitHub Copilot Chat Agents

After cloning this repository, you can use specialized AI agents in VS Code:

1. Open the project in VS Code
2. Ensure you have GitHub Copilot and GitHub Copilot Chat extensions installed and updated
3. Open Copilot Chat (`Ctrl+Shift+I` or `Cmd+Shift+I`)
4. Type `@` to see available agents
5. Use `@dbt-expert` for help with dbt-specific questions

**Example queries:**
- `@dbt-expert How do I create a staging model?`
- `@dbt-expert What tests should I add to this model?`
- `@dbt-expert Help me optimize this SQL query`

For more details, see [.github/README.md](.github/README.md).

### Troubleshooting Agent Visibility

If you don't see the agent option in Copilot Chat:

1. **Update Extensions**: Make sure GitHub Copilot and GitHub Copilot Chat are up to date
2. **Update VS Code**: Ensure you're running the latest version of VS Code
3. **Reload Window**: Try reloading VS Code (`Ctrl+Shift+P` → "Reload Window")
4. **Check Subscription**: Verify you have an active GitHub Copilot subscription
5. **Organization Settings**: For business accounts, ask your admin to enable "Editor preview features"

## Getting Started with dbt

```bash
cd fin_dbt_project
dbt run
dbt test
```

For more information about dbt, see the [dbt documentation](https://docs.getdbt.com/).

## Contributing

When contributing to this project, GitHub Copilot will automatically use the custom instructions defined in `.github/copilot-instructions.md` to provide context-aware suggestions.
