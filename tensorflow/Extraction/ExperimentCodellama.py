import requests
import json

def send_class_to_ollama(cls, model="codellama"):
    """
    Sends the given class definition string `cls` to the Ollama local API
    and returns the streamed response as a single string.
    """
    url = "http://localhost:11434/api/chat"

    instruction = (
        "Please regenerate this code so that the new code does not include "
        "any external dependencies and replicates the functionality of the "
        "original code as much as possible.\n\n"
    )

    full_prompt = instruction + cls

    payload = {
        "model": model,
        "messages": [
            {
                "role": "user",
                "content": full_prompt
            }
        ]
    }

    response = requests.post(url, json=payload, stream=True)

    if response.status_code != 200:
        raise RuntimeError(f"Ollama API error {response.status_code}: {response.text}")

    final_output = []

    for line in response.iter_lines(decode_unicode=True):
        if not line:
            continue

        try:
            json_data = json.loads(line)
        except json.JSONDecodeError:
            continue

        if "message" in json_data and "content" in json_data["message"]:
            final_output.append(json_data["message"]["content"])

    return "".join(final_output)
