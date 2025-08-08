# Setup and Installation Guide

This guide covers setting up the Copilot Template system for use with GitHub Copilot and various development environments.

## Prerequisites

### Required Software
- **Git**: Version control system (latest stable version)
- **GitHub CLI**: For GitHub integration and Copilot commands
- **Text Editor/IDE**: VS Code (recommended), cursor, or compatible GitHub Copilot editor
- **GitHub Copilot**: Active subscription and extension installed

### Supported Development Environments
- **VS Code**: Primary supported editor with full integration
- **JetBrains IDEs**: IntelliJ, PyCharm, WebStorm, etc.
- **Neovim**: With GitHub Copilot plugin
- **Cursor**: AI-enhanced code editor
- **Other editors**: With GitHub Copilot support

## Installation

### 1. Clone the Template Repository

```bash
# Clone the copilot-template repository
git clone https://github.com/your-org/copilot-template.git
cd copilot-template

# Or use GitHub CLI
gh repo clone your-org/copilot-template
cd copilot-template
```

### 2. Set Up GitHub Copilot

```bash
# Authenticate with GitHub (if not already done)
gh auth login

# Check Copilot status
gh copilot --help

# Verify Copilot is working
gh copilot suggest "create a hello world function"
```

### 3. Configure Your Development Environment

#### VS Code Setup
1. Install GitHub Copilot extension
2. Copy `.github/copilot-instructions.md` to your project root
3. Configure workspace settings:

```json
{
  "github.copilot.enable": {
    "*": true,
    "yaml": true,
    "plaintext": true,
    "markdown": true
  },
  "github.copilot.inlineSuggest.enable": true
}
```

#### Project Structure Setup
```bash
# Copy template files to your project
cp -r .github/ /path/to/your/project/
cp REQUIREMENTS.md /path/to/your/project/
cp PLAN.md /path/to/your/project/
cp CHANGELOG.md /path/to/your/project/
cp WHITELIST.md /path/to/your/project/
cp BLACKLIST.md /path/to/your/project/

# Create wiki directory
mkdir -p /path/to/your/project/wiki
cp -r wiki/* /path/to/your/project/wiki/
```

## Configuration

### 1. Customize Project Requirements

Edit `REQUIREMENTS.md` to reflect your project's specific needs:

```markdown
# Project Requirements

## Your Project Specific Requirements
- Add your domain-specific requirements
- Modify language support as needed
- Update integration requirements

## Keep Universal Requirements
- Maintain coding standards framework
- Keep AI integration requirements
- Preserve project management workflow
```

### 2. Set Up Execution Plan

Customize `PLAN.md` for your project timeline:

```markdown
# Project Execution Plan

## Current Phase: [Your Project Phase]

### Active Tasks
1. **[Your Priority Task 1]** - *IN PROGRESS*
2. **[Your Priority Task 2]** - *PENDING*
```

### 3. Initialize Change Tracking

Update `CHANGELOG.md` with your project information:

```markdown
# Project Changelog

## Version 2025.08.07-00001 (August 7, 2025)

### Added
- Initial setup of Copilot Template system
- Project-specific requirements and planning
- [Your specific additions]
```

### 4. Configure Dependencies

#### Update WHITELIST.md
Add your project-specific approved dependencies:

```markdown
## Project-Specific Approved Dependencies

### [Your Technology Stack]
- **Framework**: [Your chosen framework]
- **Database**: [Your database choice]
- **Testing**: [Your testing tools]
```

#### Update BLACKLIST.md
Add any project-specific prohibitions:

```markdown
## Project-Specific Prohibitions

### [Your Technology Constraints]
- **[Specific Library]**: [Reason for prohibition]
- **[Practice]**: [Security/performance concern]
```

## Language-Specific Setup

### For Each Language in Your Project

1. **Review Language Instructions**: Check `.github/instructions/[language]-instructions.md`
2. **Configure Linting**: Set up language-specific linters per instructions
3. **Install Dependencies**: Use approved dependencies from WHITELIST.md
4. **Set Up Testing**: Configure testing frameworks per language guidelines

#### Example: JavaScript/TypeScript Project
```bash
# Install approved dependencies
npm install --save lodash axios moment

# Install development dependencies
npm install --save-dev jest eslint prettier @types/node

# Configure linting
cp .github/instructions/javascript-instructions.md .eslintrc.js
```

#### Example: Python Project
```bash
# Set up virtual environment
python -m venv venv
source venv/bin/activate

# Install approved dependencies
pip install requests click fastapi pytest black mypy

# Configure linting
cp .github/instructions/python-instructions.md pyproject.toml
```

## AI Persona Configuration

### 1. Select Appropriate Personas

Choose personas from `.github/personas/` that match your development needs:

```bash
# Copy relevant personas to your project
cp .github/personas/senior-fullstack-developer.md /path/to/your/project/.github/personas/
cp .github/personas/devops-engineer.md /path/to/your/project/.github/personas/
```

### 2. Customize Persona Instructions

Edit persona files to include project-specific context:

```markdown
# Senior Full-Stack Developer

## Project Context
- **Domain**: [Your project domain]
- **Tech Stack**: [Your specific technologies]
- **Standards**: Follow copilot-instructions.md guidelines
```

## Verification

### 1. Test GitHub Copilot Integration

```bash
# Test Copilot suggestions
gh copilot suggest "create a function following our coding standards"

# Verify instruction file recognition
# Create a simple file and check if Copilot follows your standards
```

### 2. Validate Project Structure

```bash
# Check all required files exist
ls -la REQUIREMENTS.md PLAN.md CHANGELOG.md WHITELIST.md BLACKLIST.md
ls -la .github/copilot-instructions.md
ls -la .github/instructions/
ls -la .github/personas/
ls -la wiki/
```

### 3. Test Workflow

1. **Make a small change** to test version tracking
2. **Update CHANGELOG.md** with new version number
3. **Update PLAN.md** to mark tasks complete
4. **Verify GitHub Copilot** recognizes new standards

## Troubleshooting

### Common Issues

#### GitHub Copilot Not Recognizing Instructions
1. Check file path is correct: `.github/copilot-instructions.md`
2. Verify GitHub Copilot extension is enabled
3. Restart your editor
4. Check Copilot status: `gh copilot status`

#### Language Instructions Not Working
1. Verify file exists in `.github/instructions/[language]-instructions.md`
2. Check `applyTo` pattern matches your file extensions
3. Restart GitHub Copilot service

#### Persona Context Missing
1. Verify persona files are in `.github/personas/`
2. Check persona file format follows template
3. Ensure persona selection is appropriate for context

### Getting Help

1. **Documentation**: Check wiki files for detailed guidance
2. **GitHub Issues**: Report problems or request features
3. **Community**: Join discussions in GitHub Discussions
4. **Support**: Contact maintainers for enterprise support

---

*Last Updated: 2025.08.07-00001*
*Next Review: 2025.08.14*
