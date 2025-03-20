# English Mastery

English Mastery is a comprehensive self-learning application designed to help users improve their English communication skills. It includes general learning resources as well as IELTS-focused tasks to enhance language proficiency.

## Features
- **Grammar**: Learn and practice essential grammar rules.
- **Vocabulary**: Expand your vocabulary with curated word lists and exercises.
- **Reading**: Improve comprehension skills with reading materials and tasks.
- **Speaking**: Practice speaking through guided exercises.
- **Writing**: Enhance your writing abilities with structured prompts and feedback.
- **Listening**: Develop listening skills with targeted exercises.
- **Mock Conversations**: Engage in simulated conversations to improve fluency.
- **Gemini Integration**: Integrated as a bot assistant for seamless search functionality within the app.

## Tech Stack
### Frontend
- **Flutter**
  - State Management: Bloc, GetX
  - Architecture: Domain-Driven Design (DDD)

### Backend
- **FastAPI** (for API endpoints)
- **Machine Learning**
  - LangChain
  - LLM (Large Language Model)
  - RAG (Retrieval-Augmented Generation)
  - OpenAI
  - Groq
  - Eleven Labs

### Hosting
- **AWS EC2** for scalable deployment

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Alto-b/english_mastery_.git
   ```
2. Navigate to the project directory:
   ```bash
   cd english-mastery
   ```
3. Install dependencies for the Flutter app:
   ```bash
   flutter pub get
   ```
4. Install dependencies for the FastAPI backend:
   ```bash
   pip install -r requirements.txt
   ```
5. Start the FastAPI server:
   ```bash
   uvicorn main:app --reload
   ```
6. Run the Flutter app:
   ```bash
   flutter run
   ```

## Usage
- Navigate through the app's interactive interface to access various learning modules.
- Utilize the **Gemini Integration** for instant assistance by searching within the app.
- Engage in **mock conversations** to practice real-world speaking scenarios.

## Contribution
Contributions are welcome! Feel free to submit issues or pull requests to improve the project.



