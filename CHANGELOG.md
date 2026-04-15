# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Added `create-readme` skill for automated generation of professional project README files.
- Integrated repository agent guidelines in `AGENTS.md` for structured AI workflows.

### Changed

- Migrated internal agent skills and workflows from `.gemini/` legacy paths to standard structures.
- Updated repository structure documentation and tools mapping in `AGENTS.md`.
- Updated `tasks/todo.md` and `tasks/lessons.md`.

## [2.1.0] - 2026-04-13

### Added

- Added MCP Server Registry skill.
- Added MCP Reference Servers skill.
- Added MCP Documentation skill.
- Integrated official MCP resources into the project roadmap.

## [2.0.0] - 2026-04-12

### Added

- Rebranded the entire project to **BRAINIAC**.
- Implemented a modular lifecycle-based directory structure (0-15 phases).
- Added 80+ specialized `PLAYBOOK.md` files for end-to-end SaaS building.
- Integrated `BRAINIAC/GEMINI.md` as the core identity and guide for AI agents.
- Added `BRAINIAC/folder_blueprint.md` for workspace visualization.
- Added `FUNDING.yml` for GitHub Sponsors integration.
- Implemented comprehensive `SECURITY.md` with AI safety guidelines.
- Created `PULL_REQUEST_TEMPLATE.md` for structured contributions.
- Added project badges for License, PRs, and version tracking.

### Changed

- Refactored `README.md` with branding, banner, and detailed roadmap.
- Migrated from generic SaaS-blueprint to the high-performance BRAINIAC framework.

## [1.0.0] - 2026-04-09

### Added

- Initial release of the SaaS-blueprint framework.
- Basic folder structure for SaaS development.
- Core documentation including `LICENSE` and initial `README.md`.

# Skills Table

| Skill Name | Description | Last Update |
| :--- | :--- | :--- |
| **Semantic Versioning** | Manages project versioning following Semantic Versioning (SemVer) principles. | 2026-04-14 |
| **Playbook Writer** | Meta-skill that generates compliant PLAYBOOK.md files following the BRAINIAC template. | 2026-04-13 |
| **MCP Server Registry** | Discovery and usage of servers through the official Model Context Protocol (MCP) registry. | 2026-04-13 |
| **MCP Reference Servers** | Guidance on using and integrating official reference servers from MCP. | 2026-04-13 |
| **MCP Documentation** | Reference and learning guide for the Model Context Protocol (MCP) specification. | 2026-04-13 |
| **Market Research** | Deep web research skill using Firecrawl MCP. Scrapes competitors and estimates TAM/SAM/SOM. | 2026-04-13 |
| **Idea Validator** | Scorecard for ideas on problem severity, willingness-to-pay, and market timing. | 2026-04-13 |
| **Git Control** | Standardizes git operations, branch management, and disaster recovery. | 2026-04-13 |
| **create-readme** | Intelligent README.md generation prompt that analyzes project structure. | 2026-04-15 |
| **Conventional Commits** | Enforces Conventional Commits format for all git commit messages. | 2026-04-13 |
| **Competitor Analysis** | Structured competitor teardown skill. Scrapes sites and builds comparison matrices. | 2026-04-13 |
| **Changelog** | Generates and maintains changelogs following Keep a Changelog format. | 2026-04-15 |
