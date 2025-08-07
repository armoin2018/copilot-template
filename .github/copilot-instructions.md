# Base6 Builder Coding & Style Guide

This guide defines coding standards and best practices for multi-language development projects. Language-specific instructions are organized in separate files for better maintainability and clarity.

⸻

## 📂 Project Architecture

✅ **Rule: Enforce API-first architecture**
- Backend provides API logic and returns JSON/data only
- Frontend consumes API data and renders UI
- Strict separation between data and presentation layers

✅ **Rule: Language-specific best practices**
- Follow language idioms and conventions
- Use appropriate frameworks and libraries for each language
- Maintain consistent patterns across similar codebases

✅ **Rule: Documentation & Project Management**
- Create comprehensive documentation under `wiki/` folder
- Maintain project tracking files under `notes/` folder
- Use version management with YYYY.MM.DD-<build#> format

⸻

## 🌐 Language-Specific Instructions

This project uses modular instruction files for different programming languages and technologies. Each file contains detailed coding standards, best practices, and AI linting hints specific to that language.

### **Core Languages**
- **[C Instructions](.github/instructions/c-instructions.md)** - C development standards and best practices
- **[C++ Instructions](.github/instructions/cpp-instructions.md)** - Modern C++ coding guidelines
- **[Go Instructions](.github/instructions/go-instructions.md)** - Go idioms and patterns
- **[Java Instructions](.github/instructions/java-instructions.md)** - Java enterprise development standards

### **Web Development**
- **[JavaScript Instructions](.github/instructions/javascript-instructions.md)** - Modern JavaScript/ES6+ standards
- **[TypeScript Instructions](.github/instructions/typescript-instructions.md)** - Type-safe TypeScript development
- **[WordPress Instructions](.github/instructions/wordpress-instructions.md)** - WordPress plugin/theme development

### **Data & Infrastructure**
- **[Database Instructions](.github/instructions/database-instructions.md)** - SQL and database design standards
- **[Python Instructions](.github/instructions/python-instructions.md)** - Python development best practices
- **[C# Instructions](.github/instructions/csharp-instructions.md)** - C# and .NET development standards

### **Shell & Automation**
- **[Shell Instructions](.github/instructions/sh-instructions.md)** - Shell scripting and automation standards

⸻

## 🚦 Universal AI Enforcement Rules

The following rules apply across all languages and are enforced by AI linting:

✅ **Code Quality**
- Enforce clean separation of concerns
- Require meaningful variable and function names
- Block code smells and anti-patterns
- Enforce appropriate error handling

✅ **Performance**
- Block string concatenation inside loops
- Require efficient data structure usage
- Enforce memory management best practices
- Optimize database queries and API calls

✅ **Security**
- Require input validation and sanitization
- Enforce secure coding practices
- Block known vulnerability patterns
- Require proper authentication and authorization

✅ **Maintainability**
- Prefer composition over complex inheritance
- Use design patterns appropriately
- Enforce consistent coding styles
- Require comprehensive documentation

✅ **Testing**
- Implement comprehensive test coverage
- Include unit, integration, and regression tests
- Use appropriate testing frameworks
- Test error scenarios and edge cases

⸻

## 📋 Project Workflow

### **Development Process**
1. **Setup**: Create language-specific `.github/instructions/` files
2. **Development**: Follow language-specific coding standards
3. **Review**: Use AI linting to enforce standards automatically
4. **Testing**: Implement comprehensive test coverage
5. **Documentation**: Maintain current documentation in `wiki/`

### **File Organization**
```
.github/
├── copilot-instructions.md          # This file - main instruction index
└── instructions/                    # Language-specific instruction files
    ├── c-instructions.md
    ├── cpp-instructions.md
    ├── csharp-instructions.md
    ├── database-instructions.md
    ├── go-instructions.md
    ├── java-instructions.md
    ├── javascript-instructions.md
    ├── main.instructions.md         # Universal rules
    ├── python-instructions.md
    ├── sh-instructions.md
    ├── typescript-instructions.md
    └── wordpress-instructions.md
```

### **Version Management**
- Use YYYY.MM.DD-<build#> format (e.g., 2025.08.06-001)
- Add incremental build number comments to code updates
- Maintain version consistency across project components

⸻

## 📚 Integration with Development Tools

### **AI Code Assistance**
- These instructions are optimized for GitHub Copilot, Cursor, and similar AI tools
- Language-specific files provide detailed context for better code suggestions
- Universal rules ensure consistency across different languages

### **Linting and Formatting**
- Configure language-specific linters to enforce these standards
- Use automated formatting tools (prettier, gofmt, rustfmt, etc.)
- Integrate with CI/CD pipelines for automatic enforcement

### **Documentation Generation**
- Generate API documentation from code comments
- Maintain wiki documentation with cross-references
- Update documentation with each version increment

⸻




