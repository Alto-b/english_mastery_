# English Mastery

English Mastery is a comprehensive self-learning application designed to help users improve their English communication skills. It offers both general learning resources and IELTS-focused tasks to enhance language proficiency.

## Features
- **Grammar**: Master essential grammar rules with interactive lessons and quizzes.
- **Vocabulary**: Expand your vocabulary through curated word lists, flashcards, and exercises.
- **Reading**: Improve comprehension with reading tasks, guided exercises, and practice tests.
- **Speaking**: Enhance your speaking skills with practice prompts, pronunciation guides, and conversational exercises.
- **Writing**: Develop your writing proficiency through structured prompts and feedback.
- **Listening**: Strengthen listening skills with audio tasks, transcriptions, and comprehension tests.
- **Mock Conversations**: Practice real-life dialogue scenarios to build fluency and confidence.
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

## Dependencies
- Adaptive Theme (v3.6.0)
- AudioPlayers
- Avatar Glow (v3.0.1)
- Bloc (v8.1.4)
- Cupertino Icons (v1.0.8)
- Dio (v5.6.0)
- Easy Loading Button (v0.3.2)
- Equatable (v2.0.5)
- FFmpeg Kit Flutter (v6.0.3)
- Flutter Staggered Grid View (v0.7.0)
- Gap (v3.0.1)
- Get (v4.6.6)
- Google Fonts (v6.2.0)
- Http
- Http Parser (v4.0.2)
- Lottie (v3.1.2)
- Path Provider
- Random Avatar (v0.0.8)
- Record
- Rive (v0.13.20)
- Shared Preferences

## Installation
1. **Clone the repository:**
   ```bash
   git clone https://github.com/Alto-b/english_mastery_.git
   ```
2. **Navigate to the project directory:**
   ```bash
   cd english-mastery
   ```
3. **Install dependencies for the Flutter app:**
   ```bash
   flutter pub get
   ```
4. **Install dependencies for the FastAPI backend:**
   ```bash
   pip install -r requirements.txt
   ```
5. **Start the FastAPI server:**
   ```bash
   uvicorn main:app --reload
   ```
6. **Run the Flutter app:**
   ```bash
   flutter run
   ```

## Usage
- Navigate through the app's interactive interface to access various learning modules.
- Utilize the **Gemini Integration** for instant assistance and improved search capabilities.
- Engage in **mock conversations** for realistic practice in speaking scenarios.
- Explore IELTS-focused exercises to prepare effectively for the exam.

## Contribution
Contributions are welcome! Feel free to submit issues or pull requests to improve the project.


