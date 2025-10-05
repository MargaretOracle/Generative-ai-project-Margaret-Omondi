import from byllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);
def suggest_test(symptom: str) -> str by llm(method="Reasoning");
def analyze_feedback(feedback: str) -> str by llm(method = "Reasoning");
def prescribe_drug(diagnosis: str) -> str by llm(method="Reasoning");

with entry {

    print(" Welcome to Medical Diagnosis Assistant!");
    print("Describe your symptoms:");
    symptom = input();

    test = suggest_test(symptom);
    print(f"Suggested Diagnostic Test: {test}");

    print("Enter your diagnosis based on the test results:");
    diagnosis = input();

    drug = prescribe_drug(diagnosis);
    print(f"Prescribed Drug: {drug}");

    print("After taking the medication, how do you feel?");
    feedback = input();

    advice = analyze_feedback(feedback);
    print(f"AI Feedback: {advice}");
}