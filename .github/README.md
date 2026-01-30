# GitHub Copilot Configuration

This directory contains configuration files for GitHub Copilot to enhance your development experience with this project.

## Files Overview

### `copilot-instructions.md`
Repository-wide instructions that guide GitHub Copilot's behavior across all code suggestions and chat interactions. This file contains:
- Project context and structure
- Coding standards and best practices
- Database and data modeling guidelines
- Testing and documentation requirements

### `agents/dbt-expert.agent.md`
A custom Copilot Chat agent specialized for dbt (data build tool) projects. This agent can:
- Assist with dbt model creation and optimization
- Help with SQL transformations
- Provide guidance on data modeling
- Suggest appropriate tests
- Debug dbt-related issues

## How to Use

### Custom Instructions
The instructions in `copilot-instructions.md` are automatically applied when you use GitHub Copilot in this repository. No additional setup is required.

### Custom Agents
To use the dbt Expert agent in VS Code:

1. Make sure you have the latest versions of:
   - Visual Studio Code
   - GitHub Copilot extension
   - GitHub Copilot Chat extension

2. Open Copilot Chat in VS Code (`Ctrl+Shift+I` or `Cmd+Shift+I`)

3. Type `@` in the chat input to see available agents

4. Select `@dbt-expert` to interact with the specialized dbt agent

5. Ask questions or request assistance related to dbt and data modeling

### Example Usage

```
@dbt-expert How do I create a new staging model for customer data?
@dbt-expert What tests should I add to my fact table?
@dbt-expert Help me optimize this SQL transformation
```

## Troubleshooting

If you don't see the agent option in Copilot Chat:

1. **Update Extensions**: Ensure GitHub Copilot and GitHub Copilot Chat extensions are up to date
2. **Update VS Code**: Make sure you're running the latest version of VS Code
3. **Reload Window**: Try reloading the VS Code window (`Ctrl+Shift+P` → "Reload Window")
4. **Check Subscription**: Verify you have an active GitHub Copilot subscription
5. **Organization Settings**: If using a business/enterprise account, ask your admin to enable "Editor preview features"

## Customization

You can customize these configuration files to better suit your team's needs:

- Edit `copilot-instructions.md` to add or modify project-specific guidelines
- Create additional agents in the `agents/` directory for other specialized tasks
- Add path-specific instructions in an `instructions/` directory if needed

For more information, see the [GitHub Copilot documentation](https://docs.github.com/en/copilot).
