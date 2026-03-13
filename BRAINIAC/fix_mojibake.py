import os

root_dir = r"c:\Users\Túlio\Documents\GitHub\SaaS-blueprint\BRAINIAC"

replacements = {
    "ðŸ§\xa0": "🧠",
    "ðŸŽ¯": "🎯",
    "ðŸš€": "🚀",
    "ðŸ›\xa0": "🛠️",
    "ðŸ¤–": "🤖",
    "ðŸ“ˆ": "📈",
    "ðŸ§": "🧠",
    "ðŸŽ": "🎯",
    "ðŸš": "🚀",
    "ðŸ›": "🛠️",
    "ðŸ¤": "🤖",
    "ðŸ“": "📈"
}

for root, dirs, files in os.walk(root_dir):
    for file in files:
        if file == "PLAYBOOK.md":
            path = os.path.join(root, file)
            print(f"Processing {path}")
            try:
                with open(path, "r", encoding="utf-8") as f:
                    content = f.read()
                
                new_content = content
                for old, new in replacements.items():
                    new_content = new_content.replace(old, new)
                
                if new_content != content:
                    with open(path, "w", encoding="utf-8") as f:
                        f.write(new_content)
                    print(f"Fixed {path}")
            except Exception as e:
                print(f"Error processing {path}: {e}")
