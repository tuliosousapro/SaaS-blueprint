# Automations, Skills, and Tools: Validation Phase

Automate momentum generation and user feedback collection.

## 1. Waitlist Email Automation
- **Tool**: Resend / Loops.so integration scripts
- **Use Case**: Set up an automated welcome sequence upon waitlist signup that asks 1 essential qualifying question.
- **Skill Implementation**: A script to initialize the email API, create the foundational `welcome` template, and connect it to the landing page form submission.

## 2. User Interview Summarization
- **Tool**: AI Transcription & Summarization (e.g., Whisper + LLM)
- **Use Case**: Convert raw customer interview calls into structured feedback, categorizing feature requests vs. objections.
- **Skill Implementation**: A backend node script or MCP agent prompt that processes transcripts into a predefined `Interview_Summary.md` format.
