from dotenv import load_dotenv
import os
from openai import OpenAI

# Load .env
load_dotenv()

api_key = os.getenv("OPENAI_API_KEY")
base_url = os.getenv("OPENAI_BASE_URL")

print(f"API Key loaded: {api_key[:20]}..." if api_key else "❌ NO API KEY!")
print(f"Base URL: {base_url}" if base_url else "❌ NO BASE URL!")

if api_key and base_url:
    try:
        client = OpenAI(
            api_key=api_key,
            base_url=base_url
        )

        response = client.chat.completions.create(
            model="claude-sonnet-4-5-20250929",  # hoặc haiku
            messages=[
                {"role": "user", "content": "Good morning! Bạn là ai?"}
            ],
            max_tokens=50
        )

        print("✅ API hoạt động!")
        print("Response:", response.choices[0].message.content)

    except Exception as e:
        print(f"❌ Lỗi khi gọi API: {e}")
else:
    print("❌ Thiếu OPENAI_API_KEY hoặc OPENAI_BASE_URL")
