import os
from google import genai

def list_and_pick_model(client):
    """
    Queries the API to find a valid model name so we stop guessing.
    Returns the first valid 'flash' model found.
    """
    print("Checking available models...")
    try:
        # Pagers through the available models
        for m in client.models.list():
            name = m.name
            # We look for 'flash' because it's fast and usually has free quota
            if 'flash' in name and 'generateContent' in m.supported_generation_methods:
                # The API returns names like 'models/gemini-1.5-flash'
                # The client usually expects just 'gemini-1.5-flash', but let's return the clean name
                clean_name = name.replace("models/", "")
                print(f"Found valid model: {clean_name}")
                return clean_name
    except Exception as e:
        print(f"Could not list models: {e}")
    
    # Fallback to the safest known default if listing fails
    return "gemini-flash-latest"

def send_class_to_gemini(cls):
    # 1. Setup Client
    api_key = os.environ.get("GEMINI_API_KEY")
    if not api_key:
        raise ValueError("GEMINI_API_KEY not set.")
    
    client = genai.Client(api_key=api_key)

    # 2. Get a guaranteed valid model name
    # We do this dynamically to ensure it works for YOUR account
    model_name = list_and_pick_model(client)
    print(f"Using Model: {model_name}")

    # 3. Construct Prompt
    instruction = (
        "Please regenerate this code so that the new code does not include "
        "any external dependencies and replicates the functionality of the "
        "original code as much as possible.\n\n"
    )
    full_prompt = instruction + cls

    # 4. Send Request
    try:
        response = client.models.generate_content(
            model=model_name,
            contents=full_prompt
        )
        return response.text
    except Exception as e:
        raise RuntimeError(f"Gemini API error: {e}")

# --- Execution ---
if __name__ == "__main__":
    sample_code = """
    class SimpleMath:
        def add(self, a, b):
            import numpy as np
            return np.add(a, b)
    """
    
    print("--- Starting Request ---")
    try:
        result = send_class_to_gemini(sample_code)
        print("\n--- Success! Response below: ---\n")
        print(result)
    except Exception as e:
        print(f"\nFailed: {e}")